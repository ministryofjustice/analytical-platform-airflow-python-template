# 8. Adopt uv for package management in CI/CD

Date: 2026-02-16

## Status

Proposed

## Context

The current GitHub Actions workflows use pip with manually managed virtual environments and `actions/cache` to cache the venv. While this approach works, it has several limitations:

- **Dependency installation time**: pip downloads and installs packages sequentially, which can be time-consuming in CI/CD environments
- **Manual caching setup**: Requires explicit configuration of cache paths and keys
- **Boilerplate code**: Multiple steps needed to set up virtual environment, upgrade pip, and install dependencies

Modern Python package managers like `uv` offer significant improvements in speed and developer experience. Several teams within MoJ Data & Analysis have successfully adopted uv and recommend its use (raised by @Nathan-Williams-1, @tpoconnor-14, and @wmartin-gss).

## Decision

We will adopt **uv** as the package management and execution layer within GitHub Actions workflows (starting with the Pytest workflow).

**Key benefits:**

- **Significantly faster**: uv provides 10-100x faster dependency installation compared to pip
- **Built-in caching**: Automatic, efficient caching without manual setup via `enable-cache: true`
- **Flexible compatibility**: Works with both modern `pyproject.toml` and legacy `requirements.txt`/`requirements-dev.txt` files
- **Streamlined setup**: Simple integration via `astral-sh/setup-uv@v5` action

**Implementation approach:**

```yaml
- name: Install uv
  uses: astral-sh/setup-uv@v5
  with:
    enable-cache: true

- name: Install dependencies
  run: |
    uv pip install --system -r requirements.txt
    uv pip install --system -r requirements-dev.txt

- name: Run unit tests
  run: uv run pytest tests/unit/ --verbose
```

**Compatibility notes:**

- For projects using `pyproject.toml`: Can use `uv sync --all-extras --dev` for even simpler dependency management
- For projects using `requirements.txt`: Use `uv pip install --system -r requirements.txt` in CI (the `--system` flag installs into the runner's Python environment without requiring a virtual environment)
- Local development: Developers can use `uv run` to execute commands, ensuring consistency between local and CI environments

**Why not adopt uv everywhere?**

The Analytical Platform VSCode and RStudio instances support venv and pip as standard tooling. Most data scientists are already familiar with this workflow. We want to keep local development environments as close as possible to the AP standard while benefiting from uv's speed improvements in CI/CD where setup time directly impacts iteration speed.

**Alternatives considered:**

- **Continue with pip + manual caching**: Rejected due to slower performance and more boilerplate
- **Adopt Poetry or Pipenv**: More opinionated tools that require migration from requirements.txt; uv provides speed benefits without forcing workflow changes
- **Use uv everywhere (local + CI)**: While teams can adopt uv locally if desired, we keep the template flexible to support standard pip workflows that align with AP tooling

## Consequences

**Positive:**

- Faster CI/CD pipelines, especially for test-heavy repositories
- Simpler workflow configuration (less boilerplate)
- Future-proofing for when projects grow larger and have more dependencies
- Built-in caching without manual configuration
- Compatible with existing requirements files (no migration required)
- Teams can optionally adopt uv locally for the same speed benefits

**Negative:**

- Introduces a new tool that some contributors may not be familiar with
- Developers must use `uv run pytest` instead of `pytest` when using uv locally
- Slight divergence between local (pip) and CI (uv) environments, though both respect the same requirements files

**Neutral:**

- Local development can still use pip/venv (standard AP tooling)
- Projects can migrate to `pyproject.toml` + `uv sync` in the future if desired
- Requires `pytest` and `pytest-cov` to be added to `requirements-dev.txt`

## Notes

This decision was driven by community feedback from multiple MoJ data science teams who have successfully used uv in production. The implementation maintains backward compatibility while providing immediate performance improvements in CI/CD workflows.

For local testing with uv (optional):

```bash
# Install uv (first time only)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create a virtual environment
uv venv

# Activate it
source .venv/bin/activate  # On macOS/Linux

# Install dependencies
uv pip install -r requirements-dev.txt

# Run tests
uv run pytest tests/unit/ --verbose
```

**Note**: In CI/CD (GitHub Actions), we use `uv pip install --system` because the runner environment is already isolated and doesn't require a virtual environment. For local development, create a venv first or continue using the standard pip workflow.

See [uv documentation](https://docs.astral.sh/uv/) for more details.

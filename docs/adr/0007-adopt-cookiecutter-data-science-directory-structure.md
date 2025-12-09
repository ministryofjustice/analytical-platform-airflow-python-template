# 7. Adopt cookiecutter-data-science directory structure

Date: 2025-12-09

## Status

Proposed

## Context

The template initially lacked a clear structure for data science projects. Users starting new projects needed guidance on where to place:

- Data files (raw, processed, external sources)
- Jupyter notebooks for exploration and analysis
- Trained models and model artifacts
- Analysis outputs and reports
- Reusable source code vs. executable scripts
- Documentation and reference materials

Without a standard structure, projects become inconsistent, making it difficult to:

- Onboard new team members
- Understand project organization at a glance
- Share code and reproduce results
- Prevent accidental commits of large data files
- Distinguish between exploratory work and production code

Data science projects have unique needs compared to traditional software projects, requiring separation of data, models, notebooks, and code in a way that supports both exploratory and production workflows.

## Decision

We will adopt a directory structure inspired by [cookiecutter-data-science](https://drivendata.github.io/cookiecutter-data-science/), a widely-recognised standard in the DS community, however we will use a static version rather than a `cookiecutter` template to simplify usage.

```text
project-root/
├── data/              # Data files (gitignored)
│   ├── raw/          # Original, immutable data
│   ├── processed/    # Cleaned, transformed data
│   └── external/     # Third-party data sources
├── models/           # Trained models and artifacts (gitignored)
├── notebooks/        # Jupyter notebooks for exploration
├── references/       # Data dictionaries, manuals, documentation
├── reports/          # Generated analysis outputs (gitignored)
│   └── figures/     # Graphics and visualizations
├── scripts/          # Executable workflow scripts
├── src/              # Reusable source code (as Python package)
│   ├── data/        # Data loading and processing
│   ├── features/    # Feature engineering
│   ├── models/      # Model training and prediction
│   └── visualization/  # Plotting utilities
└── tests/            # Test suite (already established)
```

**Key implementation decisions:**

1. **Gitignore data, models, and reports**: Added comprehensive `.gitignore` patterns for common data formats (csv, xlsx, parquet, pickle, sqlite, RData, etc.) to prevent accidental commits of large files or sensitive data
2. **Make `src/` a Python package**: Include `__init__.py` files to enable clean imports from notebooks and scripts
3. **Comprehensive READMEs in situ**: Document purpose and usage of each directory with examples

## Consequences

**Positive:**

- **Standardisation**: Familiar structure for anyone who has used cookiecutter-data-science or similar templates
- **Clear organisation**: Obvious places for data, code, notebooks, and outputs
- **Prevents data commits**: Comprehensive gitignore reduces risk of committing large or sensitive files
- **Supports both workflows**: Accommodates exploratory (notebooks) and production (src) development
- **Better onboarding**: New team members can navigate projects intuitively
- **Scalability**: Structure supports projects from simple analyses to complex ML pipelines
- **Documentation**: Each directory has clear guidance on its purpose and usage
- **Package imports**: `src/` as a package enables clean imports: `from src.features import build_features`

**Negative:**

- **More directories**: May feel heavyweight for very simple projects
- **Learning curve**: Users unfamiliar with cookiecutter-data-science need to learn the structure
- **Package installation**: Requires `pip install -e .` or PYTHONPATH manipulation to use `src/` imports
- **Maintenance overhead**: More directories and READMEs to keep updated
- **Not one-size-fits-all**: Some projects may need to deviate from the structure
  - Users can adapt or simplify the structure for their specific needs

**Neutral:**

- Empty directories with `.gitkeep` files are included in the template. There may be a better way of handling this in future.

## Alternatives Considered

1. **Custom MoJ-specific structure**: Design our own from scratch

   - **Rejected**: Cookiecutter-data-science is already well-established and familiar to DS practitioners

2. **Minimal structure**: Only create directories users explicitly request
   - **Rejected**: Defeats the purpose of a template, provides less guidance

## Notes

This structure is a starting point. Projects with specific needs (e.g., dashboards, APIs, complex pipelines) should adapt the structure while maintaining the core organization principles.

The decision to make `src/` a package was deliberate to support clean imports, but the README documents alternative approaches for users who prefer simpler workflows.

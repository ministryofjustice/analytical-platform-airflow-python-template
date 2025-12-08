# Scripts

This directory contains executable scripts that run specific tasks or workflows.

## What Goes Here

Scripts that:

- Orchestrate workflows using functions from `src/`
- Run ETL pipelines
- Train models end-to-end
- Generate reports
- Download or prepare data
- Are meant to be executed directly, not imported

## Scripts vs src/

**Use `scripts/`** for code that orchestrates and executes tasks
**Use `src/`** for reusable functions and classes that scripts import

See [`src/README.md`](../src/README.md) for more details on organizing your code.

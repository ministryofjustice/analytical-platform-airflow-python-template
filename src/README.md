# Source Code (`src/`)

This directory contains reusable, production-ready source code for your project.

## What Goes in `src/` vs `scripts/`

### `src/` - Reusable modules and functions

Code that:

- Is imported and reused across notebooks and scripts
- Contains core business logic and algorithms
- Should be tested with unit/integration tests
- Might be deployed to production and airflow

**Examples:**

- Data processing functions
- Feature engineering pipelines
- Model training/prediction classes
- Utility functions and helpers

### `scripts/` - One-off execution scripts

See [`scripts/README.md`](../scripts/README.md) for more details.

**Examples:**

- ETL pipeline runners
- Model training scripts that tie everything together
- Data download scripts
- Report generation scripts

## Installing `src/` as a Package

To import code from `src/` in your notebooks and scripts, you have two options:

### Option 1: Editable Install (Recommended)

Create a minimal `setup.py` in your project root:

```python
from setuptools import setup, find_packages

setup(
    name="your-project-name",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        # Add your dependencies here
    ],
)
```

Then install in editable mode:

```bash
pip install -e .
```

Now you can import from anywhere:

```python
from src.features import build_features
from src.models import train_model
```

### Option 2: Add to PYTHONPATH (Quick but not recommended)

Add the project root to your Python path:

```python
# At the top of your notebook/script
import sys
from pathlib import Path
sys.path.append(str(Path(__file__).parent.parent))

# Now imports work
from src.features import build_features
```

> [!WARNING]
> This approach doesn't work well in notebooks and breaks when running scripts from different directories.

# Data Directory

 **All data files are gitignored** to prevent accidentally committing sensitive or large datasets. Whilst you may choose to work on folders on S3, this structure helps organise data locally.

## Structure

- **raw/**: Original, immutable data. Never modify files here.
- **processed/**: Cleaned and transformed data ready for analysis.
- **external/**: Data from third-party sources.

# Data Directory

 **All data files are gitignored** to prevent accidentally committing sensitive or large datasets. Whilst you may choose to work on folders on S3, this structure helps organse data locally.

## Structure

- **raw/**: Original, immutable data. Never modify files here.
- **processed/**: Cleaned and transformed data ready for analysis.
- **external/**: Data from third-party sources.

## Best Practices

- Keep raw data raw - never edit original files
- For collaboration, use a shared data storage solution (S3, shared drive, etc.)

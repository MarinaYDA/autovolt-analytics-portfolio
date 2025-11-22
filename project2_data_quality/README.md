# Project 2 – Service Operations Data Quality

**Goal:** Clean and standardize messy operational data to create a reliable, analysis-ready table.

## Raw Dataset

- File: `data/raw/project2_operations_messy_raw.csv`
- Based on Project 1 but intentionally messy:
  - Inconsistent `vehicle_brand` strings
  - `job_date` with multiple string formats
  - Missing values in `vehicle_model`, `battery_type`, `region`
  - Duplicate logical jobs with different `job_id`

See `docs/project2_data_dictionary.txt` for column meanings.

## Data Quality Issues

Documented in `01_explore_messy_data.ipynb`:
- Frequency of each brand spelling and casing
- Breakdown of date formats
- Missing value patterns
- Duplicate patterns (which columns define a “same job”)

## Cleaning Steps

Implemented and explained in `02_cleaning_rules.ipynb`:
- Standardize brand names (trim, upper, map to canonical labels)
- Parse `job_date` into a unified datetime format
- Handle missing values (drop, impute, or flag)
- Remove duplicates using a business rule:
  - same customer_id, vehicle_brand/model, job_date, battery_type, and job_type

Validation in `03_validation_checks.ipynb`:
- Row counts before vs after cleaning
- Check for remaining nulls in critical fields
- Sanity checks on date ranges and numeric fields

## Final Output

- Clean dataset: `data/clean/project2_operations_clean.csv`
- Data quality playbook: `reports/project2_data_quality_playbook.md` describing:
  - Each issue identified
  - The rule used to fix it
  - How to reuse the same logic for future data
  - SQL equivalent data-quality checks:
  - [`sql/data_quality_checks.sql`](sql/data_quality_checks.sql) with SQL queries to profile brand spellings, NULLs, date patterns, and potential duplicates.
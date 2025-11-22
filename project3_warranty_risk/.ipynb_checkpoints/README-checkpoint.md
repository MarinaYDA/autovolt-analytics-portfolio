# Project 3 – Warranty Risk Modeling

**Goal:** Predict whether a battery will fail within 1 year and identify high-risk segments.

## Dataset

- File: `data/project3_warranty_risk.csv`
- Each row: one Install job
- Columns:
  - All main columns from Project 1
  - Plus:
    - vehicle_age_years
    - mileage_at_install
    - avg_temp_c
    - failed_within_1y (0/1 label)

See `docs/project3_data_dictionary.txt` for full details.

## Modeling Plan

1. **EDA (01_eda_warranty_risk.ipynb)**
   - Failure rate by vehicle_brand, battery_type, region
   - Relationship between failure and mileage, age, temperature

2. **Modeling (02_model_logreg_tree_rf_xgb.ipynb)**
   - Train/test split
   - Models:
     - Logistic Regression
     - Decision Tree
     - Random Forest
     - XGBoost
   - Metrics:
     - ROC-AUC, precision, recall, F1
     - Confusion matrices

3. **Interpretation & Segments (03_model_comparison_and_segments.ipynb)**
   - Feature importance
   - Simple rules / segments (e.g., old, high-mileage vehicles in hot regions)
   - Threshold selection and trade-offs

## Outputs

- Trained models (optional to save as pickles)
- Comparison table of model performance
- `reports/project3_warranty_risk_summary.md` including:
  - Which features drive failures
  - Which segments have highest risk
  - Actions: pricing, warranty terms, and inventory planning
# Autovolt Analytics Portfolio (Synthetic Data)

This repository contains three end-to-end analytics projects built on fully synthetic data for a fictional hybrid-battery service company ("Autovolt").

The projects mirror common real-world data analyst work:
- Pricing & margin analysis
- Messy operational data cleaning
- Warranty risk modeling

> **Note:** All datasets are 100% synthetic and generated with Python (NumPy/Pandas).  
> No real company or customer data is used.

---

## Projects

### 1. Project 1 – Pricing & Margin Analysis

- Dataset: `project1_pricing_margin/data/project1_pricing_margin_clean.csv`
- Goal: Analyze profitability by vehicle, battery type, region, and service type.
- Tools:
  - SQL (see `project1_pricing_margin/sql/pricing_analysis_queries.sql`)
  - Python (pandas, numpy, matplotlib) in Jupyter notebooks
  - Excel / BI dashboards (Power BI or Tableau)
- Details: see `project1_pricing_margin/README.md` and  
  `project1_pricing_margin/reports/project1_pricing_margin_summary.md`.

---

### 2. Project 2 – Service Operations Data Quality

- Dataset (raw): `project2_data_quality/data/raw/project2_operations_messy_raw.csv`
- Dataset (cleaned): `project2_data_quality/data/clean/project2_operations_clean.csv`
- Goal: Clean and standardize messy operational data to build reliable dashboards.
- Tasks:
  - De-duplicate jobs
  - Standardize text fields (brands, regions, etc.)
  - Parse and normalize dates
  - Handle missing data with clear business rules
- Tools:
  - Python (pandas) for profiling and cleaning
  - SQL data-quality checks (see `project2_data_quality/sql/data_quality_checks.sql`)
- Details: see `project2_data_quality/README.md` and  
  `project2_data_quality/reports/project2_data_quality_playbook.md`.

---

### 3. Project 3 – Warranty Risk Modeling

- Dataset: `project3_warranty_risk/data/project3_warranty_risk.csv`
- Goal: Build and validate models to predict battery failure within 1 year and identify high-risk segments.
- Tools:
  - Python (pandas, scikit-learn, XGBoost)
  - Models: logistic regression, decision trees, random forest, gradient boosting
  - Evaluation: train/test split, cross-validation, ROC-AUC, precision/recall, F1
- Details: see `project3_warranty_risk/README.md` and  
  `project3_warranty_risk/reports/project3_warranty_risk_summary.md`.

---

## Tech Stack

- **Languages:** SQL, Python
- **SQL:** MySQL-compatible schemas and analysis queries that mirror the Python EDA  
  (see `sql/schema_autovolt_mysql.sql` and the `sql/` folders inside each project).
- **Python libraries:** pandas, numpy, matplotlib, scikit-learn, xgboost
- **Analytics & BI:** Excel, Power BI or Tableau
- **Notebooks:** Jupyter
- **Version control:** Git + GitHub

---

## How to Use This Repository

1. Clone the repo:

   ```bash
   git clone https://github.com/MarinaYDA/autovolt-analytics-portfolio.git
   cd autovolt-analytics-portfolio

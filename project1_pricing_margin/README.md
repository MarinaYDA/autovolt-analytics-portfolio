# Project 1 – Pricing & Margin Analysis

**Goal:** Analyze profitability by vehicle, battery type, region, and job_type for a fictional hybrid-battery service company.

## Dataset

- File: `data/project1_pricing_margin_clean.csv`
- Each row: one completed job (Install / Diagnostic / Warranty_Replacement)
- Key columns:
  - job_date, vehicle_brand, vehicle_model, region
  - job_type, battery_type, is_mobile
  - parts_cost, labor_hours, hourly_rate, travel_cost
  - discount_pct, total_price, margin
  - customer_id, is_repeat_customer

See `docs/project1_data_dictionary.txt` for full details.

## Key Questions

1. Which vehicle brands and models generate the highest margin?
2. How do margin and revenue differ by region and job_type?
3. Do repeat customers behave differently in terms of margin and frequency?
4. What is the impact of mobile service on profitability?

## Approach

1. **EDA (01_eda_pricing_margin.ipynb)**
   - Descriptive statistics and distributions
   - Margin by brand, model, region, job_type, battery_type
2. **Segmentation (02_pricing_segmentation.ipynb)**
   - Groupby analysis to identify high- and low-margin segments
   - Repeat vs first-time customer comparison
3. **Dashboard prep (03_dashboard_prep.ipynb)**
   - Create aggregated tables for a BI dashboard:
     - Margin by brand/model
     - Margin by region and job_type
     - Volume and margin by battery_type

## Outputs

- Aggregated tables for Power BI / Tableau
- A pricing & margin dashboard (not included in repo if proprietary, but documented)
- `reports/project1_pricing_margin_summary.md` with:
  - Key findings
  - Recommended pricing & margin actions
  - SQL scripts: see [`sql/pricing_analysis_queries.sql`](sql/pricing_analysis_queries.sql) for equivalent SQL used to produce the main summaries.
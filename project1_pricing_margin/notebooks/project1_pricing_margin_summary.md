# Project 1 – Pricing & Margin Analysis: Key Findings

## 1. Best and worst brands/models

- **Top brands by average margin %**
  - **Honda** – ~11.1% average margin
  - **Ford** – ~10.0% average margin
  - **Kia** – ~9.6% average margin

- **Middle of the pack**
  - **Lexus** – ~9.4% margin
  - **Hyundai** – ~9.0% margin
  - **Nissan** – ~8.7% margin

- **Lowest-margin brands**
  - **Toyota** – ~7.8% average margin
  - **Chevrolet** – ~7.3% average margin

At brand level, Honda and Ford jobs are the most profitable on average, while Toyota and Chevrolet jobs earn noticeably lower margin % and may need pricing or cost review.

> (If you want to be very specific, you can later add a short bullet like  
> “High-margin models (jobs ≥ 20) are mainly Honda and Kia hybrids with margin % in the 11–12% range, while several Toyota and Chevrolet hybrid models sit closer to 7–8%.” after you inspect `model_summary.head()` in your notebook.)

---

## 2. Region and job_type patterns

- **Regions with strongest margins (Install & Warranty jobs):**
  - **South** – Install jobs ~15.5% margin, Warranty ~14.8%.
  - **North** – Install ~15.3%, Warranty ~15.5%.
  - **West** – Install ~15.2%, Warranty ~15.3%.

- **Region with slightly weaker margins:**
  - **East** – Install ~14.6% margin, Warranty ~14.9%, consistently a bit below other regions.

- **Job type patterns:**
  - **Install** jobs are the main revenue driver with margins in the ~14.6–15.6% range across regions.
  - **Warranty_Replacement** jobs also have solid margins (~14.7–15.5%) but are slightly below Install in some regions.
  - **Diagnostic** jobs are **negative margin in every region**:
    - Around **–12%** in East and South,
    - Around **–7.9%** in North,
    - Around **–1.9%** in West.

This suggests that diagnostics are currently priced as a loss leader, and East region in general lags slightly behind other regions on profitability.

---

## 3. Repeat vs new customers

- **New customers (is_repeat_customer = 0):**
  - **1,455 jobs** with about **$2.06M** in revenue.
  - Average margin ≈ **$216** per job (≈ **8.6%** margin).

- **Repeat customers (is_repeat_customer = 1):**
  - **1,045 jobs** with about **$1.52M** in revenue.
  - Average margin ≈ **$223** per job (≈ **9.9%** margin).

**Pattern:** repeat customers are slightly more profitable on average than new customers, both in dollar margin and margin %. This supports investing in retention and follow-up campaigns rather than only focusing on acquiring new customers.

---

## 4. Recommendations

- **Protect high-margin brands.**  
  Keep current pricing (or test small strategic increases) for high-margin brands like **Honda** and **Ford**, which are already delivering ~10–11% margin.

- **Review pricing for low-margin brands.**  
  Investigate **Toyota** and **Chevrolet** jobs, where average margin % is closer to 7–8%. Options include:
  - Slight price increases on parts or labor,
  - Stricter discounting rules,
  - Cost reduction on parts sourcing.

- **Fix unprofitable diagnostics.**  
  Diagnostic jobs show negative margin in all regions (–2% to –12%). Consider:
  - Introducing a minimum diagnostic fee,
  - Bundling diagnostics into install packages,
  - Adjusting labor rates for diagnostics, especially in **East** and **South** where losses are largest.

- **Targeted region actions.**  
  - For the **East** region, margins are slightly lower overall; review discount behavior, travel charges, and mix of low-margin brands.
  - Maintain strong performance in **South** and **North** by monitoring margins and avoiding unnecessary discounting on installs.

- **Invest in repeat customers.**  
  Since repeat customers generate higher margin % (~9.9% vs 8.6%), prioritize retention:
  - Service reminders,
  - Simple loyalty offers (e.g., small discount on future installs),
  - Post-service follow-ups to encourage repeat visits.

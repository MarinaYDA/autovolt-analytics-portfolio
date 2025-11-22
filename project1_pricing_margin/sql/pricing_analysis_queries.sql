-- Project 1 – Pricing & Margin Analysis (MySQL-style SQL)
-- Assume table name: jobs_pricing

-- Example DDL (structure) – data loaded from project1_pricing_margin_clean.csv
CREATE TABLE IF NOT EXISTS jobs_pricing (
    job_id INT PRIMARY KEY,
    job_date DATETIME,
    vehicle_brand VARCHAR(50),
    vehicle_model VARCHAR(100),
    region VARCHAR(20),
    job_type VARCHAR(30),
    battery_type VARCHAR(50),
    is_mobile TINYINT,
    parts_cost DECIMAL(10,2),
    labor_hours DECIMAL(5,2),
    hourly_rate DECIMAL(7,2),
    travel_cost DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    total_price DECIMAL(10,2),
    margin DECIMAL(10,2),
    customer_id INT,
    is_repeat_customer TINYINT
);

-- 1) Margin by vehicle brand
SELECT
    vehicle_brand,
    COUNT(*) AS jobs,
    SUM(total_price) AS total_revenue,
    AVG(margin) AS avg_margin,
    AVG(margin / total_price * 100) AS avg_margin_pct
FROM jobs_pricing
GROUP BY vehicle_brand
ORDER BY avg_margin_pct DESC;

-- 2) Margin by brand + model (only models with at least 20 jobs)
SELECT
    vehicle_brand,
    vehicle_model,
    COUNT(*) AS jobs,
    SUM(total_price) AS total_revenue,
    AVG(margin) AS avg_margin,
    AVG(margin / total_price * 100) AS avg_margin_pct
FROM jobs_pricing
GROUP BY vehicle_brand, vehicle_model
HAVING COUNT(*) >= 20
ORDER BY avg_margin_pct DESC;

-- 3) Margin by region and job_type
SELECT
    region,
    job_type,
    COUNT(*) AS jobs,
    SUM(total_price) AS total_revenue,
    AVG(margin) AS avg_margin,
    AVG(margin / total_price * 100) AS avg_margin_pct
FROM jobs_pricing
GROUP BY region, job_type
ORDER BY region, job_type;

-- 4) Repeat vs new customers
SELECT
    is_repeat_customer,
    COUNT(*) AS jobs,
    SUM(total_price) AS total_revenue,
    AVG(margin) AS avg_margin,
    AVG(margin / total_price * 100) AS avg_margin_pct
FROM jobs_pricing
GROUP BY is_repeat_customer;

-- 5) Simple customer-level summary
SELECT
    customer_id,
    COUNT(*) AS jobs,
    SUM(total_price) AS total_revenue,
    SUM(margin) AS total_margin,
    AVG(margin / total_price * 100) AS avg_margin_pct
FROM jobs_pricing
GROUP BY customer_id;
-- Project 2 – Service Operations Data Quality
-- Assume raw table name: jobs_operations_raw

-- 1) Profile vehicle_brand spellings
SELECT vehicle_brand, COUNT(*) AS rows_count
FROM jobs_operations_raw
GROUP BY vehicle_brand
ORDER BY rows_count DESC;

-- 2) Check for NULLs in key columns
SELECT
    SUM(CASE WHEN vehicle_model IS NULL THEN 1 ELSE 0 END) AS missing_vehicle_model,
    SUM(CASE WHEN battery_type  IS NULL THEN 1 ELSE 0 END) AS missing_battery_type,
    SUM(CASE WHEN region        IS NULL THEN 1 ELSE 0 END) AS missing_region
FROM jobs_operations_raw;

-- 3) Detect potential duplicate jobs
-- (same customer, brand, model, date, job_type, battery_type)
SELECT
    customer_id,
    vehicle_brand,
    vehicle_model,
    job_date,
    job_type,
    battery_type,
    COUNT(*) AS dup_count
FROM jobs_operations_raw
GROUP BY
    customer_id,
    vehicle_brand,
    vehicle_model,
    job_date,
    job_type,
    battery_type
HAVING COUNT(*) > 1
ORDER BY dup_count DESC;

-- 4) Distribution of job_date by year/month (after you clean dates)
SELECT
    YEAR(job_date) AS yr,
    MONTH(job_date) AS month,
    COUNT(*) AS jobs
FROM jobs_operations_raw
GROUP BY YEAR(job_date), MONTH(job_date)
ORDER BY yr, month;
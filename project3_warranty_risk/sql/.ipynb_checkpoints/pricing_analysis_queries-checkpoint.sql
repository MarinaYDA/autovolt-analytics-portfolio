-- Project 3 – Warranty Risk Modeling
-- Assume table name: jobs_warranty

-- 1) Basic failure rate
SELECT
    AVG(failed_within_1y) AS failure_rate_overall
FROM jobs_warranty;

-- 2) Failure rate by brand and battery_type
SELECT
    vehicle_brand,
    battery_type,
    COUNT(*) AS jobs,
    AVG(failed_within_1y) AS failure_rate
FROM jobs_warranty
GROUP BY vehicle_brand, battery_type
ORDER BY failure_rate DESC;

-- 3) Failure rate by region
SELECT
    region,
    COUNT(*) AS jobs,
    AVG(failed_within_1y) AS failure_rate
FROM jobs_warranty
GROUP BY region
ORDER BY failure_rate DESC;

-- 4) Simple mileage/age buckets
SELECT
    CASE
        WHEN mileage_at_install < 60000 THEN '<60k'
        WHEN mileage_at_install < 120000 THEN '60k-120k'
        ELSE '120k+'
    END AS mileage_bucket,
    COUNT(*) AS jobs,
    AVG(failed_within_1y) AS failure_rate
FROM jobs_warranty
GROUP BY mileage_bucket
ORDER BY mileage_bucket;

SELECT
    CASE
        WHEN vehicle_age_years < 4 THEN '<4y'
        WHEN vehicle_age_years < 8 THEN '4-8y'
        ELSE '8y+'
    END AS age_bucket,
    COUNT(*) AS jobs,
    AVG(failed_within_1y) AS failure_rate
FROM jobs_warranty
GROUP BY age_bucket
ORDER BY age_bucket;
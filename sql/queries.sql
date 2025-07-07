-- Clinical Trials Analysis SQL Queries (2019–2024)
-- Project: Trends in Therapeutic Focus and Biotech Investment

-- 1. Get all data from the past 5 years
SELECT * FROM clinical_trials
WHERE start_date >= '2019-01-01' AND start_date <= '2024-12-31';


-- 2. Get most frequent therapeutic areas (conditions)
SELECT condition, COUNT(*) AS frequency
FROM clinical_trials
GROUP BY condition
ORDER BY frequency DESC;


-- 3. Create filtered table for reuse
CREATE TABLE trials_2019_2024 AS
SELECT * FROM clinical_trials
WHERE start_date >= '2019-01-01' AND start_date <= '2024-12-31';

-- Preview the new table
SELECT * FROM trials_2019_2024;


-- 4. Count of trials per sponsor type
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
GROUP BY s.sponsor_type
ORDER BY num_trials DESC;


-- 5. Trials by sponsor type, narrowed by condition

-- Alzheimer's
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "Alzheimer's"
GROUP BY s.sponsor_type
ORDER BY num_trials;

-- Diabetes
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "Diabetes"
GROUP BY s.sponsor_type
ORDER BY num_trials;

-- Breast Cancer
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "Breast Cancer"
GROUP BY s.sponsor_type
ORDER BY num_trials;

-- Obesity
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "Obesity"
GROUP BY s.sponsor_type
ORDER BY num_trials;

-- Lung Cancer
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "Lung Cancer"
GROUP BY s.sponsor_type
ORDER BY num_trials;

-- COVID-19
SELECT s.sponsor_type, COUNT(*) AS num_trials
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
WHERE t.condition = "COVID-19"
GROUP BY s.sponsor_type
ORDER BY num_trials;


-- 6. Correlation between biotech funding and trial activity

-- A. Total trials and funding by sponsor type
SELECT
    s.sponsor_type,
    COUNT(DISTINCT t.trial_id) AS num_trials,
    SUM(f.amount_million) AS total_funding
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
JOIN funding f ON t.sponsor_id = f.sponsor_id
GROUP BY s.sponsor_type
ORDER BY total_funding DESC;


-- B. Biotech funding by condition
SELECT
    t.condition,
    COUNT(DISTINCT t.trial_id) AS num_trials,
    SUM(f.amount_million) AS total_funding
FROM trials_2019_2024 t
JOIN sponsors s ON t.sponsor_id = s.sponsor_id
JOIN funding f ON t.sponsor_id = f.sponsor_id
WHERE s.sponsor_type = "Biotech"
GROUP BY t.condition
ORDER BY total_funding DESC;

-- 7. Distribution of trial phases (Phase I, II, III)
SELECT phase, COUNT(*) AS num_trials
FROM trials_2019_2024
GROUP BY phase
ORDER BY num_trials DESC;
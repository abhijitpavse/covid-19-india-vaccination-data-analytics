-- ============================================================
-- COVID-19 INDIA VACCINATION DATA ANALYTICS
-- MYSQL ANALYSIS
-- ============================================================

-- 1. DATABASE
CREATE DATABASE covid_vaccination;

USE covid_vaccination;


-- 2. TABLE
CREATE TABLE covid_data (
    state_uts VARCHAR(100),
    total_vaccination_doses BIGINT,
    dose1 BIGINT,
    dose2 BIGINT,
    dose1_15_18 BIGINT,
    dose2_15_18 BIGINT,
    dose1_12_14 BIGINT,
    dose2_12_14 BIGINT,
    precaution_18_59 BIGINT,
    population BIGINT
);


-- 3. TABLE STRUCTURE
DESCRIBE covid_data;


-- 4. CHECK SECURE FILE PRIV
SHOW VARIABLES LIKE 'secure_file_priv';


-- 5. DATA IMPORT
LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/COVID-19_dataset.csv'
INTO TABLE covid_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- 6. DATA CHECK
SELECT * FROM covid_data;

SELECT COUNT(*) AS total_states
FROM covid_data;


-- 7. TOP 10 VACCINATED STATES
SELECT
    state_uts,
    total_vaccination_doses
FROM covid_data
ORDER BY total_vaccination_doses DESC
LIMIT 10;


-- 8. AVERAGE COVERAGE
SELECT
    AVG(
        (total_vaccination_doses / population) * 100
    ) AS average_coverage
FROM covid_data;


-- 9. POPULATION > 50M BUT BELOW AVERAGE COVERAGE
SELECT
    state_uts,
    population,
    ROUND(
        (total_vaccination_doses / population) * 100,
        2
    ) AS coverage_percentage
FROM covid_data
WHERE population > 50000000
AND
    ((total_vaccination_doses / population) * 100)
    <
    (
        SELECT AVG(
            (total_vaccination_doses / population) * 100
        )
        FROM covid_data
    );


-- 10. DOSE 2 < 80% OF DOSE 1
SELECT
    state_uts,
    dose1,
    dose2
FROM covid_data
WHERE dose2 < (0.8 * dose1);


-- 11. TOP 5 PRECAUTION DOSE STATES
SELECT
    state_uts,
    precaution_18_59
FROM covid_data
ORDER BY precaution_18_59 DESC
LIMIT 5;


-- 12. VACCINATION COVERAGE
SELECT
    state_uts,
    ROUND(
        (total_vaccination_doses / population) * 100,
        2
    ) AS coverage_percentage
FROM covid_data;


-- 13. STATE RANK
SELECT
    state_uts,
    total_vaccination_doses,
    DENSE_RANK() OVER(
        ORDER BY total_vaccination_doses DESC
    ) AS state_rank
FROM covid_data;


-- 14. HIGHEST CHILD VACCINATION
SELECT
    state_uts,
    dose1_12_14
FROM covid_data
ORDER BY dose1_12_14 DESC
LIMIT 1;


-- 15. TOP 5 CHILD VACCINATION
SELECT
    state_uts,
    dose1_12_14
FROM covid_data
ORDER BY dose1_12_14 DESC
LIMIT 5;


-- 16. HIGHEST TEEN VACCINATION
SELECT
    state_uts,
    dose1_15_18
FROM covid_data
ORDER BY dose1_15_18 DESC
LIMIT 1;


-- 17. TOP 5 TEEN VACCINATION
SELECT
    state_uts,
    dose1_15_18
FROM covid_data
ORDER BY dose1_15_18 DESC
LIMIT 5;


-- 18. STATES WITH >100M PRECAUTION DOSES
SELECT
    state_uts,
    precaution_18_59
FROM covid_data
WHERE precaution_18_59 > 100000000;


-- 19. FINAL SUMMARY REPORT
SELECT
    state_uts,
    population,
    total_vaccination_doses,

    ROUND(
        (total_vaccination_doses / population) * 100,
        2
    ) AS coverage_percentage,

    DENSE_RANK() OVER(
        ORDER BY total_vaccination_doses DESC
    ) AS state_rank

FROM covid_data

ORDER BY state_rank;
-- 3.	Create a SQL query that returns the total number of encounters, the average age and the average LOS for each attending name per year and month.

-- in other words:
--  each year, each month, each attending: total encounters, average age, average LOS

SELECT
    DATE_TRUNC('month', "ED_Arrival_Time")::date AS arrival_month,
    "Attending_Name",
    COUNT("PAT_ENC_CSN_ID") AS total_encounters,
    AVG("Age") AS average_age,
    AVG("ED_Departure_Time" - "ED_Arrival_Time") AS "average_LOS"
FROM
    "Encounter"
GROUP BY
    arrival_month,
    "Attending_Name"
ORDER BY
    arrival_month,
    "Attending_Name";

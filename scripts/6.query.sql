-- 6.	Create a SQL query that returns the top 5 duos of attending and treatment team members with the most encounter records.

SELECT
    "Attending_Name",
    "Treatment_Team_Name",
    COUNT("PAT_ENC_CSN_ID") AS num_encounters
FROM
    "Encounter"
GROUP BY
    "Attending_Name",
    "Treatment_Team_Name"
ORDER BY
    num_encounters desc
LIMIT 5;

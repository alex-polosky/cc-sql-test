-- 4.	Create a SQL query that returns a list of means of arrival codes from the Encounter table which are not found in the EMS table.

SELECT DISTINCT
    "Means_Of_Arrival_CD"
FROM
    "Encounter"
WHERE
    "Means_Of_Arrival_CD" NOT IN (
        SELECT
            "Means_Of_Arrival_CD"
        FROM
            "EMS"
)
ORDER BY "Means_Of_Arrival_CD";

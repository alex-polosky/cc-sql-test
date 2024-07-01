-- 8.	Use your creativity to create a stored procedure that does something with 2 of the 3 tables.
--      It could be inserting records to the tables and then returning something, etc.
--      We just want to see your ability to create stored procedures.
--      Just a simple procedure with no more than 50 lines of codes.

-- Idea: calculate the average LOS per provider per month per year and update the Provider_LOS table as required

CREATE OR REPLACE PROCEDURE insert_missing_ems_entries()
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO "EMS" ("Means_Of_Arrival_CD", "Means_Of_Arrival_Name", "Is_Ems")
    SELECT
        DISTINCT e."Means_Of_Arrival_CD",
        'REPLACE_THIS_' || ROW_NUMBER() OVER (ORDER BY e."Means_Of_Arrival_CD"),
        NULL::BOOLEAN
    FROM
        "Encounter" e
    LEFT JOIN
        "EMS" ems ON e."Means_Of_Arrival_CD" = ems."Means_Of_Arrival_CD"
    WHERE
        ems."Means_Of_Arrival_CD" IS NULL;
END;
$$;

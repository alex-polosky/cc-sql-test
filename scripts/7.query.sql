-- 7.	Use an analytical function similar to row_number() to assign an ordered number to each record based on ED department, attending name and age.

SELECT
    "PAT_ENC_CSN_ID",
    "ED_Department",
    "Attending_Name",
    "Age",
    ROW_NUMBER() OVER (
        PARTITION BY "ED_Department"
        ORDER BY "Attending_Name", "Age"
    ) AS ordered_number
FROM
    "Encounter";

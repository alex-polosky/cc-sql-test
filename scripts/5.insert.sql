-- 5.	Based on the prior question, write an “INSERT” statement to add the missing records to the EMS table.  Make up whatever you want for the names.

INSERT INTO
    "EMS" ("Means_Of_Arrival_CD", "Means_Of_Arrival_Name", "Is_Ems")
VALUES
    (27, 'Sacred Heart', FALSE),
    (28, 'Princeton-Plainsboro', TRUE),
    (29, 'Grey Sloan Memorial', FALSE),
    (30, 'Arhkam Asylum', TRUE)
;

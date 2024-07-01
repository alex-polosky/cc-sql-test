-- 1.	Create 3 tables with the proper data types and proper names in your favorite DBMS based on the 3 tabs found in the spreadsheet.  Use a SQL “CREATE” statement.

CREATE TABLE "Encounter" (
    "PAT_ENC_CSN_ID" integer PRIMARY KEY,
    "ED_Arrival_Time" timestamp,
    "Means_Of_Arrival_CD" integer,
    "ED_Department" varchar(255),
    "ED_Departure_Time" timestamp,
    "Attending_Name" varchar(255),
    "Treatment_Team_Name" varchar(255),
    "Age" integer
);

CREATE TABLE "EMS" (
    "Means_Of_Arrival_CD" integer PRIMARY KEY,
    "Means_Of_Arrival_Name" varchar(255),
    "Is_Ems" boolean
);

CREATE TABLE "Provider_LOS" (
--    "id" integer PRIMARY KEY,
    "Year" integer,
    "Month" integer,
    "Provider" varchar(255),
    "Avg_LOS" integer
);

-- ALTER TABLE "Encounter" ADD FOREIGN KEY ("Means_Of_Arrival_CD") REFERENCES "EMS" ("Means_Of_Arrival_CD");

-- ALTER TABLE "Provider_LOS" ADD CONSTRAINT unique_year_month_provider UNIQUE ("Year", "Month", "Provider");

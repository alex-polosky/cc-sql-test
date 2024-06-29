# Executing commands

## 1.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/1.tables.sql`

I did not include proper ids on Provider LOS as they were not in the sheet.

I did not include a foreign key relationship for the Means of Arrival CD, as this was throwing errors due to missing entries, and those aren't updated until a later step

## 2.

`docker compose exec -it cc-db /opt/cc/scripts/2.import.sh`

## 3.

``

These requirements are ambigious: they are either asking for "(the average age and the average LOS) for each attending name per year and month" OR "(the average age)", and "(the average LOS) for each attending name per year and month".

Due to the implied comma for year and month, I'm making an assumption that this means the former.

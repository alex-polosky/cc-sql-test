# Executing commands

## 1.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/1.tables.sql`

I did not include proper ids on Provider LOS as they were not in the sheet.

I did not include a foreign key relationship for the Means of Arrival CD, as this was throwing errors due to missing entries, and those aren't updated until a later step

## 2.

`docker compose exec -it cc-db /opt/cc/scripts/2.import.sh`

## 3.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/3.query.sql`

## 4.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/4.query.sql`

## 5.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/5.insert.sql`

## 6.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/6.query.sql`

## 7.

`docker compose exec -it cc-db psql -U postgres -f /opt/cc/scripts/7.query.sql`

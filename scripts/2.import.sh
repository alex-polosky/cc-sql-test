#!/usr/bin/env bash
# 2.	Import tabs Encounter, EMS and Provider_LOS into the new tables using whatever means, as long as you explain how you did it.

# Prior to running this script, convert each sheet in the workbook to a file, following this format:
# ./data/test-data.ems.csv
# ./data/test-data.encounter.csv
# ./data/test-data.providerlos.csv

psql -U postgres -c "\copy \"EMS\" FROM '/opt/cc/data/test-data.ems.csv' CSV HEADER NULL 'null'"

psql -U postgres -c "\copy \"Encounter\" FROM '/opt/cc/data/test-data.encounter.csv' CSV HEADER"

psql -U postgres -c "\copy \"Provider_LOS\" FROM '/opt/cc/data/test-data.providerlos.csv' CSV HEADER"

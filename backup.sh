#!/bin/bash

file_name="drupal_db_backup.sql"

docker compose exec db sh -c 'exec pg_dump -U db-user "postgres"' > $file_name

echo "back up saved to $file_name"

#!/bin/bash

file_name="drupal_db_backup.sql"

cat $file_name | docker compose exec -T db psql -U db-user -d postgres && \
  echo "Backup restored from $file_name"

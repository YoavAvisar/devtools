#!/bin/bash

file_name="drupal_db_backup.sql"

backup_output=$(docker compose exec db sh -c 'exec pg_dump -U db-user "postgres"') && \
  echo $backup_output > $file_name && \
  echo "Backup saved to $file_name"

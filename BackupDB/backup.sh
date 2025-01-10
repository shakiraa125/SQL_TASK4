#!/bin/bash
TIMESTAMP=$(date +"%F_%T")
BACKUP_DIR="C:/DataEngineer/POSTGRESQL/BACKUP_DIR"
DB_NAME="TestDB"
USER="root"
PASSWORD="shakira"

mkdir -p $BACKUP_DIR

mysqldump -u $USER -p$PASSWORD $DB_NAME > $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql

echo "Backup completed: $BACKUP_DIR/${DB_NAME}_$TIMESTAMP.sql"

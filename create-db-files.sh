#!/bin/bash

# Check if databases folder exists
if [ ! -d "backend/databases" ]; then
    echo "✗ Error: backend/databases folder not found!"
    exit 1
fi

# Create postgresql subfolder
mkdir -p backend/databases/postgresql

# Create PostgreSQL learning files
touch backend/databases/postgresql/01_installation.md
touch backend/databases/postgresql/02_basics.md
touch backend/databases/postgresql/03_user_role_management.md
touch backend/databases/postgresql/04_database_management.md
touch backend/databases/postgresql/05_authentication.md
touch backend/databases/postgresql/06_table_management.md
touch backend/databases/postgresql/07_schemas.md
touch backend/databases/postgresql/08_backup_restore.md
touch backend/databases/postgresql/09_extensions_tools.md
touch backend/databases/postgresql/10_collation_issues.md
touch backend/databases/postgresql/11_security_best_practices.md
touch backend/databases/postgresql/12_app_connection.md
touch backend/databases/postgresql/13_troubleshooting.md
touch backend/databases/postgresql/README.md

echo "✓ PostgreSQL folder and all learning files created successfully in backend/databases/postgresql/"

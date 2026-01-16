# PostgreSQL Basics

## Accessing PostgreSQL Shell

### Connect as postgres user
```bash
sudo -u postgres psql
```

### Connect to a specific database
```bash
psql -U username -d database_name -h localhost
```

## Understanding the Prompt

The `postgres=#` prompt indicates:
- You are connected to the PostgreSQL server
- You have superuser privileges (root)

## Essential Commands

| Command | Description |
|---------|-------------|
| `\l` | List all databases |
| `\du` | List all roles/users |
| `\dt` | List all tables in current database |
| `\d table_name` | Describe table structure |
| `\dn` | List all schemas |
| `\df` | List all functions |
| `\dv` | List all views |

## Exit the Shell

```bash
\q
```

Or press `Ctrl + D`
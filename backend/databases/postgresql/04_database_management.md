# Database Management

## Creating Databases

### Create a simple database
```bash
createdb database_name
```

### Create with owner
```bash
createdb database_name -O username
```

### Create with SQL
```sql
CREATE DATABASE database_name OWNER username;
```

## Listing Databases

```bash
\l
```

Or from command line:
```bash
psql -l
```

## Connecting to Database

```bash
psql -U username -d database_name -h localhost
```

## Dropping Databases

### Drop a database
```bash
dropdb database_name
```

### Or using SQL
```sql
DROP DATABASE database_name;
```

## Fix Collation Issues

If you encounter collation mismatch errors:

```sql
ALTER DATABASE template1 REFRESH COLLATION VERSION;
ALTER DATABASE postgres REFRESH COLLATION VERSION;
```

Then restart PostgreSQL:
```bash
sudo systemctl restart postgresql
```

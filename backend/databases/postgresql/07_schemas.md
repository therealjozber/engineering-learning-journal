# Schemas

## Understanding Schemas

Schemas are logical containers for database objects (tables, views, functions).
The default schema is `public`.

## Creating Schemas

```sql
CREATE SCHEMA my_schema;
```

## Listing Schemas

```bash
\dn
```

## Using Schemas

### Create table in schema
```sql
CREATE TABLE my_schema.users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
```

### Query from schema
```sql
SELECT * FROM my_schema.users;
```

## Switching Search Path

```sql
SET search_path TO my_schema, public;
```

Now you can use `users` instead of `my_schema.users`

## Moving Tables Between Schemas

```sql
ALTER TABLE table_name SET SCHEMA new_schema;
```

## Dropping Schemas

```sql
DROP SCHEMA schema_name;
```
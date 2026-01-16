# Table Management

## Creating Tables

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Common Data Types

| Type | Description |
|------|-------------|
| `SERIAL` | Auto-incrementing integer |
| `VARCHAR(n)` | Variable character string |
| `TEXT` | Unlimited text |
| `INTEGER` | Whole numbers |
| `NUMERIC(p,s)` | Decimal numbers |
| `BOOLEAN` | True/false |
| `DATE` | Date only |
| `TIMESTAMP` | Date and time |

## Basic Operations

### Insert data
```sql
INSERT INTO users (username, email) VALUES ('john', 'john@example.com');
```

### Query data
```sql
SELECT * FROM users WHERE username = 'john';
```

### Update data
```sql
UPDATE users SET email = 'john@newmail.com' WHERE username = 'john';
```

### Delete data
```sql
DELETE FROM users WHERE username = 'john';
```

## Table Management

### Describe table
```bash
\d table_name
```

### Drop table
```sql
DROP TABLE table_name;
```
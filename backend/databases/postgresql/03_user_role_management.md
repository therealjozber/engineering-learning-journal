# User & Role Management

## Creating Users/Roles

### Create a new role
```sql
CREATE ROLE username WITH LOGIN PASSWORD 'password';
```

### Create a new user (shorthand)
```sql
CREATE USER username WITH PASSWORD 'password';
```

### Create interactively
```bash
sudo -u postgres createuser --interactive
```

## Granting Privileges

### Grant database privileges
```sql
GRANT ALL PRIVILEGES ON DATABASE database_name TO username;
```

### Grant table privileges
```sql
GRANT SELECT, INSERT, UPDATE ON table_name TO username;
```

## Managing Users

### List all roles
```bash
\du
```

### Alter user password
```sql
ALTER USER username WITH PASSWORD 'new_password';
```

### Drop a user
```sql
DROP ROLE username;
```

## Role Attributes

```sql
CREATE ROLE username WITH LOGIN PASSWORD 'password' CREATEDB SUPERUSER;
```

- `LOGIN`: User can log in
- `CREATEDB`: Can create databases
- `SUPERUSER`: Admin privileges
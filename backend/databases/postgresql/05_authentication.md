# Authentication

## PostgreSQL Authentication Methods

### peer
- Uses OS user authentication
- Only works for local connections
- Default for local connections

### md5
- Sends MD5 hash of password
- Works for local and remote
- Legacy method (still widely used)

### scram-sha-256
- Modern, secure authentication method
- Recommended for production
- Works for local and remote connections

### trust
- Allows connection without password
- Use only for local development

## Configuration File

### pg_hba.conf Location
```bash
/etc/postgresql/{version}/main/pg_hba.conf
```

### Example Configuration
```
local   all   all   peer
host    all   all   127.0.0.1/32   md5
host    all   all   ::1/128   md5
host    all   all   0.0.0.0/0   scram-sha-256
```

## Switch from peer to md5

### 1. Edit pg_hba.conf
```bash
sudo nano /etc/postgresql/{version}/main/pg_hba.conf
```

Change `peer` to `md5`

### 2. Set password for postgres user
```bash
sudo -u postgres psql
ALTER USER postgres WITH PASSWORD 'new_password';
\q
```

### 3. Restart PostgreSQL
```bash
sudo systemctl restart postgresql
```
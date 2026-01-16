# Security Best Practices

## Authentication Security

### Use strong authentication
```sql
ALTER USER username WITH ENCRYPTED PASSWORD 'StrongPassword123!@#';
```

### Use scram-sha-256 (recommended)
Edit `/etc/postgresql/{version}/main/pg_hba.conf`:
```
host all all 0.0.0.0/0 scram-sha-256
```

### Avoid superuser for applications
Create limited-privilege users instead

## Network Security

### Never expose to internet
```bash
# Only listen on localhost
listen_addresses = 'localhost'
```

### Use firewall rules
```bash
sudo ufw allow from 192.168.1.0/24 to any port 5432
```

### Enable SSL for remote connections
```
ssl = on
ssl_cert_file = '/etc/ssl/certs/server.crt'
ssl_key_file = '/etc/ssl/private/server.key'
```

## Credential Management

### Use environment variables
```bash
export PGUSER=username
export PGPASSWORD=password
export PGHOST=localhost
export PGDATABASE=database_name
```

### Or use .pgpass file
```bash
echo "localhost:5432:database:user:password" >> ~/.pgpass
chmod 600 ~/.pgpass
```

## Database Organization

- Keep dev, test, and production separate
- Use different users for each environment
- Rotate credentials regularly

## Maintenance

- **Regular backups** - At least daily
- **Test restores** - Verify backups work
- **Monitor logs** - Check for suspicious activity
- **Update regularly** - Keep PostgreSQL patched
- **Limit superuser usage** - Use minimal privileges
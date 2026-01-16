# Troubleshooting

## Connection Issues

### "Cannot connect to PostgreSQL"

**Check if service is running:**
```bash
sudo systemctl status postgresql
```

**Start the service:**
```bash
sudo systemctl start postgresql
```

## Authentication Issues

### "FATAL: peer authentication failed"

Change authentication method in pg_hba.conf:

```bash
sudo nano /etc/postgresql/{version}/main/pg_hba.conf
```

Change `peer` to `md5`:
```
local   all   all   md5
```

Reload:
```bash
sudo systemctl reload postgresql
```

### "Password authentication failed"

Set password for user:
```bash
sudo -u postgres psql
ALTER USER postgres WITH PASSWORD 'newpassword';
\q
```

## Database Issues

### "Collation mismatch" errors

```sql
ALTER DATABASE template1 REFRESH COLLATION VERSION;
ALTER DATABASE postgres REFRESH COLLATION VERSION;
```

### "Createdb fails"

Check template1:
```sql
SELECT datname, datcollate FROM pg_database WHERE datname = 'template1';
```

Fix collation as above.

## Quick Fixes

| Problem | Solution |
|---------|----------|
| PostgreSQL won't start | Check logs: `sudo journalctl -xe` |
| Port 5432 in use | `sudo lsof -i :5432` |
| Disk space full | Clean old backups: `rm /var/backups/postgresql/*` |
| Slow queries | Enable logging in `postgresql.conf` |

## Getting Help

- Check logs: `/var/log/postgresql/postgresql.log`
- PostgreSQL docs: https://www.postgresql.org/docs/
- In psql: `\h` for help, `\h COMMAND` for specific command
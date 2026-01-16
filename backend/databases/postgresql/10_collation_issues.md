# Collation Issues

## What is Collation?

Collation defines how characters are sorted and compared in the database.

## Common Problems

### Collation mismatch errors
Often occurs after PostgreSQL or system updates.

```
ERROR: collation "en_US.UTF-8" for encoding "UTF8" does not exist
```

### Sorting behaves unexpectedly
Different locales sort characters differently (é, ñ, ü)

### Case-sensitive comparisons
Depending on collation, 'John' may or may not match 'john'

## Fixing Collation Issues

### Refresh template database collations
```sql
ALTER DATABASE template1 REFRESH COLLATION VERSION;
ALTER DATABASE postgres REFRESH COLLATION VERSION;
```

### Apply to all databases
```bash
sudo -u postgres vacuumdb --all --analyze
```

### Restart PostgreSQL
```bash
sudo systemctl restart postgresql
```

## Prevention

1. Do this **before creating new databases**
2. Always create databases with UTF-8 encoding
3. Keep PostgreSQL and OS updated together
4. Test backups after major system upgrades
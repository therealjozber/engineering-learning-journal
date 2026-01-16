# Backup & Restore

## Backing Up Databases

### Backup single database
```bash
pg_dump database_name > backup.sql
```

### Backup all databases
```bash
pg_dumpall > all_databases.sql
```

### Backup with custom format
```bash
pg_dump -F c database_name -f backup.dump
```

## Restoring Databases

### Restore from SQL file
```bash
psql database_name < backup.sql
```

### Restore from custom format
```bash
pg_restore -d database_name backup.dump
```

### Restore all databases
```bash
psql < all_databases.sql
```

## Backup Best Practices

1. **Schedule regular backups** - Daily for production
2. **Use automated scripts** - Don't rely on manual backups
3. **Store offsite** - Keep backups in multiple locations
4. **Test restores** - Verify backups work before disaster
5. **Compress backups** - Save disk space

```bash
# Compressed backup
pg_dump database_name | gzip > backup.sql.gz
```
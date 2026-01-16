# Extensions & Tools

## PostgreSQL Extensions

### Common Extensions

| Extension | Purpose |
|-----------|---------|
| `uuid-ossp` | UUID generation |
| `pgcrypto` | Cryptographic functions |
| `hstore` | Key-value store |
| `json` | JSON support |
| `pg_trgm` | Text search optimization |

### Installing Extensions

```sql
CREATE EXTENSION IF NOT EXISTS extension_name;
```

### List installed extensions
```bash
\dx
```

## Useful Tools

### Command-line Tools

**psql** - Interactive terminal
```bash
psql -U username -d database_name
```

**pg_dump** - Backup utility
```bash
pg_dump database_name > backup.sql
```

**pg_restore** - Restore utility
```bash
pg_restore backup.dump -d database_name
```

### GUI Tools

**pgAdmin**
- Web-based PostgreSQL management
- Feature-rich interface
- Install: `sudo apt install pgadmin4`

**DBeaver**
- Universal database tool
- Supports many databases
- Free and paid versions

**DbSchema**
- Visual database design
- Schema management


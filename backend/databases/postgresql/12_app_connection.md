# Application Connection

## Python Connection

### Using psycopg2
```bash
pip install psycopg2-binary
```

```python
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="database_name",
    user="username",
    password="password",
    port=5432
)

cursor = conn.cursor()
cursor.execute("SELECT * FROM users;")
print(cursor.fetchall())
cursor.close()
conn.close()
```

## Node.js Connection

### Using pg library
```bash
npm install pg
```

```javascript
const { Client } = require('pg');

const client = new Client({
    host: 'localhost',
    port: 5432,
    database: 'database_name',
    user: 'username',
    password: 'password'
});

client.connect();
client.query('SELECT * FROM users;', (err, res) => {
    console.log(err || res.rows);
    client.end();
});
```

## Connection Best Practices

### 1. Use environment variables
```python
import os
conn = psycopg2.connect(os.environ['DATABASE_URL'])
```

### 2. Handle errors
```python
try:
    conn = psycopg2.connect(...)
except psycopg2.Error as e:
    print(f"Connection failed: {e}")
```

### 3. Use connection pooling
```python
from psycopg2 import pool
connection_pool = pool.SimpleConnectionPool(1, 20, ...)
```

### 4. Verify connection
```bash
psql -U username -d database_name -h localhost -c "SELECT 1;"
```
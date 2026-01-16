# PostgreSQL Installation on Linux

## Overview
This guide covers installing PostgreSQL on Debian/Ubuntu-based systems (Kali, Ubuntu, Debian).

## Package Selection

### `postgresql` vs `postgresql-contrib`
- **postgresql**: Core PostgreSQL database server
- **postgresql-contrib**: Additional modules and extensions (recommended)

## Installation Steps

### 1. Install PostgreSQL
```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### 2. Check PostgreSQL Version
```bash
psql --version
```

### 3. Service Management

**Check service status:**
```bash
sudo systemctl status postgresql
```

**Start the service:**
```bash
sudo systemctl start postgresql
```

**Stop the service:**
```bash
sudo systemctl stop postgresql
```

**Enable on boot:**
```bash
sudo systemctl enable postgresql
```

### 4. Verify Installation
```bash
sudo -u postgres psql -c "SELECT version();"
```
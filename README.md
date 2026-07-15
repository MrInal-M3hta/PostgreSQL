# PostgreSQL Practice Repository

This repository is a hands-on learning workspace for PostgreSQL fundamentals and SQL practice. It contains structured SQL scripts that cover database creation, schema design, table operations, data manipulation, relationships, joins, aggregations, subqueries, indexes, and transactions.

## Project Description

The goal of this project is to provide a practical, step-by-step introduction to PostgreSQL through real SQL examples. Each folder contains scripts organized by topic so you can learn progressively and execute them in order.

## Repository Structure

- part1/: database setup, schemas, tables, and basic data types
- part2/: INSERT, SELECT, WHERE, UPDATE, DELETE, and pagination examples
- part3/: relationships, joins, aggregates, subqueries, indexes, and transactions

## Prerequisites

Before getting started, make sure you have the following installed:

- PostgreSQL server
- psql command-line tool or pgAdmin
- A terminal with access to PostgreSQL

## Installation

1. Install PostgreSQL on your system if it is not already installed.
2. Start the PostgreSQL service and create a database for practice.
3. Connect to PostgreSQL using psql:

```bash
psql -U postgres
```

4. Create a practice database:

```sql
CREATE DATABASE postgres_practice;
```

5. Exit psql and connect to the new database:

```bash
psql -U postgres -d postgres_practice
```

## Usage Instructions

Run the SQL files from the repository using psql.

### Example: run a single script

```bash
psql -U postgres -d postgres_practice -f part1/01_first_database.sql
```

### Example: run multiple scripts in order

```bash
psql -U postgres -d postgres_practice -f part1/01_first_database.sql
psql -U postgres -d postgres_practice -f part1/02_first_schema.sql
psql -U postgres -d postgres_practice -f part1/03_first_table.sql
```

### Recommended learning flow

- Start with the scripts in part1
- Continue with part2 for CRUD and query basics
- Finish with part3 for relational concepts and advanced SQL

## Notes

- Some scripts may depend on objects created by earlier files, so follow the numbered order.
- If you want to reset the environment, re-run the setup scripts from the beginning.

## License

This project is intended for educational and practice purposes.

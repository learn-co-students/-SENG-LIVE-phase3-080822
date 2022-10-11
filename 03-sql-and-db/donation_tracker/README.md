## 3. SQL & Databases

### SWBAT

- [ ] Explain why we use databases
- [ ] Explain what SQL is and why we use it
- [ ] Explain the difference between a database, server, and API
- [ ] Explain the difference between rows and columns in a table
- [ ] Explain the difference between a foreign key and primary key
- [ ] Explain what a join table is
- [ ] Explain what it means to seed a database
- [ ] Observe using SQL to communicate with a database
- [ ] Explain what an ORM is and why we use Active Record


### Current application problems:

1. No way of remembering the objects. Although there is an all array that stores instances, once the application session is over, this collection reverts back to an empty array.
    <details>
    <summary>Solution:</summary>
        Persist and manage data by establishing a database
    </details>

2. Organization is defined as an attribute on the donation class. However we can imagine that a single organization might receive multiple donations. This could create duplicate data in our table which is not best practice.
    <details>
    <summary>Solution:</summary>
        Isolate organization as its own class and relate donations to an individual organization by using a foreign key column
    </details>


### What is SQL?

- Structured Query Language
- Language used to communicate with and manage databases
- It is a whole science in and of itself. We learn the very basics to understand Active Record better, we can also use basic knowledge to configure and customize database communications outside of conventions

The following outline the configuration changes necessary to integrate a SQLite database into our application.
  
## DB Config

### Add sqlite3 gem to Gemfile

```bash
bundle add sqlite3
```

Install [DB Browser for SQLite](https://sqlitebrowser.org/)

WSL [Using SQLite with VS Code Extension](https://www.youtube.com/watch?v=bKixKfb1J1o)
  - Right click DB and select open Database
  - In SQLite Explorer right click the Database and select new query 
  - Wright the query, highlight the query, click right and select run query


#### CREATE TABLE (establish a table)

```sql
CREATE TABLE tablename(
    id INTEGER PRIMARY KEY,
    attribute TYPE,
    attribute TYPE
)
```

#### Delete tables
```sql 
DROP TABLE table_name;
```

#### SELECT (retrieve)

```sql
SELECT (column name) FROM table_name
```

#### INSERT (persist)

```sql
INSERT INTO table (attribute, attribute, attribute) VALUES (value, value, value)

```

#### UPDATE

```sql
UPDATE table
SET column = ?, column = ?
WHERE id = ?;
```

### What is ORM

- Object Relational Mapping
- What does that mean? Being able to access our relational databases with a programming language that follows the OO paradigm, in this case, Ruby. 
- Essentially, we're going to combine Ruby and SQL to perform powerful behaviors on our database tables.
- This works by mapping classes and instances to database tables and rows
- CAUTION: Do no mix the two up. While we mimick our Ruby objects as records in the database, they are not the same thing. `Ruby object != database record`
- ORM's solve repetition and organization problems
- Get ready for Active Record!

![ORM](./donations_table.png)

### Relating our tables

- A donation belongs to an organization
- An organization has many donations

Foreign keys:
- A foreign key column will be owned by the 'child object'. This is the object that belongs to another object. In this domain model, the child object is the donation
- Column name will be `parent_id` 
- This column will store the primary key of the parent object

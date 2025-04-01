# Surreal Db



```
# PRIMITIVE ––––––––––––––––––––––––––––––
# • –––––––––– • –––––––––– • –––––––––– •
# | Bool       | Float      | Int        |
# • –––––––––– • –––––––––– • –––––––––– •
# | String     | Decimal    | Duration   |
# • –––––––––– • –––––––––– • –––––––––– •
# | Number     | Uuid       | Datetime   |
# • –––––––––– • –––––––––– • –––––––––– •

db.query("DEFINE FIELD string_field   ON TABLE example  TYPE string;")
db.query("DEFINE FIELD int_field      ON TABLE example  TYPE int;")
db.query("DEFINE FIELD float_field    ON TABLE example  TYPE float;")
db.query("DEFINE FIELD number_field   ON TABLE example  TYPE number;")
db.query("DEFINE FIELD bool_field     ON TABLE example  TYPE bool;")
db.query("DEFINE FIELD datetime_field ON TABLE example  TYPE datetime;")
db.query("DEFINE FIELD duration_field ON TABLE example  TYPE duration;")
db.query("DEFINE FIELD uuid_field     ON TABLE example  TYPE uuid;")
db.query("DEFINE FIELD bytes_field    ON TABLE example  TYPE bytes;")
db.query("DEFINE FIELD decimal_field  ON TABLE example  TYPE decimal;")
db.query("DEFINE FIELD geometry_field ON TABLE example  TYPE geometry;")
db.query("DEFINE FIELD any_field      ON TABLE example  TYPE any;")
```
```
# COMPOSITE ––––––––––––––––––––––––––––––
# • –––––––––– • –––––––––– • –––––––––– •
# | Array      | Object     | Set        |
# • –––––––––– • –––––––––– • –––––––––– •
# | Record     | Range      | Geometry   |
# • –––––––––– • –––––––––– • –––––––––– •

db.query("DEFINE FIELD tags           ON TABLE example  TYPE array<string>;")
db.query("DEFINE FIELD scores         ON TABLE example  TYPE array<int>;")
db.query("DEFINE FIELD prices         ON TABLE example  TYPE array<float>;")
db.query("DEFINE FIELD metadata       ON TABLE example  TYPE object;")
db.query("DEFINE FIELD address        ON TABLE example  TYPE object(city: string, zip: int);")
db.query("DEFINE FIELD permissions    ON TABLE example  TYPE set<string>;")
db.query("DEFINE FIELD user_roles     ON TABLE example  TYPE set<int>;")
db.query("DEFINE FIELD author         ON TABLE posts    TYPE record(users);")
db.query("DEFINE FIELD members        ON TABLE teams    TYPE array<record(users)>;")
db.query("DEFINE FIELD active_years   ON TABLE users    TYPE range<int>;")
db.query("DEFINE FIELD price_range    ON TABLE products TYPE range<float>;")
db.query("DEFINE FIELD location       ON TABLE places   TYPE geometry;")
db.query("DEFINE FIELD coordinates    ON TABLE places   TYPE array<geometry>;")
```

```
# OPERATORS ––––––––––––––––––––––––––––––
# ––––––––––––––––––––––––––––– arithmetic
# • –––––––––– • –––––––––– • –––––––––– •
# | +          | -          | *          |
# • –––––––––– • –––––––––– • –––––––––– •
# | /          | %          | ^          |
# • –––––––––– • –––––––––– • –––––––––– •
# ––––––––––––––––––––––––––––– comparison
# • –––––––––– • –––––––––– • –––––––––– •
# | ==         | !=         | >          |
# • –––––––––– • –––––––––– • –––––––––– •
# | <          | >=         | <=         |
# • –––––––––– • –––––––––– • –––––––––– •
# –––––––––––––––––––––––––––––––– logical
# • –––––––––– • –––––––––– • –––––––––– •
# | AND        | OR         | NOT        |
# • –––––––––– • –––––––––– • –––––––––– •
# –––––––––––––––––––––––––––––––– bitwise
# • –––––––––– • –––––––––– • –––––––––– •
# | &          | |          | ~          |
# • –––––––––– • –––––––––– • –––––––––– •
# | <<         | >>         |            |
# • –––––––––– • –––––––––– • –––––––––– •
# ––––––––––––––––––––––––––––– assignment
# • –––––––––– •
# | =          |
# • –––––––––– •
```

```
result = db.query("SELECT 2 + 3   AS sum;")
result = db.query("SELECT 5 - 2   AS difference;")
result = db.query("SELECT 4 * 3   AS product;")
result = db.query("SELECT 10 / 2  AS division;")
result = db.query("SELECT 10 % 3  AS modulus;")
result = db.query("SELECT 2 ^ 3   AS exponent;")
result = db.query("SELECT 5 == 5  AS equal_test;")
result = db.query("SELECT 5 != 3  AS not_equal;")
result = db.query("SELECT 10 > 5  AS greater;")
result = db.query("SELECT 3 < 5   AS lesser;")
result = db.query("SELECT 5 >= 5  AS greater_equal;")
result = db.query("SELECT 3 <= 4  AS lesser_equal;")


result = db.query("SELECT true AND false AS and_test;")
result = db.query("SELECT true OR false AS or_test;")
result = db.query("SELECT NOT true AS not_test;")

result = db.query("SELECT 5 & 3  AS bitwise_and;")
result = db.query("SELECT 5 | 3  AS bitwise_or;")
result = db.query("SELECT ~5     AS bitwise_not;")
result = db.query("SELECT 2 << 1 AS left_shift;")
result = db.query("SELECT 8 >> 2 AS right_shift;")

result = db.query("LET $x = 10; RETURN $x;")
result = db.query("SELECT * FROM users WHERE age >= 18 AND country = 'USA';")
result = db.query("UPDATE users SET balance = balance + 100 WHERE id = 'user:123';")
result = db.query("SELECT * FROM permissions WHERE flags & 1 = 1;")
```

```
# KEYWORDS –––––––––––––––––––––––––––––––
# • –––––––––– • –––––––––– • –––––––––– •
# | SELECT     | CREATE     | UPDATE     |
# • –––––––––– • –––––––––– • –––––––––– •
# | DELETE     | RELATE     | RETURN     |
# • –––––––––– • –––––––––– • –––––––––– •
# | LET        | DEFINE     | REMOVE     |
# • –––––––––– • –––––––––– • –––––––––– •
# | INFO       | INFER      | IMPORT     |
# • –––––––––– • –––––––––– • –––––––––– •
# | EXPORT     | INSERT     | FETCH      |
# • –––––––––– • –––––––––– • –––––––––– •
# | WHERE      | GROUP      | ORDER      |
# • –––––––––– • –––––––––– • –––––––––– •
# | LIMIT      | START      | SPLIT      |
# • –––––––––– • –––––––––– • –––––––––– •
# | PERMISSIONS| TABLE      | NAMESPACE  |
# • –––––––––– • –––––––––– • –––––––––– •
# | INDEX      | FUNCTION   | ANALYZE    |
# • –––––––––– • –––––––––– • –––––––––– •
# | RETURNING  | BREAK      | CONTINUE   |
# • –––––––––– • –––––––––– • –––––––––– •


# SELECT      : Retrieves data from a table
# CREATE      : Inserts new records into a table
# UPDATE      : Modifies existing records in a table
# DELETE      : Removes records from a table
# RELATE      : Establishes relationships between records
# RETURN      : Outputs a value or result
# LET         : Defines a variable for use in queries
# DEFINE      : Creates database elements like fields, indexes, or tables
# REMOVE      : Deletes database elements like fields, indexes, or tables
# INFO        : Retrieves metadata about the database
# INSERT      : Adds new records into a table (similar to CREATE)
# FETCH       : Expands related records when querying data
# WHERE       : Filters query results based on conditions
# GROUP       : Groups query results based on a field
# ORDER       : Sorts query results
# LIMIT       : Restricts the number of records in a query result
# START       : Specifies the starting point in a query result set (pagination)
# SPLIT       : Splits a result into multiple parts
# PERMISSIONS : Defines access control rules for tables or fields
# TABLE       : Specifies or defines a database table
# NAMESPACE   : Defines a logical grouping of tables
# INDEX       : Creates an index for optimizing queries
# FUNCTION    : Defines a custom function for use in queries
# ANALYZE     : Runs optimizations and statistics collection on tables
# USE         : Selects a namespace and database for subsequent operations
# SEARCH      : Used in index definition for full-text search capabilities
# CONTENT     : Used in CREATE statements to specify record content
# UPSERT      : Creates or updates records in a table
# MERGE       : Modifies records in a table
# EXPLAIN     : Provides query execution plan information

```


```
from python import Python
def main():
    surrealdb = Python.import_module("surrealdb")
    db = surrealdb.Surreal("ws://localhost:8000/rpc")
main()


# General SQL-Like Keywords
# ALL: Selects all values, including duplicates
# AND: Combines multiple conditions in a query
# ANY: Checks if any value in a list matches a condition
# AS: Assigns an alias to a table or column
# ASC: Sorts query results in ascending order
# ASSERT: Enforces a condition before executing a query
# BY: Used in GROUP BY to group results by a column
# COLLATE: Specifies text sorting rules (collation)
# CREATE: Creates a new record in the database
# DELETE: Removes records from a table
# DESC: Sorts query results in descending order
# DISTINCT: Returns unique values, removing duplicates
# DROP: Deletes a database, table, or index
# ELSE: Specifies an alternative condition in IF statements
# END: Marks the end of a control flow block
# EXPLAIN: Provides query execution details for optimization
# FALSE: Represents a boolean false value
# FETCH: Retrieves related records from another table
# FOR: Iterates over a set of values
# FROM: Specifies the table to query data from
# GROUP: Used with BY to group query results
# HAVING: Filters grouped results in an aggregate query
# IF: Begins a conditional statement
# IN: Checks if a value exists in a list
# INDEX: Creates or interacts with an index
# INFO: Returns database metadata
# INSERT: Adds new records into a table
# INTO: Specifies where to insert new records
# IS: Checks equality or null status
# JOIN: Combines rows from multiple tables
# KILL: Terminates a running query
# LET: Declares and assigns a variable
# LIMIT: Restricts the number of results returned
# MATCH: Performs full-text search operations
# MERGE: Merges new data into an existing record
# NAMESPACE: Specifies the database namespace
# NULL: Represents an undefined or missing value
# OFFSET: Skips a number of records before returning results
# ON: Specifies a condition for joins and constraints
# OR: Combines multiple conditions in a query
# ORDER: Sorts query results
# PARTIAL: Defines a partial record update
# PATCH: Partially modifies a record using JSON patches
# READ: Reads data from a table
# RECORD: Represents a single row or document in a table
# RELATE: Establishes relationships between records
# REMOVE: Deletes a specific field or property from a record
# RETURN: Defines what a query should output
# SELECT: Queries data from a table
# SET: Assigns values to fields in an update query
# SESSION: Represents a user's session state
# SIGNIN: Authenticates a user
# SIGNUP: Registers a new user
# SPLIT: Splits a string into parts
# START: Begins a process, such as a transaction
# TABLE: Specifies a table name
# THEN: Specifies the next action after a condition is met
# THROW: Raises an error or exception
# TIMEOUT: Sets a query execution limit
# TO: Defines a target in an operation
# TRANSACTION: Groups multiple queries into a single atomic operation
# TRUE: Represents a boolean true value
# UNSET: Removes a variable from a record
# UPDATE: Modifies existing records in a table
# USE: Switches between namespaces and databases
# VALUES: Specifies values to be inserted
# WHERE: Filters query results based on conditions
# WITH: Defines additional query options

# Control Flow & Logic
# BREAK: Exits a loop early
# CONTINUE: Skips the current loop iteration and moves to the next
# ELSE: Defines an alternative branch in an IF statement
# END: Marks the end of a control structure
# FOR: Iterates over a collection of values
# IF: Begins a conditional statement
# LET: Declares a local variable
# RETURN: Specifies the result of a function or query
# THEN: Specifies the action to take if a condition is met
# THROW: Raises an error or exception
# TIMEOUT: Specifies a query execution limit
# WHILE: Repeats a block of code while a condition is true

# Authentication & Security
# AUTHENTICATE: Verifies a user's credentials
# INVALIDATE: Revokes authentication for a session
# PERMISSIONS: Defines access control rules
# ROLE: Assigns a user role
# ROOT: Refers to the highest permission level
# SIGNIN: Logs a user into the database
# SIGNUP: Registers a new user
# TOKEN: Represents an authentication token

# Database & Table Management
# DATABASE: Represents a database
# DROP: Deletes a database, table, or index
# INFO: Retrieves metadata about the database
# KILL: Terminates a running query or process
# LIVE: Starts a live query that listens for updates
# NAMESPACE: Defines a database namespace
# RELATE: Creates a relationship between records
# TABLE: Represents a collection of records
# USE: Switches between databases or namespaces

# Data Operations & Functions
# AFTER: Specifies an action to take after an event
# ANALYZE: Optimizes a database for performance
# BEFORE: Specifies an action to take before an event
# CHANGEFEED: Listens for real-time changes in a table
# COLLATE: Defines text sorting rules
# CREATE: Inserts a new record into a table
# DELETE: Removes records from a table
# DISTINCT: Filters duplicate values
# EVENT: Defines a trigger-based event
# FETCH: Retrieves related records
# GROUP: Aggregates query results
# INSERT: Adds new records to a table
# MERGE: Updates an existing record with new data
# PATCH: Applies partial modifications to a record
# TRANSACTION: Groups multiple queries into a single operation
# UPDATE: Modifies existing records
```
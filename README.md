# company-database-project
This is a beginner-level SQL project where I designed and created a simple company database. It models a company's operations with tables for employees, branches, clients, suppliers, and their relationships. This project demonstrates my foundational SQL skills, including database creation, data manipulation, and query execution.

## Project Overview
The database contains the following key components:
- **Employee Table**: Stores employee details, salaries, supervisors, and branch assignments.
- **Branch Table:** Manages branch information, including managers and start dates.
- **Client Table:** Tracks client data and their assigned branches.
- **Works_With Table**:Logs sales transactions between employees and clients.
- **Branch Supplier Table:** Stores suppliers for each branch and supply types.

## **Files**
- `create_tables.sql`: Script to create the database schema and define relationships between tables.
- `insert_data.sql`: Script to populate the tables with sample data.
- `queries.sql`: Includes sample queries to extract meaningful insights from the database, such as sales totals, employee-branch relationships, and client transactions.

## **How to Use**
1. Open your SQL environment (e.g., MySQL, PostgreSQL, or SQLite).
2. Run `create_tables.sql` to create the database schema.
3. Run `insert_data.sql` to populate the database with sample data.
4. Execute the queries in `queries.sql` to explore the relationships and data insights.

## **Key Features**
- Relational database design with foreign keys and constraints to maintain data integrity.
- Example queries to showcase relationships and practical use cases for business operations.
- Use of cascading `ON DELETE` actions to handle dependent data.

## **Learning Objectives**
- Practice creating and managing relational databases.
- Understand primary keys, foreign keys, and their role in database design.
- Write basic to intermediate SQL queries to analyze and interact with data.

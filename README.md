This project demonstrates SQL operations for creating, populating, and querying relational databases. The use case revolves around managing sales, customers, orders, and Nobel Prize data. Below are the key features and operations:

Features
Database Creation

Database Name: Vinay
Tables and Data

Sales1: Salesperson details (ID, Name, City, Commission).
Sales2: Customer details (ID, Name, City, Grade, Salesperson ID).
Nobel: Nobel Prize details (Year, Subject, Winner, Country, Category).
Orders: Order details (Order No, Amount, Date, Customer ID, Salesperson ID).
Data Operations

Insert initial data into all tables.
Update specific fields (e.g., modify commissions, change city values).
Perform advanced filtering with WHERE, LIKE, and range conditions.
Joins and Relationships

Find salespeople and customers in the same/different cities.
Identify customers handled by specific salespeople.
Combine data across tables with inner and outer joins.
Aggregate Queries

Calculate total and average order amounts.
Count unique salespeople and customers.
Complex Filters

Filter Nobel Prize winners by year, subject, and name patterns.
Retrieve salespeople with commissions exceeding specific thresholds.

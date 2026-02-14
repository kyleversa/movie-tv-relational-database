# Entertainment Relational Database – Oracle SQL Schema Design

This project implements a relational database for managing movies, TV shows, actors, directors, genres, users, and reviews.

The focus of this project was designing a normalized schema (3NF), enforcing referential integrity, and writing practical SQL queries that demonstrate how structured data can support reporting and analysis.

---

## Overview

The database includes:

- Fully normalized relational schema
- Primary and foreign key relationships
- Constraint-based business rule enforcement
- Sample dataset for testing and validation
- Multi-table analytical queries using joins and aggregation

The goal was not just to store data, but to design a clean and scalable structure that reflects real-world media relationships.

---

## Project Files

**01_schema.sql**  
Creates tables, defines relationships, and enforces constraints.

**02_seed_data.sql**  
Inserts structured sample data.

**03_queries.sql**  
Contains analytical queries demonstrating joins, grouping, and filtering.

**ERD.pdf**  
Entity Relationship Diagram of the database design.

**design-report.pdf**  
Explains normalization decisions and structural trade-offs.

**project-presentation.pdf**  
Summary of database design and implementation.

---

## How to Run

1. Execute `01_schema.sql`
2. Execute `02_seed_data.sql`
3. Run queries from `03_queries.sql`

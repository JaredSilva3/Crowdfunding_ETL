# Crowdfunding Data Analysis Project

## Overview
This project focuses on building an ETL pipeline for crowdfunding data. This includes extracting data from Excel, transforming it for analysis, and loading it into a SQL database. The project demonstrates data manipulation, categorization, and preparation for detailed analytics on crowdfunding campaigns.

## Group Project Members
- Samson
- Jared
- Paul

## Files Included
- **ETL_Mini_Project_JSilva_SWeiser_PKeller.ipynb**: Notebook for the ETL process.
- **category.csv**: Categories derived from campaign data.
- **subcategory.csv**: Subcategories derived from campaign data.
- **campaign.csv**: Compiled campaign data.
- **contacts.csv**: Contact information related to campaigns.
- **crowdfunding_db_schema.sql**: The SQL schema used to create the database.
- **schema diagram.png**: A diagram illustrating the database structure and relationships.

## Database
- **Schema and Setup**: Database schema provided in SQL format to set up the tables.
- **Data Upload**: Data from CSV files uploaded to respective tables in the database.

## Importing Schema
1. **Run the SQL schema**: Execute the `schema.sql` file in PostgreSQL to create the database schema.
2. **Import the CSV files**: Import each CSV file into the appropriate PostgreSQL table, with `campaign.csv` being imported last, as it depends on data from other tables.


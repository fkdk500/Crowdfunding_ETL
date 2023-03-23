# Crowdfunding_ETL
Background:
It is ETL mini project with aim of demonstrating:
    -Extract:Read the data, often from multiple sources(for this specfic case the source is excel file).
    -Transform:Clean and structure the data in desired form.
    -Load: Write the data into a database for storage

Aim
It is to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After you transform the data, you'll create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, you’ll upload the CSV file data into a Postgres database.

Instructions
The instructions for this mini project are divided into the following subsections:
    -Create the Category and Subcategory DataFrames
    -Create the Campaign DataFrame
    -Create the Contacts DataFrame
    -Create the Crowdfunding Database

1. Create the Category and Subcategory DataFrames
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

    -A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
    -A "category" column that contains only the category titles
    -Show category DataFrame in the required format:
    -Export the category DataFrame as category.csv and save it to your GitHub repository.
    -Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame having the expected columns

2. Create the Campaign DataFrame
Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame as per the requested columns then
Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.

3. Create the Contacts DataFrame
Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data:

    Option 1: Use Python dictionary methods.
    Option 2: Use regular expressions.

In our case we chose Option 1, complete the following steps:

    -Import the contacts.xlsx file into a DataFrame.
    -Iterate through the DataFrame, converting each row to a dictionary.
    -Iterate through each dictionary, doing the following:
    -Extract the dictionary values from the keys by using a Python list comprehension.
    -Add the values for each row to a new list.
    -Create a new DataFrame that contains the extracted data.
    -Split each "name" column value into a first and last name, and place each in a new column.
    -Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

4. Create the Crowdfunding Database
    -Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..
    -Use the information from the ERD to create a table schema for each CSV file.
    -Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
    -Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
    -Create a new Postgres database, named crowdfunding_db.
    -Using the database schema, create the tables in the correct order to handle the foreign keys.
    -Verify the table creation by running a SELECT statement for each table.
    -Import each CSV file into its corresponding SQL table.
    -Verify that each table has the correct data by running a SELECT statement for each.






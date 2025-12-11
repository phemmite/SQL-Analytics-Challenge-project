Project Overview

This project explores customer behavior for a marketing analytics scenario using the Brazilian E-Commerce Public Dataset by Olist.
The goal is to demonstrate intermediate to advanced SQL skills while answering key business questions that help marketing teams make data-driven decisions.

The project covers:

Customer order patterns

Product category revenue analysis

High-value customer identification

Cohort-based retention analysis

🎯 Objectives

Apply joins, CTEs, window functions, and aggregate queries

Perform cohort analysis for monthly retention

Generate insights that directly support marketing and business intelligence decisions

Document SQL queries clearly with business explanations

🗂 Dataset Used

Brazilian E-Commerce Public Dataset by Olist
Available on Kaggle
Contains multiple relational tables:

Customers

Orders

Order Items

Products

Sellers

Reviews

🧠 Business Questions Answered
1️⃣ Month-over-Month Order Growth

Analyzes order volume trends to uncover seasonality and demand cycles.

2️⃣ Top 5 Product Categories by Revenue

Helps identify the highest-performing categories to guide marketing investment.

3️⃣ Top 10 Customers by Total Spending

Highlights high-value customers for loyalty programs and targeted campaigns.

4️⃣ Cohort Analysis — Monthly Customer Retention

Groups users based on their first purchase month and tracks retention over time.

💻 SQL Features Demonstrated

INNER JOIN, LEFT JOIN, and multi-table joins

Window functions

ROW_NUMBER(), RANK(), LAG(), SUM() OVER()

Common Table Expressions (CTEs)

Aggregation & grouping

Date functions

Cohort retention logic

📈 Documentation

A complementary Notion page includes:

Each query

Output tables

Visualizations

Insights

Actionable recommendations for the marketing team

🚀 How to Use This Project

Download or clone the repo

Import the dataset into your database (PostgreSQL/MySQL/BigQuery/SQLite)

Run the queries in queries.sql

Review the insights and visualizations

Adapt or improve the SQL for your analytics needs

🔧 Technologies Used

SQL (PostgreSQL recommended)

Notion (Documentation)

Kaggle Dataset

Any SQL IDE (DBeaver, BigQuery Console, pgAdmin, etc.)

📌 Future Enhancements

Build a dashboard in Power BI or Tableau

Create automated cohort charts

Convert SQL pipeline into dbt models

Add Python notebooks for deeper analysis

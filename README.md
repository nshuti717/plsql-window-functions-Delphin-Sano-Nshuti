# plsql-window-functions-Delphin-Sano-Nshuti
Oracle PL/SQL Window Functions Analysis
# PL/SQL Window Functions - Mountain Coffee Shop Analysis

## Project Overview
This repository contains a comprehensive analysis of Mountain Coffee Shop's business data using PL/SQL window functions in Oracle Database Express Edition.

## Business Problem
Mountain Coffee, located in Kigali, Rwanda, requires advanced analytics to understand product performance, customer behavior, and sales trends. The analysis addresses inventory optimization, customer segmentation, and revenue forecasting challenges.

### Business Context
Mountain Coffee is a specialty coffee shop located in Kigali, Rwanda, managing its daily operations including product inventory, customer transactions, and sales analysis. The shop needs better insights into their business performance to make data-driven decisions about inventory management and customer service improvements.

### Data Challenge
The coffee shop struggles to identify which products perform best during different periods, understand customer purchasing patterns, and track sales trends over time. Management needs analytical capabilities to compare performance across different time periods and segment customers based on their purchasing behavior.

### Expected Outcome
The analysis will provide actionable insights including identification of top-selling products, customer purchase frequency patterns, revenue trends with running totals, and customer segmentation for targeted marketing campaigns. This will enable better inventory planning and personalized customer engagement strategies.

## Database Schema

![ER Diagram](./diagram/mountain_coffee_er_diagram.svg)

The solution implements three interconnected tables:
- **customers**: Stores customer information including registration details (customer_id as PK)
- **products**: Contains product catalog with pricing and inventory data (product_id as PK)
- **transactions**: Records all sales transactions linking customers and products (with FKs)

## Success Criteria

1. **Top 5 products per month** → Using RANK() to optimize inventory
2. **Running monthly sales totals** → Using SUM() OVER() to track revenue accumulation
3. **Month-over-month growth** → Using LAG()/LEAD() to identify trends
4. **Customer quartiles** → Using NTILE(4) for customer segmentation
5. **3-month moving averages** → Using AVG() OVER() to smooth seasonal variations

## Implementation Highlights

### 1. Ranking Functions
- Identified top 5 products per month using RANK()
- Analyzed customer value with DENSE_RANK() and PERCENT_RANK()
- Determined product popularity within categories using ROW_NUMBER()

**Key Finding**: Rwandan Coffee and Cappuccino consistently rank in top 3 products

### 2. Aggregate Window Functions
- Calculated running sales totals for cash flow analysis
- Generated 3-month moving averages to identify trends
- Compared ROWS vs RANGE frame specifications

**Key Finding**: Running totals show steady growth with peaks during mid-month periods

### 3. Navigation Functions
- Computed month-over-month growth rates using LAG()
- Analyzed customer purchase intervals
- Tracked price changes with LEAD()

**Key Finding**: 15-20% average month-over-month growth in revenue

### 4. Distribution Functions
- Segmented customers into quartiles using NTILE(4)
- Evaluated product performance distribution with CUME_DIST()
- Created customer segments for targeted marketing

**Key Finding**: Top 25% of customers generate 40% of total revenue

## Key Insights

### Descriptive Analysis
The analysis revealed that Rwandan Coffee and Cappuccino consistently rank as top products, with peak sales occurring during mid-month periods. Customer purchase patterns show regular weekly visits from premium segment customers. The average transaction value is 4,500 RWF with most customers making 2-3 purchases per month.

### Diagnostic Analysis
Growth patterns indicate a 15-20% month-over-month increase in revenue, primarily driven by returning customers. Premium customers (top quartile) contribute 40% of total revenue despite representing only 25% of the customer base. Product performance varies by category, with hot beverages accounting for 60% of sales.

### Prescriptive Recommendations
1. **Inventory Management**: Increase stock for top 5 products by 20% during peak periods (mid-month)
2. **Customer Retention**: Implement loyalty program for premium segment with personalized offers
3. **Product Strategy**: Introduce promotional campaigns for underperforming products during slow periods
4. **Operational Efficiency**: Schedule additional staff during identified peak transaction times (10-11 AM, 3-4 PM)
5. **Marketing Focus**: Target occasional customers (Quartile 3) with incentives to increase visit frequency

## Technical Implementation
- **Database**: Oracle Database Express Edition 11g
- **Development Environment**: SQL*Plus command line interface
- **Window Functions Used**: RANK(), DENSE_RANK(), ROW_NUMBER(), SUM() OVER(), AVG() OVER(), LAG(), LEAD(), NTILE(), CUME_DIST()
- **Version Control**: Git and GitHub
- **Documentation**: Markdown format

## File Structure
/diagram          - Entity Relationship Diagram
/screenshots      - Query execution screenshots organized by function type
/sql-scripts      - SQL implementation files

01_create_tables.sql
02_insert_data.sql
03_window_functions.sql
README.md         - Project documentation
## How to Run
1. Connect to Oracle Database Express Edition
2. Execute scripts in order: create tables → insert data → run window functions
3. Each query demonstrates specific window function capabilities
4. Results can be verified through screenshots in the repository

## References
1. Oracle Database SQL Language Reference - Window Functions
2. Oracle PL/SQL Programming Guide (Feuerstein & Pribyl)
3. Database Systems: The Complete Book by Garcia-Molina
4. SQL Performance Explained by Markus Winand
5. Oracle Documentation - Analytic Functions
6. Beginning Oracle SQL by Lex de Haan
7. Pro Oracle SQL by Kerry Osborne
8. Expert Oracle SQL by Tony Hasler
9. Oracle Database 12c SQL by Jason Price
10. Practical Oracle SQL by Kim Berg Hansen

## Academic Integrity Statement
All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation.

## Author
Delphin Sano Nshuti  
ID: 27903
Course: Database Development with PL/SQL (INSY 8311)  
Instructor: Eric Maniraguha  
Submission Date: September 29, 2025

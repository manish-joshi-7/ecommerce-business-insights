# E-Commerce Sales Analysis

## Project Overview

This project analyzes e-commerce sales data to understand sales performance, product performance, customer behavior, and order trends.

The project follows a complete data analyst workflow:

Raw Data → Excel Data Cleaning → MySQL Analysis → Power BI Dashboard → Business Insights

The main goal of the project is to transform raw e-commerce data into useful business insights that can help a company understand its sales and customers better.

---

## Business Problem

An e-commerce company has a large amount of order, product, and customer data.

The company wants to understand:

- How much revenue is being generated?
- How are sales changing over time?
- Which products and categories perform best?
- Which customers generate the most revenue?
- Which sales channels perform best?
- Which customer segments contribute the most sales?
- What is the average order value?
- What percentage of orders are returned?
- Which cities generate the most revenue?
- Are there any products with no orders?

The analysis aims to answer these questions using Excel, MySQL, and Power BI.

---

## Dataset

The project contains three main tables:

### Orders Table

Contains information about customer orders.

Important columns include:

- order_id
- product_id
- customer_id
- quantity
- unit_price
- discount_amount
- discount_percent
- order_date
- shipping_date
- order_status
- sales_channel
- payment_method
- shipping_method
- warehouse
- and other order-related fields

### Products Table

Contains information about products.

Important columns include:

- product_id
- product_name
- product_category
- manufacturing_city
- size
- color
- SKU
- and other product-related fields

### Customers Table

Contains information about customers.

Important columns include:

- customer_id
- customer_name
- city
- customer_segment
- and other customer-related fields

---

## Tools Used

### Microsoft Excel

Used for initial data cleaning and preparation.

### MySQL

Used for exploratory data analysis and answering business questions.

### Power BI

Used for data modeling, DAX calculations, interactive visualizations, and dashboard creation.

---

## Data Cleaning

The raw dataset was cleaned before performing analysis.

The cleaning process included:

- Removing duplicate records
- Handling blank and missing values
- Checking NULL values
- Correcting spelling inconsistencies
- Standardizing categorical values
- Checking data types
- Removing unnecessary columns
- Checking invalid values
- Validating date fields
- Checking relationships between tables

Example:

The sales channel value `MobileApp` was standardized to `Mobile App` to maintain consistency.

---

## SQL Analysis

After cleaning the data, the dataset was imported into MySQL for exploratory data analysis.

The analysis included:

### Sales Analysis

- Total revenue
- Total orders
- Total quantity sold
- Average order value
- Monthly revenue
- Revenue by category
- Revenue by sales channel

### Product Analysis

- Top products by revenue
- Top products by quantity
- Revenue by product category
- Lowest-performing products
- Products with no orders

### Customer Analysis

- Top customers by revenue
- Revenue by customer segment
- Revenue by city

### Order Analysis

- Order status distribution
- Returned orders
- Order trends over time
- Shipping and payment analysis

SQL concepts used include:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- JOIN
- Aggregate functions
- CASE statements
- Date functions
- CTEs

---

## Revenue Calculation

Revenue was not directly available as a column in the original dataset.

Therefore, revenue was calculated using:

Revenue = Quantity × Unit Price − Discount Amount

This calculated value was used as the main revenue metric for the analysis.

---

## Power BI Dashboard

The final dashboard contains three pages.

### Page 1: Executive Overview

This page provides an overall view of business performance.

Key metrics and visuals include:

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value
- Monthly Revenue Trend
- Revenue by Product Category
- Revenue by Sales Channel
- Order Status
- Top Products

---

### Page 2: Product and Customer Analysis

This page focuses on product performance and customer behavior.

Key analysis includes:

- Revenue by Product Category
- Product performance
- Customer segment analysis
- Top customers
- Revenue by city
-  Returned orders
- Shipping performance
- Sales channel performance
- Product and customer comparisons
- Quantity and discount analysis

---

## Power BI Measures

Several DAX measures were created to support the dashboard.

Examples include:

- Total Revenue
- Total Orders
- Total Quantity
- Total Customers
- Average Order Value
- Total Discount
- Returned Orders
- Previous Month Revenue
- Revenue Growth
- Revenue Growth Percentage

A Date Table was also created to support time-based analysis such as monthly revenue and revenue growth.

---

## Key Business Questions

The dashboard was designed to answer questions such as:

1. What is the total revenue generated?
2. How many orders were placed?
3. What is the average order value?
4. Which product categories generate the most revenue?
5. Which products are the top revenue contributors?
6. Which customers generate the most revenue?
7. Which customer segment performs best?
8. Which sales channel generates the most revenue?
9. Which cities contribute the most sales?
10. How does revenue change over time?
11. What is the order return rate?
12. Which products have no orders?

---

## Key Insights

The final insights from the dashboard include:

- [Add your actual finding here]
- [Add your actual finding here]
- [Add your actual finding here]
- [Add your actual finding here]
- [Add your actual finding here]

These insights were obtained from the cleaned data, SQL analysis, and Power BI dashboard.

---

## Business Recommendations

Based on the analysis, the company can:

- Focus on high-performing product categories.
- Identify opportunities to improve low-performing products.
- Focus marketing efforts on high-value customer segments.
- Improve sales channels that have lower performance.
- Investigate products with no or very few orders.
- Monitor returned and cancelled orders.
- Use customer and product performance data to improve sales strategies.

The recommendations should be updated based on the actual findings from the analysis.

---
## Project Structure

```text
ecommerce-business-insights/
│
├── Data Reporting/
│   └── Reporting Excel File.xlsx
│
├── Dataset/
│   │
│   ├── CSV Dataset/
│   │   ├── customers.csv
│   │   ├── orders.csv
│   │   └── products.csv
│   │
│   ├── Cleaned Data/
│   │   ├── customers_clean_data.xlsx
│   │   ├── orders_clean_data.xlsx
│   │   └── products_clean_data.xlsx
│   │
│   └── Raw Data/
│       ├── customers_raw_data.xlsx
│       ├── orders_raw_data.xlsx
│       └── products_raw_data.xlsx
│
├── EDA SQL/
│   └── Exploratory_Data_Analysis_My_SQL.sql
│
├── Power BI Dashboards/
│   └── eCommerce_Dashboard.pbix
│
├── Dashboard1.png
└── Dashboard2.png

🛒 Zepto E-Commerce Sales & Inventory Analysis Using SQL--

📌 Project Description

This project focuses on analyzing Zepto e-commerce product and inventory data using PostgreSQL to uncover actionable insights related to product pricing, discounts, inventory availability, product categories, and potential revenue.

The project follows a practical Data Analyst workflow, starting from understanding and preparing raw data, followed by data quality checks, exploratory analysis, data cleaning, and business-focused SQL analysis.

## The analysis helps answer important business questions such as:

1.Which products provide the highest discounts?
2.Which categories have the strongest discount strategies?
3.Which expensive products are currently unavailable?
4.Which categories have the highest potential revenue?
5.Which products offer better value based on price per gram?
6.How much inventory weight is held across different categories?


🎯 Project Objectives

Analyze product pricing and discount patterns
Evaluate inventory availability and stock levels
Identify high-value and high-discount products
Estimate potential revenue across product categories
Analyze product value using price-per-gram metrics
Understand inventory distribution across categories
Generate business recommendations from SQL-based findings

📁 Dataset Overview

The dataset contains Zepto product catalog and inventory information, where each row represents a product/SKU listed in the e-commerce catalog.

The dataset contains information related to products, categories, pricing, discounts, inventory quantities, stock availability, and product weights.

📊 Key Columns
Column	Description
sku_id	Unique identifier for each product/SKU
name	Product name
category	Product category
mrp	Maximum Retail Price
discountPercent	Discount percentage applied to MRP
discountedSellingPrice	Final selling price after discount
availableQuantity	Available inventory quantity
weightInGms	Product weight in grams
outOfStock	Indicates whether the product is out of stock
quantity	Quantity/pack size associated with the product

The dataset contains multiple SKUs for some products, which can occur because products may be offered in different pack sizes, weights, or variations.

🔧 Project Workflow
1️⃣ Database & Table Setup
Created a PostgreSQL database and table for the Zepto dataset.
Defined appropriate data types for product, pricing, inventory, and availability fields.
Imported the raw CSV dataset into PostgreSQL using pgAdmin 4.
2️⃣ Data Exploration

Performed initial exploratory analysis to understand the structure and quality of the dataset.

Key checks included:

Total number of records
Sample records and column structure
Unique product categories
Duplicate product/SKU patterns
Available vs. out-of-stock products
Missing/null values
Zero or invalid pricing values

3️⃣ Data Cleaning

Prepared the dataset for analysis by:

Identifying records with invalid or zero MRP values
Identifying records with zero discounted selling prices
Removing unsuitable records from the analysis
Converting price values from paise to Indian Rupees
Validating product, pricing, and inventory fields
4️⃣ SQL Business Analysis

Used PostgreSQL to answer business-focused questions involving:

Product discounts
Category-level pricing
Inventory availability
Revenue estimation
Price-per-gram analysis
Product weight segmentation
Stock availability
Inventory weight distribution
5️⃣ Insight Generation

The SQL results were interpreted from a business perspective to identify opportunities related to pricing, promotions, inventory management, and product assortment.

📊 Key Business Insights
💰 1. High-Discount Products

The analysis identified products offering the highest discount percentages, helping highlight products that can attract price-sensitive customers and potentially improve promotional performance.

📦 2. Out-of-Stock High-Value Products

Several products with relatively high MRP were found to be out of stock, indicating potential missed sales opportunities.

🏷️ 3. Category-Level Discount Patterns

Different product categories demonstrate varying levels of average discount, allowing the business to identify categories where promotional pricing is particularly aggressive.

💵 4. Potential Revenue by Category

Estimated revenue analysis highlights categories with greater potential contribution based on selling price and available inventory.

🛍️ 5. Value-for-Money Products

Price-per-gram analysis helps identify products that provide greater quantity relative to their selling price, which can be useful for comparing products within similar categories.

⚖️ 6. Product Weight Segmentation

Products were categorized into different weight segments to understand the distribution of small, medium, and bulk products across the catalog.

📦 7. Inventory Weight Distribution

Category-level inventory weight analysis helps identify which product categories account for the largest share of the total physical inventory.

💡 Business Recommendations
1. Improve Inventory Availability

Prioritize restocking high-MRP and high-demand products that are currently out of stock to minimize potential lost sales.

2. Optimize Discount Strategies

Use category-level discount analysis to identify where discounts are generating value and where promotional spending could be reduced.

3. Focus on High-Potential Categories

Categories with stronger estimated revenue potential should receive greater attention in inventory planning, promotions, and product availability.

4. Promote Value-Oriented Products

Products with competitive price-per-gram ratios can be highlighted through value-focused promotions and recommendations.

5. Improve Inventory Planning

Inventory weight and availability analysis can help optimize warehouse capacity and improve stock allocation across product categories.

6. Review High-MRP Products With Low Discounts

Expensive products with minimal discounts could be reviewed to determine whether targeted promotions or pricing adjustments could improve their sales performance.

🛠️ Tools Used

PostgreSQL | pgAdmin 4 | SQL | Data Analysis

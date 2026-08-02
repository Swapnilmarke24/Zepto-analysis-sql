🛒 Zepto E-Commerce Sales & Inventory Analysis | PostgreSQL

📌 Project Description

SQL-based analysis of Zepto e-commerce product data to identify insights related to pricing, discounts, inventory, stock availability, and revenue potential.

Objective: Use PostgreSQL to analyze product and inventory data and provide business recommendations for pricing, promotions, and inventory management.

📁 Dataset Overview

The dataset contains product/SKU-level information including:

Product: SKU ID, Name, Category
Pricing: MRP, Selling Price, Discount %
Inventory: Available Quantity, Out-of-Stock Status
Product Details: Weight, Pack Quantity

The dataset contains multiple SKUs for products across different categories and package sizes.

🔧 Project Workflow

1. Database Setup

Created PostgreSQL table
Imported CSV using pgAdmin 4

2. Data Exploration

Checked records, categories, duplicates, and null values
Analyzed stock availability

3. Data Cleaning

Removed invalid/zero pricing records
Converted prices from paise to ₹
Validated pricing and inventory fields

4. SQL Analysis

Product & category analysis
Discount analysis
Inventory & stock analysis
Revenue estimation
Price-per-gram analysis
Inventory weight analysis.

📊 Key Business Insights

Identified top products by discount percentage.
Found high-MRP products that were out of stock, indicating potential lost-sales opportunities.
Compared average discounts across categories to identify aggressive promotional segments.
Estimated potential revenue by category using selling price and available inventory.
Used price-per-gram to identify value-for-money products.
Analyzed inventory weight by category to understand stock distribution.

💡 Business Recommendations
Prioritize restocking high-value products that are out of stock.
Optimize discounts based on category-level pricing and promotional performance.
Focus inventory and promotions on high-revenue-potential categories.
Promote products offering better price-to-weight value.
Review high-MRP products with low discounts to improve price competitiveness.
Use inventory analysis to improve stock allocation and planning.

🛠️ Tools Used
PostgreSQL | pgAdmin 4 | SQL | Data Analysis

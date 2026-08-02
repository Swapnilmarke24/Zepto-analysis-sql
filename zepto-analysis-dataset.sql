/* ============================================================
   ZEPTO E-COMMERCE DATA ANALYSIS
   Database: PostgreSQL
   Tool: pgAdmin 4
   ============================================================ */


/* ============================================================
   1. DATABASE TABLE SETUP
   ============================================================ */

CREATE TABLE zepto (
    sku_id SERIAL PRIMARY KEY,
    category VARCHAR(120),
    product_name VARCHAR(150) NOT NULL,
    mrp NUMERIC(10,2),
    discount_percent NUMERIC(5,2),
    available_quantity INTEGER,
    selling_price NUMERIC(10,2),
    weight_grams INTEGER,
    is_out_of_stock BOOLEAN,
    pack_quantity INTEGER
);


/* ============================================================
   2. DATA EXPLORATION
   ============================================================ */

-- Total number of records
SELECT COUNT(*) AS total_products
FROM zepto;


-- Preview the dataset
SELECT *
FROM zepto
LIMIT 10;


-- Check for missing values
SELECT *
FROM zepto
WHERE category IS NULL
   OR product_name IS NULL
   OR mrp IS NULL
   OR discount_percent IS NULL
   OR available_quantity IS NULL
   OR selling_price IS NULL
   OR weight_grams IS NULL
   OR is_out_of_stock IS NULL
   OR pack_quantity IS NULL;


-- List all product categories
SELECT DISTINCT category
FROM zepto
ORDER BY category;


-- Compare products by stock availability
SELECT
    is_out_of_stock,
    COUNT(*) AS product_count
FROM zepto
GROUP BY is_out_of_stock
ORDER BY is_out_of_stock;


-- Identify products appearing across multiple SKUs
SELECT
    product_name,
    COUNT(*) AS sku_count
FROM zepto
GROUP BY product_name
HAVING COUNT(*) > 1
ORDER BY sku_count DESC;


/* ============================================================
   3. DATA CLEANING
   ============================================================ */

-- Identify records with invalid pricing
SELECT *
FROM zepto
WHERE mrp <= 0
   OR selling_price <= 0;


-- Remove records with invalid MRP
DELETE FROM zepto
WHERE mrp <= 0;


-- Convert prices from paise to Indian Rupees
UPDATE zepto
SET
    mrp = mrp / 100.0,
    selling_price = selling_price / 100.0;


-- Verify converted prices
SELECT
    mrp,
    selling_price
FROM zepto
LIMIT 10;


/* ============================================================
   4. BUSINESS ANALYSIS
   ============================================================ */


-- Q1. Which 10 products provide the highest discounts?

SELECT
    product_name,
    mrp,
    discount_percent
FROM zepto
ORDER BY discount_percent DESC
LIMIT 10;


-- Q2. Which high-priced products are currently unavailable?

SELECT
    product_name,
    category,
    mrp
FROM zepto
WHERE is_out_of_stock = TRUE
  AND mrp > 300
ORDER BY mrp DESC;


-- Q3. What is the estimated inventory value by category?

SELECT
    category,
    ROUND(
        SUM(selling_price * available_quantity),
        2
    ) AS estimated_inventory_value
FROM zepto
GROUP BY category
ORDER BY estimated_inventory_value DESC;


-- Q4. Which expensive products have relatively low discounts?

SELECT
    product_name,
    category,
    mrp,
    discount_percent
FROM zepto
WHERE mrp > 500
  AND discount_percent < 10
ORDER BY mrp DESC;


-- Q5. Which five categories provide the highest average discount?

SELECT
    category,
    ROUND(AVG(discount_percent), 2) AS average_discount
FROM zepto
GROUP BY category
ORDER BY average_discount DESC
LIMIT 5;


-- Q6. Which products offer the best price per gram?

SELECT
    product_name,
    weight_grams,
    selling_price,
    ROUND(
        selling_price / NULLIF(weight_grams, 0),
        2
    ) AS price_per_gram
FROM zepto
WHERE weight_grams >= 100
ORDER BY price_per_gram ASC
LIMIT 20;


-- Q7. How are products distributed by package size?

SELECT
    product_name,
    weight_grams,
    CASE
        WHEN weight_grams < 1000 THEN 'Small'
        WHEN weight_grams < 5000 THEN 'Medium'
        ELSE 'Bulk'
    END AS package_segment
FROM zepto
ORDER BY weight_grams;


-- Q8. Which categories hold the largest total inventory weight?

SELECT
    category,
    ROUND(
        SUM(weight_grams * available_quantity) / 1000.0,
        2
    ) AS total_inventory_kg
FROM zepto
GROUP BY category
ORDER BY total_inventory_kg DESC;

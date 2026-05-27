Here is a professional GitHub README for your SQL Data Cleaning project.

# E-Commerce Data Cleaning Using MySQL

## Project Overview

This project focuses on cleaning and transforming an E-Commerce dataset using MySQL.
The dataset contains customer purchase information including transactions, discounts, product categories, locations, and payment methods.

The objective of this project is to:

* Remove duplicate records
* Handle missing values
* Standardize text data
* Create new analytical columns
* Prepare clean data for visualization and dashboard creation

---

# Dataset Information

The dataset contains the following columns:

* CID
* TID
* Gender
* Age Group
* Purchase Date
* Product Category
* Discount Availed
* Discount Name
* Discount Amount (INR)
* Gross Amount
* Net Amount
* Purchase Method
* Location

---

# Technologies Used

* MySQL
* VS Code
* CSV Dataset

---

# Data Cleaning Steps Performed

## 1. Removed Null Customer IDs

```sql
DELETE FROM `e commerce`
WHERE `CID` IS NULL;
```

---

## 2. Removed Duplicate Transactions

```sql
DELETE FROM `e commerce`
WHERE `CID` IN (
    SELECT `CID`
    FROM (
        SELECT `CID`,
               ROW_NUMBER() OVER (
                   PARTITION BY `TID`
                   ORDER BY `CID`
               ) AS RN
        FROM `e commerce`
    ) T
    WHERE RN > 1
);
```

---

## 3. Checked Duplicate Transaction IDs

```sql
SELECT `TID`, COUNT(*)
FROM `e commerce`
GROUP BY `TID`
HAVING COUNT(*) > 1;
```

---

## 4. Checked Missing Net Amount Values

```sql
SELECT COUNT(*)
FROM `e commerce`
WHERE `Net Amount` IS NULL;
```

---

## 5. Filled Missing Discount Names

```sql
UPDATE `e commerce`
SET `Discount Name` = 'NO COUPON'
WHERE `Discount Name` IS NULL
   OR `Discount Name` = '';
```

---

## 6. Standardized Location Names

```sql
UPDATE `e commerce`
SET `Location` = UPPER(`Location`);
```

---

# Feature Engineering

## Added Purchase Month Column

```sql
ALTER TABLE `e commerce`
ADD `Purchase Month` VARCHAR(20);
```

```sql
UPDATE `e commerce`
SET `Purchase Month` =
MONTHNAME(
    STR_TO_DATE(
        `Purchase Date`,
        '%d/%m/%Y %H:%i:%s'
    )
);
```

---

## Added Spending Category Column

```sql
ALTER TABLE `e commerce`
ADD `Spending Category` VARCHAR(20);
```

```sql
UPDATE `e commerce`
SET `Spending Category` =
CASE
    WHEN `Net Amount` >= 5000 THEN 'High'
    WHEN `Net Amount` >= 2000 THEN 'Medium'
    ELSE 'Low'
END;
```

---

## Added Discount Percentage Column

```sql
ALTER TABLE `e commerce`
ADD `Discount Percentage` DECIMAL(5,2);
```

```sql
UPDATE `e commerce`
SET `Discount Percentage` =
(`Discount Amount (INR)` / `Gross Amount`) * 100;
```

---

# Created Clean Dataset

```sql
CREATE TABLE `CLEAN DATA` AS
SELECT * FROM `e commerce`;
```

---

# Final Output

The cleaned dataset is ready for:

* Power BI Dashboards
* Data Visualization
* SQL Analysis
* Business Insights
* Customer Segmentation

---

# Possible Dashboard Insights

* Monthly Sales Trends
* Top Product Categories
* High Spending Customers
* Discount Analysis
* Location-wise Revenue
* Payment Method Analysis
* Customer Segmentation

---

# Author

Vihan Ratnam

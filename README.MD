You can use the following **complete GitHub README.md** for all three internship tasks.

# 📊 ApexPlanet Data Analytics Internship

## E-Commerce Data Analytics Project

This repository contains the completed tasks for the **Data Analytics Internship at ApexPlanet Software Pvt. Ltd.** The project focuses on cleaning, analyzing, and visualizing an E-Commerce dataset using SQL, Excel, and Power BI.

---

# 📝 Task 1: Data Cleaning & Preparation

## 🎯 Objective

To prepare the raw e-commerce dataset for analysis by identifying and correcting data quality issues.

## 🛠 Tools Used

* MySQL
* SQL
* Excel

## Activities Performed

### 1. Removed Duplicate Records

Used Transaction ID to identify and remove duplicate entries.

### 2. Handled Missing Values

* Replaced missing Coupon values with **"No Coupon"**
* Checked for null values across important columns.

### 3. Standardized Data

* Trimmed extra spaces.
* Standardized text formatting.
* Corrected inconsistent values.

### 4. Verified Data Types

Ensured:

* Dates were stored correctly.
* Revenue and Amount columns used numeric data types.

### 5. Exported Clean Dataset

Generated a clean dataset for further analysis and dashboard development.

## Deliverables

* SQL Cleaning Script
* Cleaned Dataset (Excel/CSV)
* Data Dictionary

---

# 📖 Data Dictionary

| Column Name      | Description                   |
| ---------------- | ----------------------------- |
| Transaction_ID   | Unique transaction identifier |
| Customer_ID      | Unique customer identifier    |
| Customer_Name    | Customer name                 |
| Age              | Customer age                  |
| Gender           | Customer gender               |
| Product_Category | Purchased product category    |
| Product_Name     | Product purchased             |
| Quantity         | Number of items purchased     |
| Gross_Amount     | Total amount before discounts |
| Discount         | Discount applied              |
| Net_Amount       | Final amount after discount   |
| Revenue          | Revenue generated             |
| Purchase_Method  | Payment method used           |
| Coupon_Name      | Coupon applied                |
| Purchase_Date    | Date of purchase              |
| Location         | Customer city/location        |

---

# 📊 Task 2: Exploratory Data Analysis (EDA)

## 🎯 Objective

Analyze the cleaned dataset and uncover meaningful business insights.

## 🛠 Tools Used

* SQL
* Excel
* Pivot Tables
* Charts

## Analysis Performed

### Revenue Analysis

* Total Revenue Generated
* Average Revenue Per Order

### Customer Analysis

* Revenue by Gender
* Revenue by Age Group

### Product Analysis

* Revenue by Product Category
* Gross Amount by Category

### Payment Analysis

* Revenue by Purchase Method

### Location Analysis

* Revenue by City

### Discount Analysis

* Product Sales by Discount Campaign

## Key Findings

### Revenue

* Total Revenue: ₹158.18 Million
* Average Revenue: ₹2.88K

### Product Performance

* Electronics generated the highest revenue.
* Clothing ranked second.

### Customer Behavior

* Revenue contribution was balanced across genders.
* Medium-spending customers generated the highest sales.

### Payment Trends

* Credit Card transactions generated the highest revenue.

### Location Insights

* Mumbai contributed the highest revenue among major cities.

## Deliverables

* SQL Queries
* EDA Report
* Business Insights Summary

---

# 📈 Task 3: Interactive Dashboard Development

## 🎯 Objective

Develop a fully interactive Power BI dashboard for business decision-making.

## 🛠 Tools Used

* Power BI Desktop
* Excel
* DAX
* Data Modeling

---

# Dashboard Overview

## 📄 Page 1: Executive Summary Dashboard

### KPIs

* Total Revenue: ₹158.18M
* Average Revenue: ₹2.88K
* Total Orders: 55K
* Total Customers: 29.07K

### Dashboard Screenshot

```md
![Executive Summary Dashboard](Screenshots/Executive_Summary.png)
```

### Key Visuals

* Revenue Trend by Month
* Revenue by Product Category
* Gross Amount by Product Category
* Revenue by Gender
* Revenue by Purchase Method

### Filters

* Year
* Age Group
* Product Category
* Purchase Method

---

## 📄 Page 2: Customer & Product Dashboard

### Dashboard Screenshot

```md
![Customer Product Dashboard](Screenshots/Customer_Product_Dashboard.png)
```

### Key Visuals

* Revenue by Spending Category
* Count of Transactions by Gender
* Revenue by Location
* Product Category by Discount Name
* Transaction Count by Product Category

### Filters

* Year
* Age Group
* Product Category
* Purchase Method

---

# 📊 Dashboard Insights

## Revenue Insights

* Electronics generated the highest revenue.
* Clothing was the second-best performing category.
* Revenue fluctuated across months.

## Customer Insights

* Medium-spending customers contributed the highest revenue.
* Customer distribution was balanced across genders.

## Payment Insights

* Credit Card was the most preferred payment method.
* Digital payments dominated transactions.

## Product Insights

* Electronics recorded the highest transaction count.
* Most purchases were made without coupons.

---

# 💡 Business Recommendations

### Increase Revenue

* Promote Electronics and Clothing through targeted campaigns.
* Launch offers during low-performing months.

### Improve Customer Retention

* Introduce loyalty programs.
* Create personalized offers based on spending patterns.

### Enhance Payment Adoption

* Offer cashback for digital payments.
* Improve low-performing payment channels.

### Product Strategy

* Maintain inventory for high-demand categories.
* Expand successful product segments.

---

## 👨‍💻 Internship Details

**Company:** ApexPlanet Software Pvt. Ltd.

**Domain:** Data Analytics

**Tools:** SQL, Excel, Power BI

**Project:** E-Commerce Data Analytics Dashboard

**Outcome:** Successfully completed Data Cleaning, Exploratory Data Analysis (EDA), and Interactive Dashboard Development tasks with actionable business insights. 🚀

👨‍💻 Author

Vihan Ratnam




Based on the ApexPlanet PDF you uploaded, here is a simple explanation of **Task 1** and **Task 2**.

# Task 1: Data Immersion & Wrangling

**Timeline:** 10 Days 

## Objective

Understand the dataset, identify data quality issues, clean the data, and prepare it for analysis. 

## What You Need to Do

### Step 1: Data Familiarization

* Open the dataset.
* Understand every column.
* Create a **Data Dictionary**.

Example:

| Column Name | Description           | Data Type |
| ----------- | --------------------- | --------- |
| CID         | Customer ID           | Integer   |
| TID         | Transaction ID        | Integer   |
| Gender      | Customer Gender       | Text      |
| Net Amount  | Final Purchase Amount | Decimal   |

---

### Step 2: Data Quality Assessment

Check for:

* Missing Values
* Duplicate Records
* Extra Spaces
* Incorrect Data Types
* Outliers

Examples:

```sql
SELECT COUNT(*) FROM sales_data;
```

```sql
SELECT *
FROM sales_data
WHERE Gender IS NULL;
```

---

### Step 3: Data Cleaning

Perform:

#### Remove Duplicates

```sql
DELETE FROM sales_data
WHERE ...;
```

#### Handle Missing Values

```sql
UPDATE sales_data
SET `Discount Name`='No Discount'
WHERE `Discount Name` IS NULL;
```

#### Trim Extra Spaces

```sql
UPDATE sales_data
SET Gender = TRIM(Gender);
```

#### Standardize Formats

* Date format
* Text format

---

### Step 4: Feature Engineering

Create new columns.

Example:

```sql
ALTER TABLE sales_data
ADD COLUMN Purchase_Month VARCHAR(20);
```

Populate it:

```sql
UPDATE sales_data
SET Purchase_Month = MONTHNAME(Purchase_Date);
```

You already created columns like:

* Purchase Month
* Discount Percentage
* Spending Category

These count as feature engineering.

---

### Deliverables for Task 1

GitHub Repository:

* Data Dictionary
* SQL Cleaning Script
* Cleaned Dataset

LinkedIn Video:

* 3–5 minutes
* Explain data issues and cleaning process 

---

# Task 2: Exploratory Data Analysis (EDA) & Business Intelligence

**Timeline:** 14 Days 

## Objective

Analyze the cleaned dataset, discover insights, answer business questions using SQL, and create a dashboard. 

---

## Step 1: Descriptive Statistics

Calculate:

### Total Revenue

```sql
SELECT SUM(`Net Amount`)
FROM `clean data`;
```

### Average Order Value

```sql
SELECT AVG(`Net Amount`)
FROM `clean data`;
```

### Highest Order

```sql
SELECT MAX(`Net Amount`)
FROM `clean data`;
```

### Lowest Order

```sql
SELECT MIN(`Net Amount`)
FROM `clean data`;
```

### Total Orders

```sql
SELECT COUNT(*)
FROM `clean data`;
```

---

## Step 2: Univariate Analysis

Analyze one variable at a time.

### Product Category Analysis

```sql
SELECT `Product Category`,
COUNT(*) AS Orders
FROM `clean data`
GROUP BY `Product Category`;
```

Create:

* Bar Chart

---

### Gender Analysis

```sql
SELECT Gender,
COUNT(*) AS Customers
FROM `clean data`
GROUP BY Gender;
```

Create:

* Pie Chart

---

### Purchase Method Analysis

```sql
SELECT `Purchase Method`,
COUNT(*) AS Orders
FROM `clean data`
GROUP BY `Purchase Method`;
```

Create:

* Pie Chart

---

## Step 3: Business Questions (SQL)

Example questions:

### Top 5 Categories by Revenue

```sql
SELECT `Product Category`,
SUM(`Net Amount`) AS Revenue
FROM `clean data`
GROUP BY `Product Category`
ORDER BY Revenue DESC
LIMIT 5;
```

### Monthly Revenue Trend

```sql
SELECT `Purchase Month`,
SUM(`Net Amount`) AS Revenue
FROM `clean data`
GROUP BY `Purchase Month`;
```

### Revenue by Location

```sql
SELECT Location,
SUM(`Net Amount`) AS Revenue
FROM `clean data`
GROUP BY Location;
```

### Revenue by Gender

```sql
SELECT Gender,
SUM(`Net Amount`) AS Revenue
FROM `clean data`
GROUP BY Gender;
```

---

## Step 4: Dashboard

Create in Excel.

Include:

### KPI Cards

* Total Revenue
* Total Orders
* Average Order Value
* Total Discount

### Charts

* Revenue by Category
* Monthly Revenue Trend
* Revenue by Location
* Gender Distribution
* Payment Method Distribution

A static Excel dashboard is enough for Task 2. 

---

# Final Submission

### Task 1 GitHub

* Data Dictionary
* SQL Cleaning Script
* Cleaned Dataset

### Task 2 GitHub

* EDA Report
* SQL Queries
* Query Results
* Dashboard.xlsx

### LinkedIn Videos

* Task 1: 2–3 min
* Task 2: 2–3 min

Since you've already cleaned the dataset and created columns like **Purchase Month**, **Discount Percentage**, and **Spending Category**, Task 1 is largely complete. Your focus now should be on the SQL analysis, charts, and dashboard required for Task 2.

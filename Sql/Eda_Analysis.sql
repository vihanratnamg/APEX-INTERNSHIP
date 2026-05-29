use internship;

CREATE TABLE `Eda Analysis`
select * from `clean data`;

SELECT * FROM `eda analysis`;

SELECT COUNT (*) FROM `eda analysis`;

SELECT SUM(`net amount`) as `Total Revenue`
from `eda analysis`;

SELECT AVG(`net amount`) as `Average order value`
from  `eda analysis`;
 
SELECT MAX(`net amount`) as `Higher Amount`
from `eda analysis`;

SELECT MIN(`net amount`) as `Lower Amount` 
from `eda analysis`;

SELECT sum(`Discount Amount (INR)`) as `Total discount` 
from `eda analysis`;

CREATE TABLE `Summary statistics` (
    Metric VARCHAR(100),
    Value DECIMAL(20,0)
);

INSERT INTO `summary statistics`
Values
( 'Total Revenue',158177239.558526),
('Average order value',2875.94981015503),
('Higher Amount',8394.8256),
('Lower Amount',-351.119775);

SELECT
`Product Category`,
COUNT(*) AS Orders
FROM `eda analysis`
GROUP BY `Product Category`
ORDER BY Orders DESC;

SELECT
Gender,
COUNT(*) AS Customers
FROM `eda analysis`
GROUP BY Gender;

SELECT
`Purchase Method`,
COUNT(*) AS Orders
FROM `eda analysis`
GROUP BY `Purchase Method`
ORDER BY Orders DESC;

SELECT
Location,
COUNT(*) AS Orders
FROM `eda analysis`
GROUP BY Location
ORDER BY Orders DESC;

SELECT
`Spending Category`,
COUNT(*) AS Customers
FROM `eda analysis`
GROUP BY `Spending Category`;


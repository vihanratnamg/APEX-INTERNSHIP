
 SELECT
`Product Category`,
SUM(`Net Amount`) AS Revenue
FROM `eda analysis`
GROUP BY `Product Category`
ORDER BY Revenue DESC
LIMIT 5;

SELECT
`Purchase Month`,
SUM(`Net Amount`) AS Revenue
FROM `eda analysis`
GROUP BY `Purchase Month`;

SELECT
Gender,
SUM(`Net Amount`) AS Revenue
FROM `eda analysis`
GROUP BY Gender;

SELECT
Location,
SUM(`Net Amount`) AS Revenue
FROM `eda analysis`
GROUP BY Location
ORDER BY Revenue DESC;


SELECT
`Purchase Method`,
COUNT(*) AS Orders
FROM `eda analysis`
GROUP BY `Purchase Method`
ORDER BY Orders DESC;

SELECT
`Product Category`,
AVG(`Discount Parcentage`) AS Avg_Discount
FROM `eda analysis`
GROUP BY `Product Category`;


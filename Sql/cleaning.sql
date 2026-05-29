use internship;
SELECT * FROM `e commerce`

DELETE from `e commerce`
WHERE `CID` is NULL

DELETE FROM `e commerce`
WHERE `CID` IN (
    SELECT `CID` FROM(
        SELECT `CID`, ROW_NUMBER() OVER (
            PARTITION BY `TID`
            ORDER BY `CID` )
            AS RN FROM `e commerce`)
            T WHERE RN >1);

SELECT tid,  COUNT (*) FROM `e commerce`
GROUP BY `TID`
HAVING COUNT (*) > 1;

SELECT COUNT (*) FROM `e commerce`
WHERE `Net Amount` IS NULL;

UPDATE `e commerce`
SET `Discount Name` = 'NO COUPON'
WHERE `Discount NAME` IS NULL OR `Discount NAME`= '' ;

UPDATE `e commerce`
SET `Location` = UPPER(`Location`);

ALTER TABLE `e commerce`
ADD `Purchase Month`VARCHAR (20);

UPDATE `e commerce`
SET `Purchase Month` = MONTHNAME(STR_TO_DATE(`Purchase Date`,'%d/%m/%Y %H:%i:%s'));


ALTER Table `e commerce`
add `Spending category` VARCHAR(20);

UPDATE `e commerce`
set `Spending Category` =
case 
    when `net amount`>= 5000 then 'High'
    when `net amount`>= 2000 then 'Medium'
    else 'Low'
    end;

ALTER TABLE `e commerce`
add `Discount parcentage` DECIMAL(5,2);

UPDATE `e commerce`
SET `Discount parcentage` = (`Discount Amount (INR)`/`Gross Amount`)*100;


CREATE TABLE `CLEAN DATA` AS 
SELECT * FROM `e commerce`;

SELECT * FROM `clean data`;

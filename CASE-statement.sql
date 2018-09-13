-- CASE WHEN statement
SELECT ORDER_ID, TOTAL_AMOUNT,
CASE
WHEN TOTAL_AMOUNT <= 100 THEN 'Low'
WHEN TOTAL_AMOUNT < 1000 THEN 'Medium'
ELSE 'High'
END
FROM sales;

-- Alias name to column
SELECT SALES_DATE AS 'Sales Date', TOTAL_AMOUNT AS 'Total Amount',
CASE
WHEN TOTAL_AMOUNT <= 100 THEN 'Low'
WHEN TOTAL_AMOUNT < 1000 THEN 'Medium'
ELSE 'High'
END AS 'Total Bracket'
FROM sales;

-- Select DISTINCT rows from the table: give the unique value
SELECT DISTINCT ORDER_ID FROM sales -- don't repeat ORDER_ID numbers, nut jus give me unique ORDER_ID from sales table

-- DISTINCT based on multiples columns
SELECT DISTINCT OSALES_DATA, ORDER_ID FROM sales

-- PSEUDO Columns
SELECT SYSDATE, USER FROM DUAL
SELECT ROWNUM, SALES_DATE, ORDER_ID FROM sales





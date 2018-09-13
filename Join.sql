-- Why we store data in multiple tables?
-- In the INVENTORY1 database, used as example, the table SALES has the variables PRODUCT_NAME and PRODUCT_CATEGORY with names repeted.
-- This means that more storage is needed.
-- In order to avoid that duplications, one solution is to split data in two tables: PRODUCT_NAME table and PRODUCT_CATEGORY table.
-- At this point PRODUCT_ID variable, common in both tables, can be used to join them.

-- INNER JOIN
-- We start exploring INNER JOIN:
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales inner join product
on sales.product_id = product.product_id;
-- Alternative Syntax of INNER JOIN (lot of people use this)
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales, product
where sales.product_id = product.product_id;

-- LEFT OUTER JOIN
-- This type of join returns all the rows left hand table specified in the on condition and only those rows from
-- the other table where joined field are equal.
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales left outer join product
on sales.product_id = product.product_id;
-- Alternative Syntax of LEFT OUTER JOIN
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales, product
where sales.product_id = product.product_id (+);

-- RIGHT OUTER JOIN
-- This type of join returns all the rows right hand table specified in the on condition and only those rows from
-- the other table where joined field are equal.
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales left outer join product
on sales.product_id = product.product_id;
-- Alternative Syntax of RIGHT OUTER JOIN
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales, product
where sales.product_id (+) = product.product_id;

-- FULL OUTER JOIN
-- Full outer join returns all rows from left and right hand table
-- with nulls in place where the join condition is not met.
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales full outer join product
on sales.product_id = product.product_id;
-- Alternative Syntax of full outer join is not supported.

-- CROSS JOIN
-- A cross join is a join operator othat produce cartesian product of two tables.
-- It takes one row and for that one row it shows all the combinations in the product table
select sales.sales_date, sales.order_id, product.product_name, sales.product_id, product.product_id
from sales cross join product;

-- NATURAL JOIN
-- A natural join is a join operator that creates an implicit join clause for you based
-- on the common columns in the two tables being joined.
-- We have not to mentin the prefix, the query automatically looks for the tables.
select sales_date, order_id, product_id, product_name
from sales natural join product;

-- JOIN a 3th table
select sales.sales_date, sales.order_id, product.product_name,
salesperson.job_title
from sales inner join product
on sales.product_id = product.product_id
left outer join salesperson
on sales.salesperson_id = salesperson.salesperson_id;

-- JOIN a 4th table
-- 1st table: sales
-- 2nd table: product
-- 3th table: salesperson
-- 4th table: customer
select sales.sales_date, sales.order_id, product.product_name,
salesperson.job_title,
customer.first_name, customer.last_name
from sales inner join product
on sales.product_id = product.product_id
left outer join salesperson
on sales.salesperson_id = salesperson.salesperson_id
full outer join customer
on sales.customer_id = customer.customer_id;

-- Adding filters to JOIN
-- Filter at the join level
select sales.sales_date, sales.order_id, product.product_name,
salesperson.job_title,
customer.first_name, customer.last_name
from sales inner join product
on sales.product_id = product.product_id
left outer join salesperson
on sales.salesperson_id = salesperson.salesperson_id
and salesperson.job_title = 'East Manager' -- filter only East Manager
full outer join customer
on sales.customer_id = customer.customer_id;

-- Filter after the join is completed
select sales.sales_date, sales.order_id, product.product_name,
salesperson.job_title,
customer.first_name, customer.last_name
from sales inner join product
on sales.product_id = product.product_id
left outer join salesperson -- return all elements of left table and only elements of the other table that meet the join condition
on sales.salesperson_id = salesperson.salesperson_id
full outer join customer --return all elements of both left and right tables
on sales.customer_id = customer.customer_id
where salesperson.job_title = 'East Manager'; -- filter only East Manager





















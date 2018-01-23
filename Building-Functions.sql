-- Building Functions
-- Dual table is a pseudo table, not a real table.
-- The Dual table has only one column named DUMMY:
desc dual
-- The Dual table is used because the relational model does not have a placeholder for
-- calculations because every command must be a SQL statement
-- Examples:
select user, sysdate from dual; -- dual is used as placeholder for retrieving data from database



-- WHAT ARE FUNCTIONS
-- Functions are self contained modules of code that accomplish a specific task

--Numeric building functions
-- Numeric building functions are used to perform mathematical calculation on numbers and also help in numeric manipulation.
-- There are many built in functions in Oracle.
select round(49.45964,2) from dual;
select ceil(48.99) from dual;
select power(16,2) from dual;

-- Characters building functions
select upper('john') from dual;
select lower('john') from dual;
select length('john') from dual;
select substr('JOHN',3,2) from dual;
select decode(30,10,'ten', 20,'twenty', 30,'thirty') from dual; -- return the value matching the condition

-- Date building functions
-- months_between(): returns the number of months between rwo dates
select months_between('01-JAN-18', '01-GEN-14') from dual;
-- add_months(): adds months to a date
select add_months('01-JAN-15', 13) from dual;
-- last_day(): returns the last day of the month
select last_day('01-JAN-15') from dual;
-- next_day(): returns the next day mentioned in the argument
select next_day('01-JAN-15','saturday') from dual; -- which is next saturday after 01-JAN-15




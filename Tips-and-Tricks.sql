-- Tips & trikcs
-- This file contains some workaround with pl\sql

-- How to eliminate special characters in a string i.e. ~!@#$%^&*()_+=\{}[]:”;’<,>./?
select regexp_replace('abc+de)fg','\+|\)') from dual;

-- How to remove nul character in a string
replace(str, chr(0));


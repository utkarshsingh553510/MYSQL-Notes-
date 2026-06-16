# 1) SELECT STATEMENT
# select statement ka kaam hota hai sb kuch select krna i.e All Rows and Columns 
SELECT *
FROM employee_demographics;

# but ye method shi nhi hai because bahut baar aisa hota hai ki system me bahut sare databases hote hai to hume batana padega ki hum kon sa database use kr rhe hai it is an effective way here is the example 
SELECT * 
FROM parks_and_recreation.employee_demographics;

# let say hame bss first name chahiye from the employee_demographics table then 

SELECT first_name
FROM parks_and_recreation.employee_demographics;

# let say hame first name, last name and date of birth bhi chahiye ek saath from the employee_demographics then 

SELECT first_name,last_name,birth_date
FROM parks_and_recreation.employee_demographics;

# let say hum chahte hai ki sbke age me +10 ho jaye 

SELECT employee_id,
first_name,
last_name,
age,
age + 10,
(age + 10) *10
FROM parks_and_recreation.employee_demographics;

# Ye jo hua hai ye hua hai because it follows the rule of PEMDAS
# PEMDAS- parenthesis,exponent,multiplication,division,addition,subtractiomn
# sbse jyada priority Parenthesis ki then exponent then multiplicaion then division then addition then subtraction

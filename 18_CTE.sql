-- CTE-> Common Table Expression 
-- CTE ko hum hamesha use karte hai WITH ke saath 

--  CTE ek temporary Table ki tarah hota hai jise hum WITH clause se naam dete hai aur query ko easy and readable banane ke liye use krte hai 
-- Syntax->  WITH cte_name( optional column_name) AS (
--           CTE query defination 
--           SELECT....
-- )
-- MA=ain column refrencing the CTE 
-- SELECT .....
-- FROM cte_name
-- WHERE ...;

WITH CTE_Example AS (
SELECT employee_id,first_name,last_name,salary
FROM employee_salary 
WHERE salary>50000
)
SELECT *
FROM CTE_Example;
# isne ek naya cte_eaxmple naam ka table bana diya and uske andar pura data store kr diya iska fayada tab hota hai jab query badi ho 


# multiple cte tables example 

WITH CTE_Example AS (
SELECT employee_id,gender,age,birth_date
FROM parks_and_recreation.employee_demographics
WHERE birth_date>'1985-01-01'
),
CTE_Example2 AS (
SELECT employee_id,first_name,last_name,salary 
FROM parks_and_recreation.employee_salary
WHERE salary>50000
) 
SELECT * 
FROM CTE_Example
JOIN CTE_Example2
    ON CTE_Example.employee_id = CTE_Example2.employee_id;
    
WITH CTE_example AS (
SELECT salary, avg(salary),MIN(salary),MAX(salary)
FROM employee_salary
GROUP BY salary
)
SELECT *
FROM CTE_Example ;
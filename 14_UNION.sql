-- UNIONS 
# Unions bhi table ko aapas me add krta hai bss common chizo ko ek baar hi show krta hai yaani duplicates ko remove kar deta hai
# UNION bhi DISTINCT ki tarah duplicates ko remove kr deta hai 

SELECT *
FROM employee_demographics
UNION
SELECT * 
FROM employee_salary;
# unoin hoke jb niche add hota hai 

SELECT age, gender
FROM employee_demographics
UNION 
SELECT first_name,last_name
FROM employee_salary;
# Sab niche dega ye but unprofessional manner me 


SELECT first_name,last_name 
FROM employee_demographics
UNION 
SELECT first_name,last_name
FROM employee_salary;

# agar hum UNION ALL kr dete hai to ye duplicates ko remove nhi krta hai 

SELECT first_name,last_name 
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary;

# UNION USE CASE 
# ab hum union ki madad se dekhenge ki jo employee aged hai and jo employee jyada salary le rha hai taaki Layoff me Unki JON safe rhe  
# yha hum old man naam ka title de rhe hai Un Male ko jinki age 40 se jyada hai and iss title lable ko humne Lable naam diya hai i.e Column name

-- V.V.V.I

SELECT first_name, last_name,'Old Man' AS Lable
FROM employee_demographics
WHERE age>40 AND gender="Male"
UNION 
SELECT first_name, last_name,'Old Lady' AS Lable
FROM employee_demographics
WHERE age>40 AND gender="Female"
UNION 
SELECT first_name, last_name,'High Paying Employee' AS Lable
FROM employee_salary
WHERE salary>70000
ORDER BY first_name,last_name;

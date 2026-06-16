-- CASE STATEMENTS 
# CASE statement bikul if-else statement ki tarah hota hai 
# yha par hum IF ki jagah CASE likhenge and ELSE ki jagah THEN likhenge and last me jha if-else ko khatam krna hoga wha pr hum END likhenge 

SELECT first_name, last_name,age,
CASE 
     WHEN age<=30 THEN 'YOUNG'
     WHEN age BETWEEN 31 AND 50 THEN 'Old'
     WHEN age>= 50 THEN 'Very old'
END AS Age_Bracket
FROM employee_demographics;

-- Q-> Pay Increase bonus
-- < 50000 = 5% raise
-- >= 5000 = 7% Raise 
-- Finance = 10% Bonus 

SELECT first_name,last_name,salary,
CASE 
    WHEN salary<50000 THEN salary+(salary*0.05)
    WHEN salary >=50000 THEN salary+(salary*0.07)
 END AS NEW_salary,
 CASE 
     WHEN dept_id=6 THEN salary*0.10
END AS bonus
FROM employee_salary;
 # finance deppartment department  department_id 6 me aata hai
 
 
-- SUBQUERIES -> Subqueries ka matlab hota hai query ke andar query ise hum Nested Query bhi kehte hai
-- Pahele andar wali query run hoti hai then bahar wali run hoti hai 
-- sbse pahle andar wali query run kara ke dekho agar wo run ho rhi hai then bahar jo bacha hai ya required hai use likho

SELECT * 
FROM employee_demographics
WHERE employee_id IN
                     (SELECT employee_id
                     FROM employee_salary
                     WHERE dept_id=1);
# ye sabse pahele saare employee_id ko employee_salary table me se nikalega jaha jaha dept_id=1 hoga phir ye employee demographics me se saare employee_id ko nikalega and jo match hoga un sbko return kr dega 
 
 -- Average salary pata kro 
 
 SELECT first_name,last_name,salary,employee_id,
 (SELECT avg(salary)
 FROM employee_salary) AS avg_salary
 FROM employee_salary;
 # sabse pahele isme avg salary niklega employee_salary table me se then first_name and last_name niklega employee_salary table me se 
 
 -- Q1-> Un saare employees ki saari detail nikalo jinki salary overall average salary se jyada hai 
 
SELECT first_name,last_name,salary
FROM employee_salary
WHERE salary>
(SELECT avg(salary)
FROM employee_salary);

-- Q2 -> employee_demographics se un employees ka data nikalo jo employee_salary table me exist krte hai 

SELECT * 
FROM employee_demographics 
WHERE employee_id IN
(SELECT employee_id FROM employee_salary);

-- Q3 Jiski salary sbse jyada hai uska naam and salary dikhao

SELECT first_name,last_name,salary
FROM employee_salary
WHERE salary IN 
				(SELECT MAX(salary)
				FROM employee_salary);
 
 -- Q4 -> un employees ka pura data nikalo jinki age overall average age se kam hai
 
 SELECT *
 FROM employee_demographics
 WHERE age <
 (SELECT avg(age)
 FROM employee_demographics);
 
 SELECT sum(salary)
 FROM employee_salary;
  
  
  
  
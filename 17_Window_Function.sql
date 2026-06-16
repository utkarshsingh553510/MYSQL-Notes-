-- V.V.V.I 
-- WINDOW FUNCTION -> Window function bina row ko combine kiye unke upar calculations perform krta hai like ranking,sum,lead,lag etc. 
-- Window function is defined by OVER() Clause 
-- WINDOWS FUNCTIONS ARE-
 
 -- 1) OVER() -> ye window function ko define krta hai and batata hai ki calculations rows par perform hongi alter		
 -- 2) PARTITION BY
 -- 3) ROW_Number()
 -- 4) RANK()
 -- 5) DENSE_RANK()
 -- 6) LAG()
 -- 7) LEAD()
 -- 8) First_value()
 -- 9) Last_value(()
 -- 10) NTILE()
 -- 11) SUM() over()
 -- 12) COUNT() over()
 -- 13) MIN() OVER()
 -- 14) MAX() OVER()
 -- 15) Avg over()
 
 -- OVER() sabke saath lagta hai 
 
 
SELECT sum(salary)
FROM employee_salary;
# ye hume total salary nikal kr de dega saare employees ki salary ko milakar and output me bss ek row return krega

SELECT sum(salary) OVER() AS sum_salary
FROM employee_salary;
# yha lagaya humne window fuction and ye har ek row ke liye output return krega jitni rows hamare table me hai

SELECT employee_id,first_name,last_name,salary,sum(salary) OVER(order by employee_id) AS sum_salary
FROM employee_salary;
# isse hame pata chl jayega ki total salary 687000 kaise aa rhi hai ye salary me next salary ko jod rha hai and output de rha hai

# Window function me hame generally group by nhi lagana padta instead of using group by we use partition by 
-- 1) PARTITION BY -> ye bhi data ko groups me divide krta hai but group by ki tarah unhe merge nhi krta 

SELECT gender,avg(age)
FROM employee_demographics
GROUP BY gender; 
# GROUP BY lagane pr hume bssa male and female ki avg age pata chl gyi 

SELECT gender,AVG(age) OVER(partition by gender)
FROM employee_demographics;
# ye saare male and female ki average age bata dega and agar hum partition nhi lagayenge to ye ek average age male and female sbme daal dega 

SELECT first_name,last_name,salary,avg(salary) OVER(partition by salary ORDER BY salary )
FROM employee_salary;
# ye har ek employee ki average salary return kr dega and humne order by bhi kr diya hai ASC order me  

-- 2) ROW NUMBER()-> ye har ek row ko unique serial number deta hai

SELECT first_name,last_name, salary, row_number() over()
FROM employee_salary;
# ye row number unique hoga matlab repeat nhi hoga but agar hum partition laga de to ye repeat hoga like 

SELECT first_name,last_name, gender,row_number() over(partition by gender)
FROM employee_demographics;
# isse male ke liye 1 se start hoga and  then female ke liye bhi 1 se start hoga 

-- 3) RANK () -> ye bhi ranking deta hai but hume yha batana hoga ki ranking hum kis basis pr kr rhe hai
-- let say humne salary ke basis prrank kiya to same salary pr same rank let say 1st salary 250000 hai and 2nd salary 25000 hai to ye rank dega dono ko 1st and jb dono ko 1st rank mil gya to 2nd rank skip ho jayega and ab next salary let say 30000 hai to ye use rank dega 3 na ki 2 because 2 skip ho gya 
 SELECT first_name,last_name,salary, row_number() over() AS Row_no,
 rank() over(ORDER BY salary) AS Rank_no
 FROM employee_salary;
 
 -- 4) DENSE_RANK()-> ye ek order ko follow krke rank krti hai matlab let say humne likha ki ORDER BY SALARY DESC to ye salary ko desc order me krke phir dense rank dega yaani let say sabse top par 90000 salary hai and humne desc order lagaya tha to ye jaha jaah salary 90000 se kam hongi unhe rank krega 1,2,3,4... but agar 90000 se jyada ki salary dikh gyi to phir se 1 
 
 SELECT first_name,last_name,salary,dense_rank() OVER( ORDER BY salary DESC) AS DENSE_RANKING_DESCENDING
 FROM employee_salary;
 
 -- 5) LAG() and LEAD()
 -- let say hamare pass kisi comapny ke sales ka data hai and manager ne humse bola ki check krke batao ki iss month ki sales ko compare kro pichle month se ki kitna change aaya revenue me wo plus hua ya minus hua to hum use krte hai LAG()
 -- and agar manager ne humse bola ki iss month ke revenue ko next month ke revenue se compare kro to hum use krenge LEAD()
 
 SELECT first_name,last_name,salary,LAG(salary) over( order by salary) AS previous_salary
 FROM employee_salary;
 
 SELECT first_name,last_name,salary,LEAD(salary) over(order by salary) AS next_salary
 FROM employee_salary; 
 
-- 6) First_value()-> ye first value return krta hai 
 
SELECT first_name,last_name,salary,first_value(salary) over(order by salary) AS first_no
FROM employee_salary;
# hum jante hai window function har ek row ke saath value return krti hai and phala value 20000 hai to ye har row ke saath 20000 return krega 
  
-- 7) Last_value()-> ye last value return krta hai 
SELECT first_name,last_name,salary,last_value(salary) over(order by salary ROWS between unbounded preceding and unbounded following) AS last_no
FROM employee_salary;
# YHI important hai last value ko repeat krne ke liye ye likha compulsory hai 
   
-- 8) SUM OVER()
    
SELECT first_name ,last_name, salary,SUM(salary) over() AS sum_salary
FROM employee_salary;
    
-- 9) MIN over()
     
SELECT first_name,last_name,salary, MIN(salary) over() AS MIN_salary
FROM employee_salary;
    
-- 10) MAX Over() 
    
SELECT first_name,last_name,salary, MAX(salary) over() AS MIN_salary
FROM employee_salary;
    
-- 11) COUNT Over()
SELECT first_name,last_name,salary, COUNT(salary) over() AS COUNT_total_salary
FROM employee_salary;
    
-- 12) AVG over()
    
SELECT first_name,last_name,salary, AVG(salary) over() AS MIN_salary
FROM employee_salary;
    
-- 13) NTILE()-> ye data/rows ko n group me divide kr deta hai 
    
-- let say hamare pass 12 data hai and humne likha NTILE(4) to it means 12 % 4 = 3 i.e 12 ko 3-3 ke group me baat do pahele 3 ko 1 rank and then next 3 ko 2 rank do....
    
SELECT first_name,last_name, salary,NTILE(4) over ( ORDER BY salary) AS Group_tile
FROM employee_salary; 

# GROUP BY CLAUSE 
# Group by clause ka matlab hota hai same values wali Rows ko ek group me add krna 
# Example - let say hamare class me 50 students hai and humse koi puche ki B.tech,BCA, and BBA me kitne kitne bacche hai tab hum B.Tech walo ko ek group me rkenge BBA walo ek group me and BCA walo ko ek group me So SQL me ye kaam GROUP BY CLAUSE krta hai

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
# ye bikul DISTINCT ki tarah hi kaam krta hai matlab Duplicates allow nhi hota 
# V.V.V.I-> SELECT ke saath humne jis bhi colummn ko likha hai same usi columnn ko hame niche GROUP BY ke saath bhi likhna hota hai 
# GROUP BY ko hum mostly aggreagate functions ke saath use krte hai 
# AGGREGATE FUNCTIONS 

# 1) COUNT()  -> Ye total count krta hai and last me ek integer return krta hai 
# 2) MIN() -> ye Minimum value return krta hai 
# 3) MAX() -> ye Maximum value return krta hai 
# 4) AVG() -> ye Average value return krta hai 
# 5) SUM() -> ye total value return krta hai 

SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
# isme humne age ko group kiya matlab DISTINCT age i.e Male and Female and then un sbka average age nikal diya 

# Har ek occupation me kitne employee kaam krte hai ye pata kro
SELECT occupation,COUNT(occupation)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

# har ek occupation me average salary kitni hai 
SELECT occupation,AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;
# isme humne har ek occupation ko pahele group by kiya matlab DISTINCT kiya taaki ek group bss ek baar hi aaye and then AVERAGE  salary nikal di sabki 

# Ek saath hum multiple Aggreagate functions use kr skate hai 
SELECT gender, AVG(age),MAX(age), MIN(age)
FROM parks_and_recreation.employee_demographics
group by gender;

# Har ek department ki max salary nikalo 
SELECT dept_id,MAX(salary)
FROM parks_and_recreation.employee_salary
group by dept_id;
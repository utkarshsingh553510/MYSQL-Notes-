# JOINS -> JOINS ka kaam hota hai 2 ya 2 se jyada tables ko aapas me Jod kr data nikalna 

# 1) INNER JOIN ->  INNER JOIN dono table me jo common record hote hai bss whi deta hai 

# V.V.V.I -> Hum join usi ko banate hai jo ki dono table me common ho and Unique ho 

SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

# In dono table me employee_id,first name,last_name common hai but employee_id hi unique hai i.e wo same nhi ho sakta but first_name,last_name ye sab common ho skta hai So hum emp_id ko JOIN banayenge 

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id=employee_salary.employee_id;
# so dono tables me jo emp_id common tha uska pura data aa gya 

# it can also be written as 

SELECT * 
FROM employee_demographics AS demo 
INNER JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id;

# Hum innner join Columns par bhi perform kar skte hai

SELECT demo. employee_id,age,salary
FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id;
# dono table me employee_id common thi to use humne JOIN bana liya and age column employee_demographics table me tha and salary column employee_salary me tha ab dono ko humne join kr diya 

# LEFT JOIN -> YE LEFT Se Pura Table utha leta hai and right me jo table common hota hai bss whi return krta hai 
# let say employee_id 3 common hai to id 3 me occupation,salary,dept_id sab hai to wo sb return hoga 

SELECT * 
FROM employee_demographics AS demo
LEFT JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id;

# RIGHT JOIN-> YE Right ke saare table ko return karega and left me jo common hai bss whi return hoga 

SELECT *
FROM employee_demographics AS demo
RIGHT JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id;

# FULL JOIN -> FULL JOIN ka matlab hota  hai dono table ko join kr do chahe match ho ya na match ho
# FULL JOIN IS UNION OF LEFT JOIN AND RIGHT JOIN 

SELECT * 
FROM employee_demographics AS demo
LEFT JOIN employee_salary AS sal 
ON demo.employee_id=sal.employee_id
UNION 
SELECT * 
FROM employee_demographics AS demo
RIGHT JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id;

# SELF JOIN -> SELF JOIN ka matlab hota hai ek table ko khud se hi jodna 
# SELF JOIN ke liye SELF keyword use hota hai 

SELECT * 
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
ON emp1.employee_id=emp2.employee_id;

# Ab humne ek secreat Santa ka convcept laaya ki har ek employee dusare enployee ko gift dega matlab 1->2, 2->3.....

SELECT * 
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
ON emp1.employee_id+1=emp2.employee_id;

# Ab iss Snata wale example ko hum easy way me dekhte hai bss hum employee_id ,first_name , and last_name lenge 

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS employee_id_gift,
emp2.first_name AS first_name_gift,
emp2.last_name AS last_name_gift
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
ON emp1.employee_id+1=emp2.employee_id;

-- Joining Multiple Tables Together 
# Iska matlab hai 1st table me 2nd table add krna and 2nd table me 3rd table add krna .....So on

SELECT *
FROM employee_demographics AS demo
INNER JOIN employee_salary AS sal
ON demo.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd 
ON sal.dept_id=pd.department_id;

# Yha pr humne pahele employee_demographics table and employee_salary ko aapas me joda phir hume parks_departments ko jodna tha inn dono se but parks_departments me department_id and department_name naam ka 2 table hai bss to add krne ke liye humne dekha ki department_name kisi table me nhi hai but department_id salary table me hai to bss add kr do 

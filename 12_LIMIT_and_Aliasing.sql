# LIMIT CLAUSE  
# LIMIT CLAUSE hame batata hai ki HOW MANY ROWS DO U WANT IN YOUR OUTPUT 
SELECT * 
FROM parks_and_recreation.employee_demographics
LIMIT 3;
# isse bss 3 rows hi dikhengi Top ki
# ise agar hum order by ke saath use krenge to ye aur accha ho jayega 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 3;
# isse hame 3 sbse oldest people dikh jayenge 

#V.V.V.I 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2,1;

#LIMIT 2,1 ka matlab hai LIMIT offset,count i.e Pahele  2 rows ko skip maro then uske baad wali 1st Row dikao i.e 3rd row

#Aliasing -> Aliasing ka kaam hota hai kisi column ke naam ko change krke naya naam dena 

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
# yha pr AVG(age) karke ek naya column ban gya jo ki dekhne me bhi accha nhi lag rha hai to ise hum koi dusara naam de dete hai taaki ye dekhne me bhi accha lage and jb log ise padhe to naam padh ke bhi unhen smajh aa jaye ki kya hai iss column ka matlab so here we use the concept of Aliasing 

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(age) avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender;
# AS nhi likhoge to bhi koi problem nhi hai 
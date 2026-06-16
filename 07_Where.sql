# 3) WHERE CLAUSE 
#where clause ka use hota hai records ko filter krne ke liye 
# Where clause mostly conditions ke saath use hota hai i.e  Comparison Operators and LOGICAL OPERATORS
# COMPARISON OPERATORS
# 1) = -> Equals to 
# 2) > -> Greater than 
# 3) < -> Less Than
# 4) >= -> Greater than or equal to
# 5) <= -> less than or equal to
# 6) != -> Not equal to

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name ="Leslie";

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary>=50000;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE  gender="Female";

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE  birth_date >"1985-01-01";


#LOGICAL OPERATORS 
# 1) AND -> Jb dono conditions true hoti hai tb ye value return krta hai 
# 2) OR -> Jb ek condition bhi true hoti hai tb ye value return krta hai
# 3) NOT -> Used to Exclude a condiion mtlb NOT ko chodke sb execute hoga 
# 4) IN 
# 5) NOT IN 
# 6) BETWEEN 


SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age>30 AND gender="Male";
# ye aise logo ka data return karega jinki age 30 se jayada hai and gender male hai 

# V.V.V IMPORTANT 

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE  (first_name = "Leslie" AND age=44) OR age >55;
# Ye bhi PEMDAS ko follow kr rha hai it means sbse pahele parenthesis ke andar ka data execute hoga then uske baad uske bahar ka data execute hoga 
# i.e Sbse Pahele Check hoga ki Aisa Banda jiska first_name Leslie hai and uski age 44 hai phir ye execute hone ke baad dekha jayega ki aisa banda jiski age 55 se jyada ho bss

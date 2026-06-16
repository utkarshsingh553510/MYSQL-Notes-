# ORDER BY CLAUSE 
# ye clause hamare data ko Sort krta hai ascending ya descending order me 
# ASC- ASCENDING ORDER (Pahele sbse chota phir usse bada...i.e Increasing Order )
# DESC- DESCENDING ORDER (Pahele sbse bada phir usse chota .... i.e Decreasing order)

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age ASC;
# ye age ko ascending order me dikhayega 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age;
# agar humne kuch batayta nhi hai to By Default ye ASC order hi smjhta hai 

SELECT * 
FROM parks_and_recreation.employee_salary
ORDER BY salary ASC;

# V.V.I -> hum bina column ka naam likhe bhi use sort kr skte hai i.e hum bss bata de ki coloumn kis position pe hai 
# like employee_demographics table me 4 no. Pe age column hai and 5 no. Pe gender column hai 

SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY 5,4;
# but ye aage jake problem create krta hai so ye krna koi recommend nhi krta 

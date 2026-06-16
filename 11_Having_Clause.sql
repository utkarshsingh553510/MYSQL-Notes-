# HAVING CLAUSE 
# WHERE CLAUSE ROWS ko filter krta hai and HAVING CLAUSE Groups ko filter krta hai 
# WHERE CLAUSE GROUP BY ke pahale lagta hai and HAVING CLAUSE GROUP BY ke baad lagta hai 
# WHERE CLAUSE Ke saath hum aggregate functions nhi laga skte Jbki HAVING CLAUSE ke saath hum AGGREGATE functions laga Sakte hai 

SELECT occupation,avg(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary)>75000;

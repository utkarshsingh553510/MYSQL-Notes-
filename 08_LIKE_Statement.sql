# LIKE STATEMENT 
# LIKE Statement aisa keyword ya Clause hai jisko hum WHERE Ke saath use krte hai 
# % and _ -> Yhi hai LIKE Satement

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "Jer%";
# YE ab wo First_name return krega jo ki Jer se start ho rha hai and last me kuch bhi ho 

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "%en";
# ye keh rha hai ki mujhe aisa first_name do ki start kisi bhi alphabet se ho but end en se ho 

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a%";
# Ye kehta hai ki mujhe aisa first_name return kro jo ki start a se ho rha ho and end kisi bhi alphabet se ho

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "a__";
# Ye kehta hai ki mujhe aisa first name return kro jo ki a se start ho rha ho and bss 3 digit ka ho i.e a ke baad 2 digit 

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1989%";
# ye khta hai ki mujhe aisa banda return kro jiski birth_date 1989 ho 
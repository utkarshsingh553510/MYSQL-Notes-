-- TRIGGERS
-- Trigger ek tarah ka automatic action hota hai jo tab occur/fire hota hai jab koi event occur hota hai 
-- let say hamare pass 2 table hai Main Table and Backup table and let say humne ye trigger lagaya hai ki agar Main table me se hamara koi data delete hota hai to ye trigeer automatically fire ho jaye and deleted data ko Backup table me store kr de 

-- SYNTAX-> CREATE TIGGER trigger_name
-- BEFORE/AFTER event_type(INSERT/UPDATE/DELETE) ON table_name
-- FOR EACH ROW 
-- BEGIN
-- TRIGGER BODY
-- SQL statement to execute 
-- END; 

-- Before/after ka matlab hai ki trigger kab chlega operation se pahle ya operation ke baad
-- FOR EACH ROW ka matlab hai har row ke liye trigger execute hoga  
-- isme bhi DELIMETER BEGIN and END lagega 
-- isme kai baar hum NEW keyword ka bhi use karte hai NEW keyword matlab jo naya data abhi abhi insert hua hai 
-- let say kisi bande ki salary -25000 likha hai to hum jante hai ki salary -ve me nhi ho sakti to yha pr hum trigger bana skte hai ki agar kisi ne salary dala -ve me to use 0 kr do 
DROP TRIGGER  salary_check;

DELIMITER $$
CREATE TRIGGER salary_check
BEFORE INSERT ON employee_salary
FOR EACH ROW
BEGIN
     IF NEW.salary < 0 THEN
     SET NEW.salary= 0;
     END IF;	
END $$ 
# ab iss code se employee salary table me ek trigger create ho gya jo ki automatically fire hoga jab bhi salary -ve me klikha jayega lets check it

 SELECT * FROM employee_salary;
INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES ( 114,'Bholu','Singh','Devloper',-25000,2);
# Phir ek row insert karo 

SELECT *
FROM employee_salary
WHERE employee_id=114;
# ye hum jab check krenge tab salary 0 dikhega because trigger is fired 
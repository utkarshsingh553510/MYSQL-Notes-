-- STORED PROCEDURES 
-- jaise hum contact me kisi ka number save kar lete hai tab hume baar baar number yaad nhi rakhna padta waise hi sql queries ko jab hum stored procedures me save kr dete hai aur jab bhi hume query chahiye tab uska naam call kr dete hai 
-- Procedure banane ke liye BEGIN,END and DELIMETER lagana padta hai
-- DELIMETR MY SQL ko batata hai ki staement kaha khatam hogi 
 DROP PROCEDURE IF exists large_salaries;

 DELIMITER $$
 CREATE PROCEDURE large_salaries()
 BEGIN
	 SELECT * 
	 FROM parks_and_recreation.employee_salary
	 WHERE salary> 50000;
 END $$
 DELIMITER ;
 CALL large_salaries();
 
 -- ab in future hum kabhi bhi likhenge ki call large_salaries to automatically ye query execute hogi 
-- SELECT * 
-- FROM parks_and_recreation.employee_salary
-- WHERE salary> 50000;

 
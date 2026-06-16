-- TEMPORARY TABLES 
-- Temporary table ek aisi table hoti hai jo ki ek temporary time ke liye database me create hoti hai and connection/session khatam hone ke baad ye bhi automatically delete ho jati hai 
-- iska use mostly hum use krte hai complex queries ko breakdown krne ke liye 
 
 CREATE  TEMPORARY TABLE temp_table (
 first_name VARCHAR(50),
 last_name VARCHAR(50),
 Fav_movie VARCHAR(100)
 );
 INSERT INTO temp_table 
 VALUES('Utkarsh','Singh','Baahubali'),('Devesh','Singh','Pushpa');
 SELECT *
 FROM temp_table;
 
 
 -- Hum existing table ke data ko bhi import kr sakte hai in temporary table
CREATE TEMPORARY TABLE demo
SELECT * FROM employee_salary
WHERE salary>50000;
SELECT *
FROM demo;
-- abhi run kroge to sab run ho jayega but jab hum my sql workbench ko Cut kr denge to ye bhi cut ho jayega and run nhi hoga because session bhi cut ho gya hai and ise run krne ke liye hume phir se session create krna hoga  
 
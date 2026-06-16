-- EVENTS 
-- EVENT ek scheduled task hota hai jo ki ek fixed time par ya fixed interval par apne aap execute hota hai 
-- trigger to kuch event occur hone par chalta hai but event clock/timer ke according occur hota hai
-- EX-> har mahine ki 1st taarik ko employee ka salary status update hoke PAID ho jaye, Har raat stocks check karke low-stocks product ko mark karna 
-- So Trigger ka matlab hai ki kuch hua to chala and Event ka matlab hai ki Time hua to chala 
-- Isme Do, SCHEDULE, Update use hota hai 

-- EX-> Jin employees ki age 60+ hai unhe ab database se hata do i.e table se hata do 

DELIMITER $$ 
CREATE EVENT retired_employee
ON SCHEDULE EVERY 1 minute        # schedule me hum kuch bhi set kar sakte hai like  1 min,1 sec, 1 year , 2 week etc.
DO 
BEGIN 
     DELETE 
     FROM employee_demographics
     WHERE age>=60;
END $$
DELIMITER ;
-- isse event Ban gya ek banda tha jerry jiski age 60 thi 

SELECT * 
FROM employee_demographics;
-- ab jerry nhi dikhega because event ne use hata diya hai 

SHOW VARIABLES LIKE 'event%';
-- ye likh ke hum check kr sakte hai ki trigger ON hai ya OFF
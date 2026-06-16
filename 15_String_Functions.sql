-- STRING FUNCTIONS 
#  String functions built in functions hote hai my sql me Jo ki hamari help krte hai to work with the strings 

-- 1) LENGTH -> ye Total length batata hai hamare sentence ka 
# iska bahut accha use case hai mobile no ki length agar 10 digit ki hai tabhi wo shi hai warna nhi 

 SELECT first_name, LENGTH(first_name)
 FROM employee_demographics
 ORDER BY first_name ASC;
 
 -- 2) UPPER-> ye small letters ko capital letters me  convert kr deta hai 
 
 SELECT first_name, UPPER(first_name)
 FROM employee_demographics;
 
 -- 3) LOWER-> ye capital letters ko small letters me convert kr deta hai 
 
SELECT last_name , lower(last_name)
FROM employee_demographics; 

-- 4) TRIM() -> ye extra spaces ko remove  kr deta hai
 
 SELECT trim( '       sky            ');
 
-- 5) RTRIM() -> Yev Right ki taraf se spaces ko hata deta hai 

  SELECT rtrim('        sky         ');
 
 -- 6) LTRIM()-> ye left ki taraf se extra spaces ko remove kr deta hai 
 
 SELECT ltrim('          sky             ');
 
 -- 7)  SUBSTRING -> ye string ka kuch part select krta hai jitna humne kaha hai 
 
  SELECT first_name, LEFT(first_name,4)
  FROM employee_demographics;
  # ye kehta hai ki left se first_name ke bss 4 characters hi lo 
  
  SELECT first_name, right(first_name,4)
  FROM employee_demographics;
  # ye kehta hai ki right se first_name ke 4 characters hi lo  
  
SELECT first_name,
substring(first_name,3,2) # iska matlab hai first_name column me se 3 character se next 2 character dikhao yaani 3rd and 4th character dikhao
FROM employee_demographics;

# let say hume har ek employee ka birth month pata krna hai ki kis month me wo paida hua tha 
SELECT first_name,last_name,birth_date,
substring(birth_date,6,2)  AS birth_month # it means 6th and 7th character dikhega 
FROM employee_demographics;

-- 8) REPLACE -> ye ek text ko kisi dusare text se replace krta hai 

SELECT first_name,replace(first_name,'a','z') # humne first_name column me  jaha jaha a keyword hai use replace kr diya hai with z keyword
FROM employee_demographics;

SELECT first_name,replace(first_name,'Leslie','Leslia') # humne first_name column me  jaha Leslie tha use Leslia kr diya hai 
FROM employee_demographics;

-- Multiple cheezo ko ek saath replace krne ka Tareeka
SELECT first_name,replace(first_name,'Leslie','Leslia'),replace(first_name,'Tom','tommy')
FROM employee_demographics;

-- 9) LOCATE -> Locate ek function hai jo ki kisi sentence ke andar kisi text ki position ko batata hai

SELECT locate('t','Utkarsh');  # iska matlab hai ki utkarsh sentence me se t word ki position batao

SELECT first_name, locate('an',first_name)
FROM employee_demographics;

-- 10) CONCAT --> CONCATE Function ka kaam hota hai 2 or 2 se jyada columns ko aapas me add krne ke liye 

SELECT first_name,last_name,
concat(first_name,' ',last_name)  AS Full_Name # ye beech me humne '' ye laga diya hai taaki first_name and last_name ke beech me space rahe
FROM employee_demographics;
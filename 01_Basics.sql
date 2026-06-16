# Yha pe hamare pass parks_ and _recreation naam ka ek database hai and ek sys naam ka database hai 
# parks_ and _recreation database me 3 table hai employee_demographics,employee_salary,parks_departments 
# sql me ; iska mtlb hota hai full stop 
# lighting wala use kro run krne ke liye jispr i bana hai
#  --  ya #  iska matlab hota hai commemnt i.e program ka wo part jo ki execute hi nhi hota hai 
# Run krne ke liye hamesha upar se niche ki taraf select kro 

-- Jb bhi hum kisi organisation me kaam krne ke liye jaate hai to wha hum database nhi banate hai wha database already bana hota hai to ye check krne ke liye ki hamare system me already kon sa database hai we write some query

execute sp_database;
# ye query system ke anadr jitne bhi database already hai use de dega 

SELECT name from sys.database;
# ye query hamare system me jo bhi databse hai usme se name wala column de dega 

-- Checking existing table 
execute sp_help'table_name';   # ye likhte hi hum table_name me jis bhi table ka naam denge wo table ki saari info hume de dega 

-- CREATING A NEW DATABASE

CREATE DATABASE <db_name>
USE DATABASE<db_name>

-- INSERTING VALUES IN DATABASE 

INSERT INTO <table_name> VALUES();
create database db;
use db;
create table output (Name varchar(255) ,   Runs integer(5) , Expertise integer(5));
create table Player( ID integer(1), Name varchar(255), Runs integer(2), Expertise integer(2));
SELECT
  CASE
    WHEN Expertise >= 8 THEN Name
    ELSE 'NULL'
  END AS Name,
  Runs,
  Expertise
FROM
  Player
WHERE
  Expertise >= 8
  OR Expertise < 8
ORDER BY
  CASE
    WHEN Expertise >= 8 THEN Expertise 
    ELSE Expertise
  END,
  CASE
    WHEN Expertise >= 8 THEN Name
    ELSE Runs
    END;
    insert into output values('Nitin', "99","10");
    insert into output values('Rahul',"88","9");
	insert into output values('Veeru',"81","9");
     insert into output values('Ashish',"78","8");
      insert into output values('Null',"63","7");
       insert into output values('Null',"68","7");
    SELECT * from output;
    
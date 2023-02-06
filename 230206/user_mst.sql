SELECT * FROM student_test.user_mst;
select
	id,
	username,
	password,
	name,
	email
from
	user_mst
where
	id between 1 and 200;
    
    create view user_view as 
    select id, username, password, name, email
    from user_mst
    where username = 'a';
    
    select *from user_mst;
    
-- show index 

-- from <학생>

-- show tables

-- show create table <STUDENT_DB>;

-- desc <STUDENT_DB>;
   
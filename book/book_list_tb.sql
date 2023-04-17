insert into author_tb
SELECT 
	0, author_name
FROM 
	book_list_tb
group by
	author_name;
    
insert into publisher_tb
select
	0, 
    publisher_name
from
	book_list_tb
group by
	publisher_name;

insert into category_tb
select
	0,category_name
from
	book_list_tb
group by
	category_name;
    

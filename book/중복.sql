insert into book_tb 
select
	0 as book_id,
	book_name,
    author_id, 
    publisher_id,
    category_id,
    cover_img_url
from
	(select
		row_number() over(partition by 
        -- 같은 것기리 묶어서 행한테 번호를 매기겠다(partition by
        -- 2번씩 중복되는 것들이 묶여서 번호가 매겨진다, 어짜피 이미지는 똑같으니 정리를 해서 이미지 테이블에다가 넣고 하나만 쓰자
		book_name,
        author_id,
        publisher_id,
        category_id order by book_name) as num,
	book_name,
    author_id,
    publisher_id,
    category_id,
    cover_img_url
FROM 
	book_list_tb bl
	left outer join author_tb a on(a.author_name = bl.author_name)
	left outer join publisher_tb ps on(ps.publisher_name = bl.publisher_name)
	left outer join category_tb cg on(cg.category_name = bl.category_name)
	)book_list
					
where
	num=1;
    
    -- 이테이블 안에서 각각의 아이디가 존재할때 순번을 매기겠다는 의미  
    
select
	*
from
	book_tb;
					
    
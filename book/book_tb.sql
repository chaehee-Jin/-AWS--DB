SELECT 
	bt.book_id,
    bt.book_name,
    bt.author_id,
    bt.publisher_id,
    bt.category_id,
    bt.cover_img_url,
    
    at.author_id,
    at.author_name,
    
    pt.publisher_id,
    pt.publisher_name,
    
    ct.category_id,
    ct.category_name
FROM 

	book_tb bt
	left outer join author_tb at on (at.author_id = bt.author_id)
	left outer join publisher_tb pt on (pt.publisher_id = bt.publisher_id)
	left outer join category_tb ct on(ct.category_id = bt.category_id)

order by
	bt.book_id
limit 20, 20; -- 인데스 몇번부터 몇개를 들고 와야한다

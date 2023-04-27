SELECT 
	blt.book_list_id,
    bt.book_name,
    brt.user_id
FROM
	book_list_tb blt
    left outer join book_tb bt on(bt.book_id = blt.book_id)
    left outer join book_rental_tb brt on(brt.book_list_id = blt.book_list_id)
order by
	bt.book_id
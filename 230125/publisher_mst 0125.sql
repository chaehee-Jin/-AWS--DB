SELECT * FROM db_study3.publisher_mst;


update publisher_mst
set
publisher_year = '2023-01-25'
where
publisher_id in (677, 37);

select
*
from
publisher_mst;

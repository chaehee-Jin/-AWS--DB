CREATE INDEX product_id on product_mst(product_code); -- 프라이머리키 잡기

show index from product_mst;

alter table product_mst
add unique product_name(product_name);

alter table product_mst -- 키값 지우기 
drop index product_id1;




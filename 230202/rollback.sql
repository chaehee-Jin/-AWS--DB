
show variables like 'AUTOCOMMIT';

set autocommit =0;

-- 내가 원하는 지점에서 rollback

start transaction;
savepoint sp3;

insert into user_mst
values (0, 'jjl', '1234', '김준일', 'jjl@gmail.com');


select * from user_mst;

rollback to sp3;

commit;

 
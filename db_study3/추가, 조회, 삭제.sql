/*
DML
C: insert / into 데이터 추가
R: select / from 데이터 조회
U: update / set 데이터 수정
D: delete / from  데이터 삭제
*/

/* ========================<< insert>> =================================*/
select * from student_mst;
 
insert into student_mst
(student_id, student_name, mentor_id)
	
values  
(5, '이강웅', 10),
(6, '김준경', 10),
(7, '이현수', 10),
(8, '정의현', 10);

insert into university_mst

values
(4, '서울대'),
(5, '서강대'),
(6, '제주대'),
(7, '동덕여대'),
(8, '부산외대'),
(9, '연세대');

select * from university_mst;


/* ===========================<< update>>==============================*/

select * from student_mst;
update student_mst
set
student_name = '김재명',
mentor_id = 15
where
student_id = 5;
/* 멘토 아이디가 10인 학생들의 멘토 아이디를 1로 바꾸어라 */


update student_mst
set
mentor_id = 1
where
mentor_id = 10;

select * from student_mst;

/* ===================<< delete>> =======================*/
delete
 from 
 student_mst 
 where 
 student_id = 4
and student_name = '손지호';

select * from student_mst;

delete 
from
university_mst
where
university_id = 4
and university_name = '서울대';

select * from university_mst;





select * from student_test.student;
insert into student values(1, 1, "김춘식");
insert into student values(2, 2, "손흥민");
insert into student values(3, 1, "김춘식");
insert into student values(4, 2, "손흥민");


select * from student;

select * from subject;
insert into subject values (1, 1, "컴퓨터 구조");
insert into subject values (2, 1, "컴퓨터 구조");
insert into subject values (3, 2, "데이터베이스");
insert into subject values (4, 2, "데이터베이스");
select * from subject;



 select * from grade;
 insert into grade values (1, 1, "95");
 insert into grade values (2, 1, "84");
 insert into grade values (3, 2, "89");
 insert into grade values (4, 2, "92");
 
 

-- select student.순번, student.학번, student.이름, grade.과목번호, grade.점수, subject.과목번호, subject.과목이름;
 select student_test
   * form student
	-- join grade on student.순번 = grade.순번;
    
  --  select student_test
   -- * form student
    -- join subject on student.순번 = subject.순번;











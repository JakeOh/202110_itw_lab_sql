-- DDL(Data Definition Language): create, truncate, drop, alter
-- alter user scott account unlock;
-- alter user scott identified by tiger;

-- alter table 테이블이름 변경 내용;

-- 이름 변경(rename): (1) 테이블 이름 변경 (2) 컬럼 이름 변경 (3) 제약 조건 이름 변경
-- (1) 테이블 이름 변경: students4 --> students2
alter table students4 rename to students2;

-- (2) 컬럼 이름 변경: students.sname --> students2.stu_name
alter table students2 rename column sname to stu_name;



-- 제약조건(constraints)
-- 테이블에 데이터들이 insert될 때 조건을 만족하는 값들만 insert될 수 있도록 만들어 주는 제약.
-- 테이블을 create(생성)할 때 
-- 테이블을 alter(변경)할 때
-- 종류: primary key(고유키), not null, unique, check, foreign key(외래키)

-- 테이블을 생성할 때 제약 조건을 주는 방법 1:
create table ex01 (
    ex_id       number(2) 
                primary key,
    ex_name     varchar2(10 char) 
                not null,
    ex_ucol     varchar2(10 char) 
                unique,
    ex_ccol     number(2) 
                check (ex_ccol >= 0),
    ex_col      number(2)
);


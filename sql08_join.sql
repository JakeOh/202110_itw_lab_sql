-- JOIN: 두 개 이상의 테이블에서 검색하는 것.
-- RDBMS(Relational DataBase Management System): 관계형 DB 관리 시스템
--   테이블들이 서로 관계를 맺고 있는 DB. JOIN 문장이 많이 사용됨.

/* JOIN 문법
1. Oracle 문법
SELECT 컬럼, ...
FROM 테이블1, 테이블2, ...
WHERE join조건;

2. ANSI 표준 문법
SELECT 컬럼, ...
FROM 테이블1 join종류 테이블2 ON join조건;
*/

-- 사번, 이름, 부서번호, 부서이름 검색
-- inner join
-- Oracle 문법
select emp.empno, emp.ename, emp.deptno, dept.dname
from emp, dept
where emp.deptno = dept.deptno;

-- ANSI 표준 문법
select emp.empno, emp.ename, emp.deptno, dept.dname
from emp inner join dept 
    on emp.deptno = dept.deptno;

-- join 문장을 작성할 때는 from 절에서 테이블 이름에 별명을 줄 수 있음.
-- from에서 지정한 별명은 select, where, on, ... 등에서 사용할 수 있음.
select e.empno, e.ename, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno;

-- emp 테이블의 empno, ename, deptno 값을 1004, '오쌤', 50으로 삽입(새 데이터 추가)
insert into emp (empno, ename, deptno)
values (1004, '오쌤', 50);

commit; -- 테이블 변경 사항을 하드디스크에 영구 저장.

-- Left Outer Join
select e.empno, e.ename, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno(+);

select e.empno, e.ename, e.deptno, d.dname
from emp e left outer join dept d
    on e.deptno = d.deptno;
    
-- Right Outer Join
select e.empno, e.ename, d.deptno, d.dname
from emp e, dept d
where e.deptno(+) = d.deptno;

select e.empno, e.ename, e.deptno, d.dname
from emp e right outer join dept d
    on e.deptno = d.deptno;

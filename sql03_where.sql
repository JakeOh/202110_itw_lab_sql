-- 테이블에서 데이터 검색
--   (1) projection: 테이블에서 원하는 컬럼들을 선택
--   (2) selection: 테이블에서 조건을 만족하는 레코드(행)들을 검색.

-- select 컬럼, ... from 테이블 where 조건식 [order by 정렬 기준 컬럼];

-- 직원 테이블(emp)에서 10번 부서에 근무하는 직원들의 부서번호, 사번, 이름을 검색.
select deptno, empno, ename
from emp
where deptno = 10;

-- 비교 연산자: =, !=, >, >=, <, <=, is null, is not null, ...
-- 논리 연산자: and, or, not

-- 직원 테이블에서 수당(comm)이 null이 아닌 직원들의 사번, 이름, 수당을 검색.
-- 출력 순서는 이름의 오름차순으로 정렬해서.
select empno, ename, comm
from emp
where comm is not null
order by ename;

-- 직원 테이블에서 급여(sal)가 2000 이상인 직원들의 이름과 급여를 검색
-- 출력 순서는 급여의 내림차순으로 정렬해서.
select ename, sal
from emp
where sal >= 2000
order by sal desc;

-- 직원 테이블에서 급여가 2000 이상 3000 이하인 직원들의 사번, 이름, 직책, 급여를 검색.
-- 급여의 내림차순 출력.
select empno, ename, job, sal
from emp
where sal >= 2000 and sal <= 3000
order by sal desc;

select empno, ename, job, sal
from emp
where sal between 2000 and 3000
order by sal desc;

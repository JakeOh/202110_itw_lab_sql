-- scott 계정 사용

-- 함수(function)
-- (1) 단일 행 함수: 
--     행(row)이 하나씩 함수의 argument로 전달되고, 행 마다 결과를 리턴하는 함수.
-- (2) 그룹 함수(다중 행 함수):
--     여러 개의 행(row)이 한꺼번에 함수의 argument로 전달되고, 
--     여러 개의 행에서 하나의 결과를 리턴하는 함수.

-- 단일 행 함수의 예
select ename, lower(ename)
from emp;

select hiredate, to_char(hiredate, 'RR/MM/DD')
from emp;

-- nvl(컬럼이름, value): 컬럼의 값이 null이 아니면 자기 자신을 리턴, null이면 value를 리턴.
-- nvl2(컬럼이름, value1,  value2): 컬럼이 값이 null 아니면 value1을, null이면 value2를 리턴.
select comm, nvl(comm, -1), nvl2(comm, comm, -1)
from emp;


-- 그룹 함수(다중 행 함수)의 예: 
-- count(개수), sum(합계), avg(평균), max(최댓값), min(최솟값), variance(분산), stddev(표준편차)
select count(ename), count(mgr), count(comm)
from emp;

select sum(sal), avg(sal), max(sal), min(sal),
    variance(sal), stddev(sal)
from emp;


-- 목적: 부서별 급여의 최댓값, 최솟값 찾기
select max(sal), min(sal)
from emp
where deptno = 30;

select deptno, max(sal), min(sal)
from emp
group by deptno
order by deptno;

-- 부서별 급여의 평균, 표준편차 찾기. 소수점 2자리까지 반올림. 부서번호 오름차순 정렬.
select deptno, 
    round(avg(sal), 2) as AVG_SAL, 
    round(stddev(sal), 2) as STDDEV_SAL
from emp
group by deptno
order by deptno;

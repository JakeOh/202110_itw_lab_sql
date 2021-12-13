-- inline comment
/* block comment
*/

select sysdate
from dual;  -- DBMS의 현재 시간 정보 출력
-- SQL 문장은 세미콜론(;)으로 끝남.
-- Ctrl+Enter: 커서가 위치한 곳의 SQL 한 문장(명령어)를 실행.
-- F5: 스크립트 실행. 파일의 처음부터 끝까지 모든 문장(명령어)를 실행.
-- select 문의 실행 결과는 [질의 결과] 탭에 출력.

show user;
-- Oracle에서만 사용하는 비표준 명령어. DBMS에 접속한 현재 사용자 이름 보여주기.
-- select 이외의 명령문 실행 결과는 [스크립트 출력] 탭에 출력됨.

describe emp;
-- describe 테이블 이름;
-- 테이블의 구조(컬럼 이름, NULL 가능 여부, 데이터 타입)를 출력.
-- describe는 desc로 줄여서 쓸 수 있음.

desc dept;

--jumin은 앞자라와 '-' 뒷자리로 구성합니다
--email은 아이디@도메인으로 구성합니다
--hobby는 여러개의 취미를 콤마로 구분합니다
--gender의 value값을 'm' 또는 'f' 로 저장합니다
--post 는 0 으로 시작하는 우편번호가 있어 문자형으로 처리합니다 (01234를 숫자형으로 저장하면 1234만 저장되기 때문에)

create table template_join(
 id			varchar2(20) primary key,
 password	varchar2(20),
 jumin		varchar2(14),
 email		varchar2(30),
 gender		char(1) check(gender in ('m','f')),
 hobby		varchar2(40),
 post		varchar2(5),
 address	varchar2(150),
 intro		varchar2(100),
 register_date date default sysdate
);

insert into template_join
(id, password, jumin, email, gender, hobby, post, address, intro)
values ('admin','1234','900909-1234567','admin@naver.com','m','공부,운동','12345','서울시 종로구','좋아요');

select * from template_join;

update TEMPLATE_JOIN set password=1234 where password=13245111;
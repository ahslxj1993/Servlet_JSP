--jumin�� ���ڶ�� '-' ���ڸ��� �����մϴ�
--email�� ���̵�@���������� �����մϴ�
--hobby�� �������� ��̸� �޸��� �����մϴ�
--gender�� value���� 'm' �Ǵ� 'f' �� �����մϴ�
--post �� 0 ���� �����ϴ� �����ȣ�� �־� ���������� ó���մϴ� (01234�� ���������� �����ϸ� 1234�� ����Ǳ� ������)

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
values ('admin','1234','900909-1234567','admin@naver.com','m','����,�','12345','����� ���α�','���ƿ�');

select * from template_join;

update TEMPLATE_JOIN set password=1234 where password=13245111;
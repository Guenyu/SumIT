create table UserInFo(
	email varchar2(30) primary key,-- �̸��� key
	password varchar2(12) not null,-- ��ȣ
	phone varchar2(15) not null,--���ѹ� ũ�� �÷��ߵ�...1�� ���ø���
	--addrs1 varchar2(100) not null,--�⺻�ּ�
	--addrs2 varchar2(100) not null,--���ּ�
	--addrs3 varchar2(100) not null, --�����ּ�
	name varchar2(20) not null,--�̸�
	--gender varchar2(4) not null
);
alter table board1 add (del_yn char(1) default 'n');
update  board1 set del_yn = 'n';
select * from UserInFo;
drop table UserInFo;
select password from UserInFo where email = 'as@as2';
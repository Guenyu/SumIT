create table UserInFo(
	email varchar2(30) primary key,-- 이메일 key
	password varchar2(12) not null,-- 암호
	phone varchar2(15) not null,--폰넘버 크기 늘려야됨...1만 더늘리기
	--addrs1 varchar2(100) not null,--기본주소
	--addrs2 varchar2(100) not null,--상세주소
	--addrs3 varchar2(100) not null, --우편주소
	name varchar2(20) not null,--이름
	--gender varchar2(4) not null
);
alter table board1 add (del_yn char(1) default 'n');
update  board1 set del_yn = 'n';
select * from UserInFo;
drop table UserInFo;
select password from UserInFo where email = 'as@as2';
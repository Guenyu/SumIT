create table UserInFo(
	email varchar2(30) primary key,--이메일
	password varchar2(30) not null,--비밀번호
	name varchar2(15) not null,--이름
	age varchar2(30) not null,--생년월일
	addr varchar2(50),--주소
	phone varchar2(20) not null,--전화번호
	gender char(1) not null--성별
);
select * from UserInFo;
drop table UserInFo;

-----------------------------------------------

create table schedule(
	writer varchar2(30) primary key,
	content varchar2(30) not null,
	title varchar2(15) not null,
	seq number(10) not null,
	reg_date date
);
select * from schedule;
drop table schedule;


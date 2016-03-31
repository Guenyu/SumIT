create table UserInFo(
	id varchar2(30) primary key,--아이디
	password varchar2(30) not null,--비밀번호
	name varchar2(15) not null,--이름
	age varchar2(30) not null,--생년월일
	email varchar2(30) not null,--이메일
	addr varchar2(50),--주소
	phone varchar2(20) not null,--전화번호
	gender char(1) not null--성별
);
select * from UserInFo;
drop table UserInFo;

-----------------------------------------------

create table schedule(
	writer varchar2(30) primary key,--등록자
	content varchar2(30) not null,--내용
	title varchar2(15) not null,--제목
	seq number(10) not null,--시퀀스(번호)
	reg_date date--등록일
);
select * from schedule;
drop table schedule;


create table UserInFo(
<<<<<<< HEAD
	email varchar2(30) primary key,--이메일
	password varchar2(30) not null,--비밀번호
	name varchar2(15) not null,--이름
	age varchar2(30) not null,--생년월일
	id varchar2(30) not null,--아이디
	addr varchar2(50) not null,--주소
	phone varchar2(20) not null,--전화번호
	gender char(1) not null--성별
=======
	id varchar2(30) primary key,
	password varchar2(30) not null,
	name varchar2(15) not null,
	age varchar2(30) not null,
	email varchar2(30) not null,
	addr varchar2(50),
	phone varchar2(20) not null,
	gender char(1) not null
>>>>>>> 043a58ba5749ac08c2fe3b6cf48f806a9d158702
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


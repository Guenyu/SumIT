create table UserInFo(
<<<<<<< HEAD
	email varchar2(30) primary key,--이메일
	password varchar2(30) not null,--비밀번호
	name varchar2(15) not null,--이름
	age varchar2(30) not null,--생년월일
	addr varchar2(50),--주소
	phone varchar2(20) not null,--전화번호
	gender char(1) not null--성별
=======
	email varchar2(30) primary key,
	password varchar2(30) not null,
	name varchar2(15) not null,
	age varchar2(30) not null,
	id varchar2(30) not null,
	addr varchar2(50) not null,
	phone varchar2(20) not null,
	gender char(1) not null
>>>>>>> b6d3a744cad172a2bb11e7ca25077ed47cfa5693
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


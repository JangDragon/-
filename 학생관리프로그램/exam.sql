create database exam;
use exam;

create table student (
	hakbun varchar(20) primary key,
    name varchar(20) not null,
    ph varchar(20) default '미등록',
    email varchar(30) default '미등록',
    address varchar(50) default '미등록',
    regstudent datetime default now()
);

create table score (
	hakbun varchar(20) unique,
    java int default 0,
    python int default 0,
    c_code int default 0,
    regscore datetime default now(),
    score_sum int default 0,
    score_avg float default 0,
    foreign key (hakbun) references student(hakbun)
);

select * from student;
select * from score;

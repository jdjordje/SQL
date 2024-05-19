create table student(
id serial primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
date_of_birth date not null,
enrolled_date date ,
gender char(1) not null,
national_id_number varchar(10) unique not null,
student_card_number integer unique not null 
);



create table teacher(
id serial primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
date_of_birth date not null,
academic_rank varchar(20) not null,
hire_date date not null
);

select * from teacher t ;

create table grade_details(
id serial primary key,
grade_id integer ,
achievement_type_id integer,
achievement_points integer,
achievement_max_points integer,
achievement_date date);

select * from grade_details gd ;

create table course(
id serial primary key,
"name" varchar(30) not null,
credit smallint not null,
academic_year char(4) not null,
semester char(1) not null
);

select * from course;

create table grade(
id serial primary key,
student_id integer not null,
course_id integer not null,
teacer_id integer not null,
grade char(1) not null,
"comment" text,
created_date date not null
)

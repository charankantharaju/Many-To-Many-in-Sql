create table students (
s_id serial primary key,
name varchar(100) not null
);

create table courses(
c_id serial primary key,
name varchar(100) not null,
fee numeric not null 
)

create table enrollement(
enrollement_id serial primary key,
s_id int not null,
c_id int not null,
enrollement_date date not null,
foreign key (s_id) references students(s_id),
foreign key (c_id) references courses(c_id)
);

insert into students (name)
values
('Raju'),
('Sham'),
('Alex');
select * from students

insert into courses (name,fee)
values
('Maths',500.00),
('Physics',600.00),
('Chemistry',700.00);

insert into enrollement(s_id,c_id,enrollement_date)
values 

    (1, 1, '2024-01-01'), -- Raju enrolled in Mathematics
    (1, 2, '2024-01-15'), -- Raju enrolled in Physics
    (2, 1, '2024-03-15'), -- Sham enrolled in Mathematics
    (2, 3, '2024-03-15'), -- Sham enrolled in Chemistry
    (3, 3, '2024-03-25'); -- Sham enrolled in Chemistry

select * from students ;
select * from courses;
select * from enrollement;


select s.name,e.enrollement_date, c.name, c.fee
from enrollement e
join students s on e.s_id = s.s_id
join courses c on c.c_id = e.c_id

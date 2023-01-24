show databases

use mysql;

create table data_course (
id int not null,
message varchar(50) not null,
author varchar(10) not null,
primary key (id)
);

select * from data_course;

insert into data_course
(id,message,author)
values ('101', 'I am a data student', 'adaprogram'),
('102', 'This is an assignment', 'sql'),
('103', 'Feels good to transition into', 'Tech');

select * from data_course;



##lenght

select length(author) as total_length
from data_course;

##add strings together (concat)

select concat(message,author) as new 
from data_course
where id = '103';

select CURRENT_USER;

select * from data_course;

lock table data_course write;

select * from data_course;

insert into data_course
(id,message,author)
values ('104', 'data lock', 'working');



lock table data_course write;

commit;

select * from data_course;

lock table data_course t read;
select * from data_course t;

insert into data_course
(id, message, author)
values('106', 'trying to see if its truly locked', 'testing');

select * from data_course;





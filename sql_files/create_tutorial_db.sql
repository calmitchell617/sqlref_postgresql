CREATE DATABASE tutorialdb;
\c tutorialdb;

create table student (id int, name varchar(50), grad_year int);
insert into student values
(1, 'Steve Rogers', 2021),
(2, 'Tony Stark', 2022),
(3, 'Natasha Romanoff', 2022),
(4, 'Wanda Maximoff', 2022),
(5, 'Thor Odinson', 2022),
(6, 'Pepper Potts', 2022),
(7, 'Hope van Dyne', 2000),
(8, 'Stephen Strange', 2022),
(9, 'T''Challa', 2022),
(10, 'Nick Fury', 2000);

create table course (course_code varchar(3), name varchar(50), start_date date);
insert into course values
('MTH', 'Math', '1/1/2019'),
('ENG', 'English', '9/1/2019'),
('SCI', 'Science', '9/1/2019');

create table assignment (id int, name varchar(50), course_code varchar(3), due_date date);
insert into assignment values
(1, 'Addition', 'MTH', '1/15/2019'),
(2, 'Subtraction', 'MTH', '2/1/2019'),
(3, 'Grammar', 'ENG', '9/15/2019'),
(4, 'Spelling', 'ENG', '10/1/2019'),
(5, 'Gravity', 'SCI', '9/15/2019'),
(6, 'Light', 'SCI', '10/1/2019'),
(7, 'Particles', 'SCI', '11/1/2019');

create table assignment_with_nulls (id int, name varchar(50), course_code varchar(3), due_date date);
insert into assignment_with_nulls values
(1, null, 'MTH', '1/15/2019'),
(2, 'Subtraction', 'MTH', '2/1/2019'),
(null, 'Grammar', 'ENG', '9/15/2019'),
(4, null, 'ENG', '10/1/2019'),
(5, 'Gravity', 'SCI', '9/15/2019'),
(null, 'Light', 'SCI', '10/1/2019'),
(null, 'Particles', 'SCI', '11/1/2019');

create table submission (student_id int, assignment_id int, grade int, submission_date date, method varchar(50));
insert into submission values
(1, 3, 85, '9/14/2019', 'In person'),
(1, 4, 93, '10/1/2019', 'In person'),
(2, 1, 100, '1/14/2019', 'Online'),
(2, 2, 100, '2/1/2019', 'In person'),
(2, 3, 100, '9/13/2019', 'Online'),
(2, 4, 100, '10/1/2019', 'Online'),
(2, 5, 100, '9/15/2019', 'In person'),
(2, 6, 100, '10/1/2019', 'Online'),
(2, 7, 100, '10/27/2019', 'In person'),
(3, 1, 84, '1/15/2019', 'In person'),
(3, 2, 98, '2/1/2019', 'Online'),
(4, 5, 100, '9/13/2019', 'In person'),
(4, 6, 76, '10/2/2019', 'In person'),
(4, 7, 85, '10/28/2019', 'Online'),
(6, 1, 82, '1/14/2019', 'Online'),
(6, 2, 100, '2/4/2019', 'Online'),
(6, 3, 90, '9/14/2019', 'In person'),
(6, 4, 92, '10/1/2019', 'In person'),
(8, 5, 89, '9/15/2019', 'In person'),
(8, 6, 85, '10/1/2019', 'In person'),
(8, 7, 82, '11/12/2019', 'In person'),
(9, 3, 98, '9/14/2019', 'Online'),
(9, 4, 95, '10/1/2019', 'In person');

create table submission_with_nulls (student_id int, assignment_id int, grade int, submission_date date, method varchar(50));
insert into submission_with_nulls values
(1, null, 85, '9/14/2019', 'In person'),
(1, 4, 93, '10/1/2019', 'In person'),
(2, 1, 100, '1/14/2019', 'Online'),
(2, null, 100, '2/1/2019', 'In person'),
(2, 3, 100, '9/13/2019', 'Online'),
(2, null, 100, '10/1/2019', 'Online'),
(2, null, 100, '9/15/2019', 'In person'),
(2, 6, 100, '10/1/2019', 'Online'),
(2, 7, 100, '10/27/2019', 'In person'),
(3, 1, 84, '1/15/2019', 'In person'),
(3, 2, 98, '2/1/2019', 'Online'),
(4, 5, 100, '9/13/2019', 'In person'),
(4, null, 76, '10/2/2019', 'In person'),
(4, 7, 85, '10/28/2019', 'Online'),
(6, 1, 82, '1/14/2019', 'Online'),
(6, null, 100, '2/4/2019', 'Online'),
(6, 3, 90, '9/14/2019', 'In person'),
(6, 4, 92, '10/1/2019', 'In person'),
(8, null, 89, '9/15/2019', 'In person'),
(8, null, 85, '10/1/2019', 'In person'),
(8, 7, 82, '11/12/2019', 'In person'),
(9, 3, 98, '9/14/2019', 'Online'),
(9, 4, 95, '10/1/2019', 'In person');
use t177.sql
select * FROM courses LIMIT 5;
SELECT * from assignments limit 3;


SELECT title, due_date from assignments where course_id='COMP1234';
select min(due_date),course_id from assignments;
select max(due_date),course_id FROM assignments;
select title,course_id FROM assignments where due_date='2024-10-08';
select title,due_date,course_id from assignments where due_date like '2024-10%';
select due_date,course_id from assignments where status='Completed' and due_date NOT like '2025%';


select count(*) from assignments where status='Not Started';
select course_id,course_name from courses where lab_time like 'Tue%';


join 
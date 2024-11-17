--- 14-11-2024 13:25:10
--- t177.db
select * FROM courses LIMIT 5;

--- 14-11-2024 13:25:48
--- t177.db
SELECT * from assignments limit 3;

--- 14-11-2024 13:26:42
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: courses
 ----- 
SELECT title,due_date from assignments where courses='COMP1234';
*****/

--- 14-11-2024 13:27:02
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: course
 ----- 
SELECT title,due_date from assignments where course='COMP1234';
*****/

--- 14-11-2024 13:27:13
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: course
 ----- 
SELECT title, due_date from assignments where course='COMP1234';
*****/

--- 14-11-2024 13:27:49
--- t177.db
SELECT title, due_date from assignments where course_id='COMP1234';

--- 14-11-2024 13:28:46
--- t177.db
select min(due_date) from assignments;

--- 14-11-2024 13:29:26
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such column: course_name
 ----- 
select min(due_date),course_id, course_name from assignments;
*****/

--- 14-11-2024 13:29:37
--- t177.db
select min(due_date),course_id from assignments;

--- 14-11-2024 13:35:38
--- t177.db
/***** ERROR ******
SQLITE_ERROR: sqlite3 result code 1: no such function: top
 ----- 
SELECT top(due_date),course_id from assignments;
*****/

--- 14-11-2024 13:37:19
--- t177.db
select title,course_id FROM assignments where due_date='2024-10-08';

--- 14-11-2024 13:37:47
--- t177.db
SELECT max(due_date),course_id from assignments;

--- 14-11-2024 13:38:19
--- t177.db
select max(due_date),course_id FROM assignments;

--- 14-11-2024 13:39:17
--- t177.db
select title,due_date,course_id from assignments where due_date like '2024-10%';

--- 14-11-2024 13:40:17
--- t177.db
select due_date,course_id from assignments where status='Completed';

--- 14-11-2024 13:41:05
--- t177.db
select due_date,course_id from assignments where status='Completed' and due_date NOT like '2025%';

--- 14-11-2024 13:43:14
--- t177.db
select count(*) from assignments where status='Not Started';

--- 14-11-2024 13:44:53
--- t177.db
select course_id,course_name from courses where lab_time like 'Tue%';

--- 14-11-2024 13:46:49
--- t177.db
select due_date,course_id from assignments where status='Completed' and due_date NOT like '2025%';

--- 14-11-2024 13:47:43
--- t177.db
select due_date,course_id from assignments where status='Completed' and due_date NOT like '2025%';


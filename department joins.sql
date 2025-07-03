create database departments 
create table departments_table ( department_id int, department_name char (30))
insert into departments_table values ( 1,'human_resource'), (2,'finance'),(3,'IT'),(4,'marketing')
create table employees_table ( employees_id int, first_name char(30), last_name char(30), department_id int, salary int )
insert into employees_table values ( 101,'alice','smith',1,50000),(102,'bob','johnson',2,60000),(103,'carol','lee',3,75000),(104,'david','kim',null,45000),(105,'eva','brown',4,52000)
create table projects_table ( project_id int, project_name char (30), department_id int )
insert into projects_table values ( 1001,'HR_automation',1),(1002,'budget_tracker',2),(1003,'IT_helpdesk_setup',3),(1004,'product_launch_plan',null)
select * from departments_table
select * from employees_table
select * from projects_table
select employees_table.first_name, employees_table.last_name, departments_table.department_name from employees_table join departments_table on employees_table.department_id = departments_table.department_id
select projects_table.project_name, departments_table.department_name from projects_table join departments_table on projects_table.department_id = departments_table.department_id
select employees_table.first_name, employees_table.last_name, projects_table.project_name from employees_table inner join projects_table on employees_table.department_id = projects_table.department_id 
select departments_table.department_name, employees_table.first_name, employees_table.last_name from departments_table left join employees_table on departments_table.department_id = employees_table.department_id
SELECT projects_table.project_name,departments_table.department_name FROM projects_table LEFT JOIN departments_table ON projects_table.department_id = departments_table.department_id;
SELECT departments_table.department_name, projects_table.project_name FROM departments_table LEFT JOIN projects_table ON departments_table.department_id = projects_table.department_id;
SELECT departments_table.department_name, employees_table.first_name, employees_table.last_name FROM departments_table LEFT JOIN employees_table ON departments_table.department_id = employees_table.department_id;
SELECT departments_table.department_name, employees_table.first_name, employees_table.last_name, projects_table.project_name FROM departments_table LEFT JOIN employees_table ON departments_table.department_id = employees_table.department_id LEFT JOIN projects_table ON departments_table.department_id = projects_table.department_id;
SELECT * FROM employees_table WHERE department_id IS NULL;
SELECT * FROM departments_table WHERE department_id NOT IN (SELECT department_id FROM employees_table WHERE department_id IS NOT NULL);

# SQL Joins: Company Structure Analysis
This project showcases 10 SQL queries based on multi-table joins between departments, employees, and projects. Includes INNER JOIN, LEFT JOIN, and subqueries to analyze relationships and missing links in a corporate structure.

This project contains a set of SQL queries based on a mock company database consisting of three tables:

- `departments_table(department_id, department_name)`
- `employees_table(employee_id, first_name, last_name, department_id, salary)`
- `projects_table(project_id, project_name, department_id)`

## 📊 Topics Covered
- INNER JOIN
- LEFT JOIN
- JOIN with NULLs
- Subqueries with NOT IN
- Real-world business data relationships

## 🔍 Queries Solved
1. Retrieve employees with department names
2. List project names with department names
3. Employees and their projects within departments
4. Employees with department names (include those with NULL dept)
5. Departments and employee names (even if no employees)
6. Projects and their departments (even if department missing)
7. Departments and projects (even if no project)
8. Departments and employees under them (even if none)
9. Departments, employees, and projects (with NULL handling)
10. Employees with no department & departments with no employees

---

-- Data Engineering 
Drop table if exists departments;
Drop table if exists dept_emp;
Drop table if exists dept_manager;
Drop table if exists employees;
Drop table if exists salaries;
Drop table if exists titles;

CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR(30) NOT NULL);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL );
	
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL);

CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL);
	
CREATE TABLE titles (
	title_id VARCHAR(30) NOT NUll,
	title VARCHAR(30) NOT NULL);
	
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no)
REFERENCES employees (emp_no);

select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles



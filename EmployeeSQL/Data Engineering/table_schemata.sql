-- Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL UNIQUE,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

select * from employees


-- Create departments table
create table departments (
	dept_no VARCHAR(8) primary key NOT NULL,
	dept_name VARCHAR(40) NOT NULL
);

select * from departments 

-- Create department employee table
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

Select * from dept_emp


-- Create Department manager table
create table dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);
Select * from dept_manager

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR(40) NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	PRIMARY KEY (title_id),
	FOREIGN KEY (emp_title_id) REFERENCES employees (emp_title_id)
);
Select * from titles

-- Create salaries table
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
    foreign key (emp_no) references employees (emp_no)
);


Select * from salaries



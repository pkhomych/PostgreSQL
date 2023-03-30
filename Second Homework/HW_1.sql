--1. Создать таблицу employees
--- 	id. serial,  primary key,
--- 	employee_name. Varchar(50), not null
--2. Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name Varchar(50) not null
);

-- Наполнил таблицу с помощью Python скрипта 

-- cursor = conn.cursor()

-- for i in range(0, 70):

--     if conn:

--         values_name = "'" + names.get_full_name() + "'"

--         insert_query = 'insert into public.employees(employee_name)' \
--                        'values (' + values_name + ')'

--         cursor.execute(insert_query)
--         conn.commit()

-- cursor.close()
-- conn.close()


select * 
  from employees;	
 
  
-- 3. Создать таблицу salary1
-- 		id. Serial . primary key,
--		monthly_salary. Int, not null
-- 4. Наполнить таблицу salary 15 строками

 create table salary (
 	id serial primary key,
 	monthly_salary int not null
 );
 
-- Наполнил таблицу с помощью Python скрипта 

-- cursor = conn.cursor()

-- for i in range(0, 15):

--     if conn:

--         values_salary = str(random.randrange(300, 4000, 200))

--         insert_query = 'insert into public.salary(monthly_salary)' \
--                        'values (' + values_salary + ')'

--         cursor.execute(insert_query)
--         conn.commit()

-- cursor.close()
-- conn.close()

select * 
  from salary


-- 5. Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
-- 6. Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values  (1, 4),
		(2, 6),
		(3, 13),
		(4, 2),
		(5, 16),
		(6, 11),
		(7, 14),
		(8, 4),
		(9, 7),
		(10, 1),
		(11, 2),
		(12, 3),
		(13, 4),
		(14, 5),
		(15, 6),
		(16, 7),
		(17, 8),
		(18, 9),
		(19, 10),
		(20, 11),
		(21, 12),
		(22, 13),
		(23, 14),
		(24, 15),
		(25, 16),
		(26, 1),
		(27, 2),
		(28, 3),
		(29, 4),
		(30, 5),
		(71, 6),
		(72, 7),
		(73, 8),
		(74, 9),
		(75, 10),
		(76, 11),
		(77, 12),
		(78, 13),
		(79, 14),
		(80, 15),
		(81, 16);

 
--7. 	Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--8. Поменять тип столба role_name с int на varchar(30)
--9. Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name set data type varchar(30);

insert into roles (role_name)
values  ('Software developer'),
		('Compliance Officer'),
		('Risk Manager'),
		('Enterprise Architect'),
		('Full Stack Engineer'),
		('Business Analyst'),
		('Devops Engineer'),
		('Strategy Manager'),
		('Machine Learning Engineer'),
		('Data Engineer'),
		('Java Developer'),
		('Product Manager'),
		('HR Manager'),
		('Corporate Recruiter'),
		('Automation Engineer'),
		('Sales Manager'),
		('UX Designer'),
		('Finance Manager'),
		('Scrum Master'),
		('QA Engineer');


--10. Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11. Наполнить таблицу roles_employee 40 строками:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_employee (role_id, employee_id)
values  (1,2),
		(2,5),
		(3,9),
		(4,11),
		(5,15),
		(6,19),
		(7,22),
		(8,24),
		(9,27),
		(10,31),
		(11,35),
		(12,36),
		(13,42),
		(14,48),
		(15,44),
		(16,55),
		(17,51),
		(18,53),
		(19,67),
		(20,68),
		(20,3),
		(19,6),
		(18,8),
		(17,12),
		(16,14),
		(15,18),
		(14,21),
		(13,23),
		(12,26),
		(11,32),
		(10,34),
		(9,37),
		(8,41),
		(7,43),
		(6,47),
		(5,52),
		(4,54),
		(3,56),
		(2,65),
		(1,69);

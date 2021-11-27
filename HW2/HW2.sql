--1)Таблица employees
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Просмотрим результат создания таблицы employees
select * from employees;

--Наполнить таблицу employee 70 строками

insert into employees (id, employee_name)
values (1 , 'Donna Hicks'),
       (2 , 'John Manuel'),
       (3 , 'Ralph Vining'),
       (4 , 'Todd Dalton'),
       (5 , 'Ella Holmes'),
       (6 , 'Judy Cas'),
       (7 , 'Anthony Scott'),
       (8 , 'Yvonne Galante'),
       (9 , 'Leann Corner'),
       (10 , 'Jose Dossett'),
       (11 , 'Hilda Perrine'),
       (12 , 'William Rush'),
       (13 , 'Michael Maner'),
       (14 , 'Mark Egan'),
       (15 , 'Rebecca Lewis'),
       (16 , 'Theron Jones'),
       (17 , 'Ofelia Felix'),
       (18 , 'Catherine Roussel'),
       (19 , 'Sandra Felt'),
       (20 , 'Carl Cremeans'),
       (21 , 'Barbara Spaniel'),
       (22 , 'Minerva Gant'),
       (23 ,'Frances Brashears'),
       (24 , 'Antonio White'),
       (25 , 'Tamie Turner'),
       (26 , 'Leroy Kelly'),
       (27 , 'Tyree Fowler'),
       (28 , 'David Hill'),
       (29 , 'Danielle Depasquale'),
       (30 , 'Ira Mathis'),
       (31 , 'Larry Quinn'),
       (32 , 'Brenda Grady'),
       (33 , 'Elizabeth Brockman'),
       (34 , 'Charles Lindsey'),
       (35 , 'Jeffrey Barnes'),
       (36 , 'Iris Venhorst'),
       (37 , 'Chad Harrison'),
       (38 , 'Michelle Cleveland'),
       (39 , 'Judy Koch'),
       (40 , 'Charles Ballard'),
       (41 , 'Wayne Collins'),
       (42 , 'Sandy Singletary'),
       (43 , 'Cynthia Jones'),
       (44 , 'Lillian Modzelewski'),
       (45 , 'Michael Lewis'),
       (46 , 'David Gassoway'),
       (47 , 'Sabrina Patrick'),
       (48 , 'Mona Floyd'),
       (49 , 'David Rhea'),
       (50 , 'Darryl Freeman'),
       (51 , 'Michele Couture'),
       (52 , 'Ramon Mccarty'),
       (53 , 'Mark Graham'),
       (54 , 'Bradford Coffey'),
       (55 , 'Melissa Margulis'),
       (56 , 'Charles Gabel'),
       (57 , 'Frank Gomez'),
       (58 , 'Michael Bennett'),
       (59 , 'Salvatore Viveiros'),
       (60 , 'Eliza Pope'),
       (61 , 'Michelle Hartung'),
       (62 , 'Michael Patrick'),
       (63 , 'Stephen Johnson'),
       (64 , 'Jamie Hester'),
       (65 , 'Christopher Boyd'),
       (66 , 'Stacy Lewis'),
       (67 , 'Kenneth Mauldin'),
       (68 , 'Yvonne Barrientos'),
       (69 , 'Jason Williams'),
       (70 , 'James Harrison')
;


--Таблица salary
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Просмотрим результат создания таблицы salary
select * from salary;

--Наполнить таблицу salary 17 строками:
--- 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 2600
--Внесем значения в таблицу salary
insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500),
       (2600);
       
--Просмотрим результат редактирования таблицы salary
select * from salary;



--Таблица employee_salary
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--Просмотрим результат таблицы employee_salary
select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(id, employee_id, salary_id)
values (1, 3, 7),
       (2, 1, 4),
       (3, 5, 9),
       (4, 40, 13),
       (5, 100, 4),
       (6, 11, 2),
       (7, 52, 10),
       (8, 15, 13),
       (9, 26, 4),
       (10, 93, 1),
       (11, 33, 7),
       (12, 53, 6),
       (13, 88, 3),
       (14, 14, 9),
       (15, 7, 17),
       (16, 99, 18),
       (17, 87, 7),
       (18, 57, 17),
       (19, 65, 28),
       (20, 34, 24),
       (21, 39, 27),
       (22, 13, 37),
       (23, 43, 11),
       (24, 25, 7),
       (25, 49, 18),
       (26, 23, 24),
       (27, 54, 28),
       (28, 51, 7),
       (29, 44, 7),
       (30, 71, 19),
       (31, 17, 99),
       (32, 4, 23),
       (33, 55, 45),
       (34, 16, 50),
       (35, 60, 19),
       (36, 19, 90),
       (37, 45, 50),
       (38, 83, 60),
       (39, 70, 80),
       (40, 77, 88)
;

--Просмотрим результат редактирования таблицы salary
select * from employee_salary;


--Таблица roles
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Просмотрим результат создания таблицы roles
select * from roles;


--Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer')
;

--Просмотрим результат редактирования таблицы roles
select * from roles;

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id) 
		references employees (id),
	role_id int not null,
	foreign key (role_id) 
		references roles (id)
);

--Просмотрим результат создания таблицы roles_employee
select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(id, employee_id, role_id)
values (1, 7, 2),
       (2, 20, 4),
       (3, 3, 9),
       (4, 5, 13),
       (5, 23, 4),
       (6, 11, 2),
       (7, 10, 9),
       (8, 22, 13),
       (9, 21, 3),
       (10, 34, 4),
       (11, 25, 5),
       (12, 4, 20),
       (13, 6, 5),
       (14, 8, 15),
       (15, 9, 16),
       (16, 12, 17),
       (17, 13, 18),
       (18, 14, 19),
       (19, 15, 20),
       (20, 16, 2),
       (21, 17, 2),
       (22, 18, 1),
       (23, 19, 1),
       (24, 24, 6),
       (25, 26, 7),
       (26, 27, 1),
       (27, 28, 1),
       (28, 29, 5),
       (29, 30, 19),
       (30, 31, 15),
       (31, 32, 15),
       (32, 33, 14),
       (33, 35, 13),
       (34, 36, 13),
       (35, 37, 19),
       (36, 38, 17),
       (37, 39, 4),
       (38, 41, 11),
       (39, 42, 14),
       (40, 43, 18)
;
-- Подключится к 
-- Host: 159.69.151.133
-- Port: 5056
-- DB: qa_ddl_24_199
-- User: user_24_199
-- Pass: 123


--  1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.employee_id;

--  2. Вывести всех работников у которых ЗП меньше 2000.

select employee_name, monthly_salary from employee_salary
join employees on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.employee_id
where monthly_salary < 2000;

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary,  employee_name, role_name from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
right join roles r on r.id = re.role_id
where employee_name is null;

--  4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary,  employee_name, role_name from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
right join roles r on r.id = re.role_id
where employee_name is null
and monthly_salary < 2000;

--  5. Найти всех работников кому не начислена ЗП.

select employee_name, roles.role_name, monthly_salary from employees
join roles_employee
	on roles_employee.employee_id = employees.id
join roles
	on roles.id = roles_employee.role_id
left join salary
	on salary.id = roles_employee.role_id;

--  6. Вывести всех работников с названиями их должности.

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
;
--  7. Вывести имена и должность только Java разработчиков.

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like '%Java %';

--  8. Вывести имена и должность только Python разработчиков.

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like '%Python %';

--  9. Вывести имена и должность всех QA инженеров.
select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like '%QA engineer%';

--  10. Вывести имена и должность ручных QA инженеров.

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like '%Manual_QA %';

--  11. Вывести имена и должность автоматизаторов QA

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like '%Automation_QA %';

--  12. Вывести имена и зарплаты Junior специалистов

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like 'Junior%';

--  13. Вывести имена и зарплаты Middle специалистов

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like 'Middle%';

--  14. Вывести имена и зарплаты Senior специалистов

select role_name, employee_name from roles
join roles_employee
	on roles.id = roles_employee.role_id
join employees
	on employees.id = roles_employee.employee_id
where role_name like 'Senior%';

--  15. Вывести зарплаты Java разработчиков

select distinct monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%Java_%';

--  16. Вывести зарплаты Python разработчиков

select distinct monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%Python_%';

--  17. Вывести имена и зарплаты Junior Python разработчиков

select employee_name, monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like 'Junior%Python%developer';

--  18. Вывести имена и зарплаты Middle JS разработчиков

select employee_name, monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like 'Middle%JavaScript%developer';

--  19. Вывести имена и зарплаты Senior Java разработчиков

select employee_name, monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like 'Senior%Java%developer';

--  20. Вывести зарплаты Junior QA инженеров

select distinct monthly_salary from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like 'Junior%QA%engineer';

--  21. Вывести среднюю зарплату всех Junior специалистов

select AVG(monthly_salary) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like 'Junior%';

--  22. Вывести сумму зарплат JS разработчиков

select SUM(monthly_salary) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%JavaScript%developer';

--  23. Вывести минимальную ЗП QA инженеров

select MIN(monthly_salary) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%QA%engineer';

--  24. Вывести максимальную ЗП QA инженеров

select MAX(monthly_salary) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%QA%engineer';

--  25. Вывести количество QA инженеров

select count(*) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%QA%engineer'
and employee_name is not null;

--  26. Вывести количество Middle специалистов.

select count(*) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%Middle%'
and employee_name is not null;

--  27. Вывести количество разработчиков

select count(*) from employee_salary es
full join salary s on s.id = es.salary_id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on re.employee_id = e.id
full join roles r on r.id = re.role_id
where role_name like '%developer%'
and employee_name is not null;

--  28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(monthly_salary) from salary s
full join employee_salary es on es.salary_id = s.id
full join roles_employee re on re.employee_id = es.employee_id
full join employees e on e.id = re.employee_id
full join roles r on r.id = re.role_id
where role_name like '%developer';

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select employee_name, role_name, monthly_salary from salary s
join employee_salary es on es.salary_id = s.id
join roles_employee re on re.employee_id = es.employee_id
join employees e on e.id = re.employee_id
join roles r on r.id = re.role_id
order by role_name asc, monthly_salary asc;

--  30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_name, monthly_salary from salary s
join employee_salary es on es.salary_id = s.id
join roles_employee re on re.employee_id = es.employee_id
join employees e on e.id = re.employee_id
join roles r on r.id = re.role_id
where monthly_salary between '1700' and '2300'
order by role_name, monthly_salary asc;

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_name, monthly_salary from salary s
join employee_salary es on es.salary_id = s.id
join roles_employee re on re.employee_id = es.employee_id
join employees e on e.id = re.employee_id
join roles r on r.id = re.role_id
where monthly_salary < 2300
order by role_name, monthly_salary asc;

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_name, monthly_salary from salary s
join employee_salary es on es.salary_id = s.id
join roles_employee re on re.employee_id = es.employee_id
join employees e on e.id = re.employee_id
join roles r on r.id = re.role_id
where monthly_salary in (1100, 1500, 2000)
order by role_name, monthly_salary asc;
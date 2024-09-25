-- Week 3 code --------------

SELECT last_name, school, salary FROM teachers;
SELECT last_name, school, salary FROM teachers
	ORDER BY salary DESC;
SELECT last_name, school, salary FROM teachers
	ORDER BY 1 ASC;
SELECT DISTINCT school FROM teachers ORDER BY school;

--Where 문
SELECT last_name, school, salary FROM teachers
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	WHERE salary >= 40000
	ORDER BY salary DESC;

SELECT last_name, school, salary FROM teachers
	WHERE salary BETWEEN 20000 AND 40000
	ORDER BY salary DESC;

SELECT first_name, last_name, school, salary FROM teachers
	WHERE last_name ILIKE 'S%' OR first_name ILIKE 'S%'
	ORDER BY salary DESC;

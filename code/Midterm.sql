-- #1. 테이블 생성
--1. 
CREATE TABLE course (
	id bigserial,
	name varchar(25),
	teacher_id numeric
);

INSERT INTO course(name, teacher_id)
VALUES ('Database design', 1),
	('English literature', 2),
	('Python programming', 1);

SELECT * FROM course;
--2.
CREATE TABLE student (
	id bigserial,
	first_name varchar(25),
	last_name varchar(25)
);

INSERT INTO student(first_name, last_name)
VALUES ('Shreya', 'Bain'),
	('Rianna', 'Foster'),
	('Yosef', 'Navlor');

SELECT * FROM student;
--3.
CREATE TABLE student_course (
	student_id numeric,
	course_id numeric
);

INSERT INTO student_course(student_id, course_id)
VALUES (1, 2),
	(1, 3),
	(2, 1),
	(2, 2),
	(2, 3),
	(3, 1);

SELECT * FROM student_course;
--4.
CREATE TABLE teacher (
	id bigserial,
	first_name varchar(25),
	last_name varchar(25)
);

INSERT INTO teacher(first_name, last_name)
VALUES ('Taylah', 'Booker'),
	('Sarah-Louise', 'Blake');
SELECT * FROM teacher;

--#2. 테이블 조인하기
--1. student 테이블을 student_course에 조인하세요.
SELECT * FROM student JOIN student_course ON student.id = student_course.student_id;
--2.course 테이블을 Student_course에 조인하세요.
SELECT * FROM course JOIN student_course ON course.id = student_course.course_id;
--3.teacher 테이블을 course에 조인하세요.
SELECT * FROM teacher JOIN course ON teacher.id = course.teacher_id;


--# 3. 데이터를 살펴보기
--1. 모든 학생의 이름 조회
SELECT first_name, last_name FROM student;
--2. Taylah Brooker가 가르친 모든 과정을 표시합니다.
SELECT * FROM course WHERE course.teacher_id = 1;
--3. 성이 "B"로 시작하는 모든 학생과 교사를 표시합니다.
SELECT * FROM student, teacher WHERE student.last_name LIKE 'B%';

-- 학생 테이블생성
CREATE TABLE 학생 ( 
	학번 CHAR(4) NOT NULL,
	이름 VARCHAR(20) NOT NULL,
	주소 VARCHAR(50) NULL DEFAULT '미정',
	학년 INT NOT NULL,
	나이 INT NULL,
	성별 CHAR(1) NOT NULL,
	휴대폰번호 CHAR(14) NULL,
	소속학과 VARCHAR(20) NULL,
	PRIMARY KEY (학번) 
);

-- 과목 테이블 생성
CREATE TABLE 과목 (
	과목번호 CHAR(4) NOT NULL PRIMARY KEY,
	이름 VARCHAR(20) NOT NULL,
	강의실 CHAR(3) NOT NULL,
	개설학과 VARCHAR(20) NOT NULL,
	시수 INT NOT NULL 
);

-- 수강 테이블 생성
CREATE TABLE 수강
	( 학번 CHAR(6) NOT NULL,
	과목번호 CHAR(4) NOT NULL,
	신청날짜 DATE NOT NULL,
	중간성적 INT NULL DEFAULT 0,
	기말성적 INT NULL DEFAULT 0,
	평가학점 CHAR(1) NULL,
	PRIMARY KEY( 학번, 과목번호) 
);

-- 학생 테이블입력
INSERT INTO 학생 VALUES ('s001', '김연아', '서울 서초', 4, 23, '여', '010-1111-2222', '컴퓨터');
INSERT INTO 학생 VALUES ('s002', '홍길동', DEFAULT, 1, 26, '남', NULL, '통계');
INSERT INTO 학생 VALUES ('s003', '이승엽', NULL, 3, 30, '남', NULL, '정보통신');
INSERT INTO 학생 VALUES ('s004', '이영애', '경기 분당', 2, NULL, '여', '010-4444-5555', '정보통신');
INSERT INTO 학생 VALUES ('s005', '송윤아', '경기 분당', 4, 23, '여', '010-6666-7777', '컴퓨터');
INSERT INTO 학생 VALUES ('s006', '홍길동', '서울 종로', 2, 26, '남', '010-8888-9999', '컴퓨터');
INSERT INTO 학생 VALUES ('s007', '이온진', '경기 과천', 1, 23, '여', '010-2222-3333', '경영') ;


-- 괴목 테이블 입력
INSERT INTO 과목
VALUES
	('c001', '데이터베이스', '126', '컴퓨터', 3),
	('c002', '정보보호', '137', '정보통신', 3),
	('c003', '모바일웹', '128', '컴퓨터', 3),
	('c004', '철학개론', '117', '철학', 2),
	('c005', '전공글쓰기', '120', '교양학부', 1)

-- 수강 테이블 입력
INSERT INTO 수강
VALUES
	('s001', 'c002', '2019-09-03', 93, 98, 'A'),
	('s004', 'c005', '2019-03-03', 72, 78, 'C'),
	('s003', 'c002', '2017-09-06', 85, 82, 'B'),
	('s002', 'c001', '2018-03-10', 31, 50, 'F'),
	('s001', 'c004', '2019-03-05', 82, 89, 'B'),
	('s004', 'c003', '2020-09-03', 91, 94, 'A'),
	('s001', 'c005', '2020-09-03', 74, 79, 'C'),
	('s003', 'c001', '2019-03-03', 81, 82, 'B'),
	('s004', 'c002', '2018-03-05', 92, 95, 'A')

--TABLE 확인
TABLE 학생; --SELECT * FROM 학생
TABLE 과목;
TABLE 수강;

--SELECT 문
SELECT 이름, 주소 FROM 학생;

SELECT DISTINCT 소속학과 FROM 학생;

SELECT 이름, 학년, 소속학과, 휴대폰번호 FROM 학생
WHERE 학년 = 2 AND 소속학과 = '컴퓨터';

SELECT 이름, 학년, 소속학과, 휴대폰번호 FROM 학생
WHERE (학년 BETWEEN 1 AND 3) OR NOT 소속학과 = '컴퓨터';


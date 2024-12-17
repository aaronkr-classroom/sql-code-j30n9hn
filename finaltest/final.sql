CREATE TABLE 교수 ( 
	교번 CHAR(4) NOT NULL,
	교수명 VARCHAR(20) NOT NULL,
	PRIMARY KEY (교번) 
);

CREATE TABLE 강의 ( 
	강의실번호 CHAR(4) NOT NULL,
	교번 VARCHAR(20) NOT NULL,
	과목번호 VARCHAR(50) NOT NULL,
	PRIMARY KEY (강의실번호, 교번, 과목번호)
);

CREATE TABLE 강의실 ( 
	강의실번호 CHAR(4) NOT NULL,
	좌석수 VARCHAR(20) NOT NULL,
	PRIMARY KEY (강의실번호)
);

CREATE TABLE 교과목 ( 
	과목번호 CHAR(4) NOT NULL,
	과목명 VARCHAR(20) NOT NULL,
	PRIMARY KEY (과목번호)
);

CREATE TABLE 수강신청 ( 
	과목번호 CHAR(4) NOT NULL,
	신청날짜 VARCHAR(20) NOT NULL,
	PRIMARY KEY (과목번호)
);

CREATE TABLE 수강취소 ( 
	과목번호 CHAR(4) NOT NULL,
	취소날짜 VARCHAR(20) NOT NULL,
	PRIMARY KEY (과목번호)
);

CREATE TABLE 학생 ( 
	학번 CHAR(4) NOT NULL,
	이름 VARCHAR(20) NOT NULL,
	PRIMARY KEY (학번)
);

CREATE TABLE 멘토링 ( 
	학번 CHAR(4) NOT NULL,
	PRIMARY KEY (학번)
--1.create a database NIKHIL ANALYTICS
CREATE DATABASE NIKHIL_ANALYTICS
USE NIKHIL_ANALYTICS

--2.Create STUDENT_INFO table with following columns 

CREATE TABLE STUDENT_INFO(YEAR VARCHAR(4)NOT NULL CHECK(LEN(YEAR)=4),SEQUENCENO INT IDENTITY(1,1),
STUDENT_ID AS ('STD_' +YEAR + '_' + RIGHT('00'+CONVERT(VARCHAR(2),SEQUENCENO),2))PERSISTED PRIMARY KEY,
NAME VARCHAR(20)NOT NULL,
ADDRESS VARCHAR(90) NOT NULL,
PHONE_NO VARCHAR(10) NOT NULL CHECK(LEN(PHONE_NO)=10 and PHONE_NO LIKE '%[0-9]%'),
EMAIL_ID VARCHAR(30) NOT NULL CHECK(EMAIL_ID LIKE '%@%'),
QUALIFICATION1 VARCHAR(50),
QUALIFICATION2 VARCHAR(50),
EXPERICENCE FLOAT,
COMPANY_NAME VARCHAR(50),
COURSE_OPTED1 VARCHAR(50) NOT NULL check(COURSE_OPTED1 IN ('REPORTING ANALYSIS POWER PACK',
'BUSINESS ANALYTICS POWER PACK' ,
'DATA ANALYTICS POWER PACK ',
'DATA SCIENCE MODELLING & MACHINE LEARNING')),
COURSE_OPTED2 VARCHAR(50) NOT NULL check(COURSE_OPTED2 IN ('REPORTING ANALYSIS POWER PACK',
'BUSINESS ANALYTICS POWER PACK' ,
'DATA ANALYTICS POWER PACK ',
'DATA SCIENCE MODELLING & MACHINE LEARNING')),
COURSE_OPTED3 VARCHAR(50) NOT NULL check(COURSE_OPTED3 IN ('REPORTING ANALYSIS POWER PACK',
'BUSINESS ANALYTICS POWER PACK' ,
'DATA ANALYTICS POWER PACK ',
'DATA SCIENCE MODELLING & MACHINE LEARNING')),
ADMISSION_DATE DATE NOT NULL,
EXPECTED_END_DATE DATE
)
  
--3.Create R_marks_info table with following columns
CREATE TABLE R_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
TEST1 FLOAT,
TEST2 FLOAT,
TEST3 FLOAT,
RETEST1 FLOAT,
RETEST2 FLOAT,
RETEST3 FLOAT)


--4.Create SAS_marks_info table with following columns
CREATE TABLE SAS_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
MT1 FLOAT,
MT2 FLOAT,
DATA_STEP_TEST FLOAT,
MT3 FLOAT,
PROC_TEST FLOAT,
BASE_SAS_TEST FLOAT,
RETEST1 FLOAT,
RETEST2 FLOAT,
RETEST3 FLOAT)


--5. Create SQL_marks_info table with following columns
CREATE TABLE SQL_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
SQL_TEST1 FLOAT,
SQL_TEST2 FLOAT,
RETEST1 FLOAT,
RETEST2 FLOAT)


--6.Create EXCEL_marks_info table with following columns 
CREATE TABLE EXCEL_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
BASIC_EXCEL_TEST FLOAT,
MT1 FLOAT,
EXCEL_TEST1 FLOAT,
RETEST FLOAT)


--7.Create VBA_marks_info table with following columns 
CREATE TABLE VBA_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
FUNCTION_EXCEL_TEST FLOAT,
FUNCTION_VBA_TEST FLOAT,
FINAL_TEST FLOAT,
RETEST FLOAT)


--8.Create TABLEAU_marks_info table with following columns
CREATE TABLE TABLEAU_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
MT1 FLOAT,
TEST1 FLOAT,
RETEST1 FLOAT)


--9.Create PYTHON_marks_info table with following columns 
CREATE TABLE PYTHON_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
TEST1 FLOAT,
TEST2 FLOAT,
RETEST1 FLOAT,
RETEST2 FLOAT)


--10.Create ML_marks_info table with following columns  
CREATE TABLE ML_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
TEST1 FLOAT,
TEST2 FLOAT,
RETEST1 FLOAT)

--11.Create ASAS_marks_info table with following columns 
CREATE TABLE ASAS_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
MT1 FLOAT,
MT2 FLOAT,
FINAL_TEST FLOAT,
RETEST FLOAT)

--12.Create FULL_LENGTH_marks_info table with following columns  
CREATE TABLE FULL_LENGTH_MARKS_INFO(STUDENT_ID VARCHAR(11) FOREIGN KEY REFERENCES STUDENT_INFO(STUDENT_ID),
CLASS_START_DATE DATE,
CLASS_END_DATE DATE,
FACULTY VARCHAR(50) NOT NULL,
R_TEST FLOAT,
SAS_TEST FLOAT,
SQL_TEST FLOAT,
EXCEL_TEST FLOAT,
VBA_TEST FLOAT,
PYTHON_TEST FLOAT,
TABLEAU_TEST FLOAT)

--13.Create Placement_Activity table with following columns 
CREATE TABLE PLACEMENT_ACTIVITY_INFO(Student_ID varchar(11) Foreign Key References STUDENT_INFO(STUDENT_ID),
Mock_interview1 varchar(50),
Mock_interview2 varchar(50),
Mock_interview3 varchar(50),
Resume_Finalised varchar(50),
Profile_Building varchar(50),
Certificate_Issued varchar(10) Not Null check(Certificate_Issued IN ('YES','NO')),
Actual_course_enddate date)
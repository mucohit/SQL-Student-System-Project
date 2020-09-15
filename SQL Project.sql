CREATE TABLE Students( StudentName VARCHAR2(20),
 StudentLastName VARCHAR2(20),
 Student_ID NUMBER(6),
 Program VARCHAR2(20),
 Atandance Number(1),
Club_ID Number(6),
CONSTRAINT Std_Student_ID_pk PRIMARY KEY(Student_ID));


ALTER Table Student ADD CONSTRAINT Std_Bool_Atnd CHECK (Atandance IN (1,0))

ALTER table CONSTRAINT ck_testbool_ischk CHECK (is_checked IN (1,0);

CREATE TABLE Registiration( Student_ID NUMBER(6),
 Registiration_ID NUMBER(6),
 Section_ID NUMBER(6),
 RegistirationDate Date,
CONSTRAINT Reg_Registiration_ID_pk PRIMARY KEY(Registiration_ID));

CREATE TABLE Section( 
 Section_ID Number(6),
 Teacher_ID NUMBER(6),
 Course_ID NUMBER(6), 
 SectionCode VarChar2(10),
CONSTRAINT Sec_Section_ID_pk PRIMARY KEY(Section_ID));


CREATE TABLE Teacher( 
 TeacherName VARCHAR2(20),
 Teacher_ID NUMBER(6),
 TeacherLastName VARCHAR2(20), 
 Department VARCHAR2(20),
 TeacherRoom VARCHAR2(20),
CONSTRAINT Teacher_Teacher_ID_pk PRIMARY KEY(Teacher_ID));

CREATE TABLE Courses(
 CourseName VARCHAR2(230),
 Course_ID NUMBER(6),
 Section_ID NUMBER(6),
 CONSTRAINT Courses_Course_ID_pk PRIMARY KEY(Course_ID));

CREATE TABLE StudentClubs(
Club_ID Number(6),
ClubName VARCHAR(16),
ClubRoom VARCHAR(6),
CONSTRAINT StudentClubs_Club_ID_pk PRIMARY KEY(Club_ID));


CREATE TABLE Grades(
Grade_ID Number(3),
 Course_ID Number(3),
 Student_ID NUMBER(3),
 MidTerm Number(3) ,
 Final NUMBER(3),
 Assignment1 NUMBER(3),
 LetterGrade VARCHAR2(3),
CONSTRAINT Grades_Grade_ID_pk PRIMARY KEY(Grade_ID));

ALTER Table Grades ADD CONSTRAINT Grades_LetterGrade_ck Check (LetterGrade IN ('A+','A', 'B+','B', 'C+', 'C', 'D+','D','F'));

ALTER Table Grades ADD CONSTRAINT
Grades_Exams_ck Check (MidTerm<=100 AND Assignment1 <=100
AND Final <=100);

ALTER Table Grades ADD CONSTRAINT
Grades_Exams_ck Check (MidTerm>=0 AND Assignment1 >=0
AND Final >=0);



ALTER Table Registiration ADD CONSTRAINT Rgst_Student_ID_fk
FOREIGN KEY(Student_ID)REFERENCES Students(Student_ID);

ALTER Table Registiration  ADD CONSTRAINT Rgst_Section_ID_fk
FOREIGN KEY(SectionID)REFERENCES Section(Section_ID);

ALTER Table Section ADD CONSTRAINT Section_Course_ID_fk
FOREIGN KEY(Course_ID)REFERENCES Courses(Course_ID);

ALTER Table Section ADD CONSTRAINT Section_Teacher_ID_fk
FOREIGN KEY(Teacher_ID)REFERENCES Teacher(Teacher_ID);

ALTER Table Courses DROP CONSTRAINT Courses_Section_ID_fk;

ALTER Table Grades ADD CONSTRAINT Grades_Course_ID_fk
FOREIGN KEY(Course_ID)REFERENCES Courses(Course_ID);

ALTER Table Grades ADD CONSTRAINT Grades_Student_ID_fk
FOREIGN KEY(Student_ID)REFERENCES Students(Student_ID);

ALTER Table Students  ADD CONSTRAINT Student_Clubs_ID_fk
FOREIGN KEY(Club_ID)REFERENCES StudentClubs(Club_ID);



INSERTIONS
INSERT INTO Students
VALUES('Salih','Citak',1,'Software Eng',null);
INSERT INTO Students
VALUES('Mucahit','Aric',2,'Software Eng',null);
INSERT INTO Students
VALUES('Mehmet','Osanmaz',3,'Software Eng',null);
INSERT INTO Students
VALUES('John','Stone',4,'Fire Fighter',null);
INSERT INTO Students
VALUES('Emil','Aliyev',5,'Fitnees',null);
INSERT INTO Students
VALUES('Sue','King',6,'Nursing',null);
INSERT INTO Students
VALUES('Liz','Smith',7,'Political Science',null);
INSERT INTO Students
VALUES('David','Yilmaz',8,'Bussiness',null);
INSERT INTO Students
VALUES('Eduvardo','Slivio',9,'Marketing',null);
INSERT INTO Students
VALUES('Jenifer','Smith',10,'Accounting',null);

update Students set Club_ID = 1 where Student_ID = 1;
update Students set Club_ID = 3 where Student_ID = 2;
update Students set Club_ID = 4 where Student_ID = 3;
update Students set Club_ID = 2 where Student_ID = 4;
update Students set Club_ID = 2 where Student_ID = 5;
update Students set Club_ID = 1 where Student_ID = 6;
update Students set Club_ID = 4 where Student_ID = 7;
update Students set Club_ID = 5 where Student_ID = 8;
update Students set Club_ID = 7 where Student_ID = 9;
update Students set Club_ID = 6 where Student_ID = 10;





INSERT INTO Registiration
VALUES(1,10,1,DATE'2019-09-25');
INSERT INTO Registiration
VALUES(2,11,1,DATE'2018-05-14');
INSERT INTO Registiration
VALUES(3,12,3, DATE'2017-01-16');
INSERT INTO Registiration
VALUES(4,13,2, DATE'2020-09-23');
INSERT INTO Registiration
VALUES(5,14,1,DATE'2019-09-25');
INSERT INTO Registiration
VALUES(6,15,1,DATE'2020-06-01');
INSERT INTO Registiration
VALUES(7,16,1,DATE'2019-09-11');
INSERT INTO Registiration
VALUES(8,17,3,DATE'2016-11-26');
INSERT INTO Registiration
VALUES(9,18,2,DATE'2020-05-24')
INSERT INTO Registiration
VALUES(10,19,1,'11/11/11');



INSERT INTO Section
VALUES(1,1,1,'Comp202');
INSERT INTO Section
VALUES(2,2,2,'Comp206');
INSERT INTO Section
VALUES(3,3,3,'Pol102');
INSERT INTO Section
VALUES(4,4,4,'Fit101');
INSERT INTO Section
VALUES(5,5,5,'Nur105');
INSERT INTO Section
VALUES(6,6,6,'Fig103');
INSERT INTO Section
VALUES(7,7,7,'Buss205');
INSERT INTO Section
VALUES(8,8,8,'Mar205');
INSERT INTO Section
VALUES(9,9,9,'Aco205');
INSERT INTO Section
VALUES(10,10,10,'Comp106');


INSERT INTO Teacher
VALUES('Aderson',1,'Oliveria','Software Eng','F202');
INSERT INTO Teacher
VALUES('Zoran',2,'Saranjlic','Software Eng','F203');
INSERT INTO Teacher
VALUES('Josie',3,'Smith','Political Science','E101');
INSERT INTO Teacher
VALUES('Rick',4,'Novak','Fitness','F302');
INSERT INTO Teacher
VALUES('Margaret',5,'Adelman','Nursing','F102');
INSERT INTO Teacher
VALUES('Jeff',6,'Johnson','Fire Fighter','F211');
INSERT INTO Teacher
VALUES('Ronald',7,'Barr','Bussiness','F210');
INSERT INTO Teacher
VALUES('Rubby',8,'Lee','Marketing','A101');
INSERT INTO Teacher
VALUES('Jim',9,'Green','Accounting','F302');
INSERT INTO Teacher
VALUES('Mustafa',10,'Yilmaz','Software Eng','F102');



INSERT INTO Courses
VALUES('Web Application',1,1);
INSERT INTO Courses
VALUES('Data Base',2,2);
INSERT INTO Courses
VALUES('History',3,3);
INSERT INTO Courses
VALUES('Nutrition',4,4);
INSERT INTO Courses
VALUES('First Aid',5,5);
INSERT INTO Courses
VALUES('Fire Types',6,6);
INSERT INTO Courses
VALUES('Makro Economy',7,7);
INSERT INTO Courses
VALUES('Marketing Methods',8,8);
INSERT INTO Courses
VALUES('Accounting Softwares',9,9);
INSERT INTO Courses
VALUES('Java Programing',10,10);

INSERT INTO Grades
VALUES(1,11,1,70,90,50,null);
INSERT INTO Grades
VALUES(2,2,1,90,85,60,null);
INSERT INTO Grades
VALUES(3,3,6,40,30,20,null);
INSERT INTO Grades
VALUES(4,5,2,70,67,85,null);
INSERT INTO Grades
VALUES(5,11,2,100,85,75,null);
INSERT INTO Grades
VALUES(6,2,2,55,65,75,null);
INSERT INTO Grades
VALUES(7,11,3,25,35,100,null);
INSERT INTO Grades
VALUES(8,8,2,86,99,67,null);
INSERT INTO Grades
VALUES(9,9,4,65,78,92,null);
INSERT INTO Grades
VALUES(10,10,7,98,88,90,null);



INSERT INTO StudentClubs
VALUES(1,'Fishing','A301');
INSERT INTO StudentClubs
VALUES(2,'Library','L101');
INSERT INTO StudentClubs
VALUES(3,'Football','L205');
INSERT INTO StudentClubs
VALUES(4,'Tennis','L105');
INSERT INTO StudentClubs
VALUES(5,'Salling','H101');
INSERT INTO StudentClubs
VALUES(6,'Chess','A302');
INSERT INTO StudentClubs
VALUES(7,'Leadership','B101');


create sequence course_ID_sec
minvalue 1
start with 11
increment by 1;

create sequence section_ID_sec
minvalue 1
start with 11
increment by 1;

--testing sequence
Insert into courses
values('Programing 3',course_ID_sec.nextval,section_ID_sec.nextval);
select * from courses;


----------------------------------------------

CREATE OR REPLACE PROCEDURE coursename_chg_sp
(c_id IN courses.course_ID%TYPE,
c_name IN courses.coursename%TYPE
)
IS
BEGIN
UPDATE courses
SET coursename=c_name
WHERE course_id= c_id;
COMMIT;
END;
--Testing procedure
select course_id, coursename 
from courses
where course_id=6;

BEGIN
coursename_chg_sp(6,'First Aid');
END;

select * from courses;

---------------------------------------------

CREATE OR REPLACE PROCEDURE tchroom_update_sp
(t_id IN teacher.teacher_id%TYPE,
t_room IN teacher.teacherroom%TYPE
)
IS
BEGIN
UPDATE teacher
SET  teacher_id=t_id, teacherroom=t_room
WHERE teacher_id= t_id;
COMMIT;
END;

--testing procedure
select teacher_id, teacherroom
from teacher
where teacher_id=3;

BEGIN
tchroom_update_sp(3,'A102');
END;

select * from teacher where teacher_id =3;



------------------------------------------

create or replace function printstudent_sf
(s_id in number,
s_name in varchar2)
return varchar2
is
lv_student_txt varchar2(20);
Begin
lv_student_txt:= 'Student '||s_id||' - '||s_name;
Return lv_student_txt;
END;

--test Function
Declare
lv_final_name_txt varchar2(50):= '';
lv_id_num number(6):= 2;
lv_name_txt varchar2 (20):= 'Mucahit';
Begin
lv_final_name_txt:= printstudent_sf(lv_id_num,lv_name_txt);
DBMS_OUTPUT.PUT_LINE(lv_final_name_txt);
END;



---------------------------------------------------------

create or replace function printteacher_sf
(t_name in varchar2)
return varchar2
is
lv_type_txt varchar2(50);
Begin
If t_name<>'Rick' THEN 
   lv_type_txt:='The department is not Fitness';
   else
   lv_type_txt:='The department Fitness';
end if;
Return lv_type_txt;
END;

-- Testing the function
Declare
lv_teacher_txt varchar2 (50);
Begin
lv_teacher_txt:= printteacher_sf('Rick');
DBMS_OUTPUT.PUT_LINE(lv_teacher_txt);
END;
Update ingredients
set ingredients_id=8
where ingredients_id=1

select * from table(dbms_xplan.display_cursor(sql_id=>'6m3ts0kg9d235', format=>'ALLSTATS LAST'));
;


---------------------------------------
--Triggers--
CREATE OR REPLACE TRIGGER MidTerm_trg
BEFORE DELETE OR INSERT OR UPDATE ON grades
FOR EACH ROW
Declare 
lv_midterm number(3);
BEGIN
  
    IF lv_midterm=80 THEN
               DBMS_OUTPUT.PUT_LINE('This grade is perfect ');  

    ELSIF lv_midterm=60 THEN
               DBMS_OUTPUT.PUT_LINE('This grade is good ');
    ELSIF lv_midterm=50 THEN
                   DBMS_OUTPUT.PUT_LINE('This grade is not good ');
    ELSE
                    DBMS_OUTPUT.PUT_LINE('This grade is bad ');

  
   END IF;

   END;
   
   --Testing the trigger
Update grades
set midterm=30
where grade_id=2;

-------------------------------------------

CREATE OR REPLACE TRIGGER StudentClub_trg
BEFORE DELETE OR INSERT OR UPDATE ON studentclubs
FOR EACH ROW
WHEN (old.club_id<>new.club_id)

BEGIN
   UPDATE students set club_id = :new.club_id;
END;

--Testing the trigger

select*from studentclubs;

Update studentclubs
set club_id=11
where club_id=15;

select*from students;


------------------------------------

--Creating Index to reach quicly to the recipe by recipename
Create index by_studentname_idx on students(studentname);
--Testing the index
SELECT * From students
where studentname='Mucahit';

--Creating Index to reach quicly to the chef name
Create index by_coursename_idx on courses(coursename);


--Testing the index
SELECT * From courses
where coursename='Programing 3';

--Creating Index to reach quicly to gourmets by their experience
Create index by_teachername_idx on teacher(teachername);
--Testing the index
SELECT * From teacher
where teachername='Aderson';








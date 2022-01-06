Q.The Following are the tables has to be in your database & model deisgn:
A. users
B. codekata
C. attendance
D. topics
E. tasks
F. company_drives
G. mentors
H. students_activated_courses
I. courses

The following are the queries need to be executed

1. Create tables for the above list given :
    A. CREATE TABLE users (student_id int(5)student_name varchar(45), student_email varchar(40));
    B. CREATE TABLE codekata (code_id int(5),problems_attempted int(10), problems_solved int(10));
    C. CREATE TABLE attendance (att_id int(5),name varchar(40), percentage varchar(5));
    D. CREATE TABLE topics (date varchar(10),topic_name varchar(50));
    E. CREATE TABLE tasks (task_id int(5),task_name varchar(50),task_completed_by_students int(10));
    F. CREATE TABLE company_drives (company_id int(5),user_name varchar(50),number_of_drives_user_attended int(10));
    G. CREATE TABLE mentors (mentor_id int(5),mentor_name varchar(50),students_assigned int(10));
    H. CREATE TABLE students_activated_courses (_id int(5),courses char(30),students_name char(30));
    I. CREATE TABLE courses (course_id int(5),course_name varchar(50));


mysql> show tables;
+----------------------------+
| Tables_in_guvi             |
+----------------------------+
| attendance                 |
| codekata                   |
| company_drives             |
| courses                    |
| mentors                    |
| students_activated_courses |
| tasks                      |
| topics                     |
| users                      |
+----------------------------+


2. insert at least 5 rows of values in each table
A.{
    a. INSERT INTO users VALUES(1,"SMD","smd@gmail.com");
    b. INSERT INTO users VALUES(2,"IMAM","imam@gmail.com");
    c. INSERT INTO users VALUES(3,"RAVI","ravi@gmail.com");
    d. INSERT INTO users VALUES(4,"SHIVA","shiva@gmail.com");
    e. INSERT INTO users VALUES(5,"NANI","nani@gmail.com");
}

B.{
    a. INSERT INTO codekata VALUES(3,40,20);
    b. INSERT INTO codekata VALUES(2,60,36);
    c. INSERT INTO codekata VALUES(1,90,78);
    d. INSERT INTO codekata VALUES(5,35,20);
    e. INSERT INTO codekata VALUES(4,46,29);
}

C.{
    a. INSERT INTO attendance VALUES (1,"SMD","80%");
    b. INSERT INTO attendance VALUES (3,"IMAM","70%");
    c. INSERT INTO attendance VALUES (2,"RAVI","75%");
    d. INSERT INTO attendance VALUES (4,"SHIVA","65%");
    e. INSERT INTO attendance VALUES (5,"NANI","60%");
    f. INSERT INTO attendance VALUES (6,"ANNA","50%");
}

D.{
    a. INSERT INTO topics VALUES("10-10-2021","what is javascript");
    b. INSERT INTO topics VALUES("11-10-2021","introduction to webs");
    c. INSERT INTO topics VALUES("19-10-2021","function & return keywords");
    d. INSERT INTO topics VALUES("29-10-2021","html forms");
    e. INSERT INTO topics VALUES("11-11-2021","bootstrap");
}

E.{
    a. INSERT INTO tasks VALUES(1,"HTML DAY 1",29);
    b. INSERT INTO tasks VALUES(2,"JAVASCRIPT DAY 1",40);
    c. INSERT INTO tasks VALUES(3,"Bootstrap design",20);
    d. INSERT INTO tasks VALUES(4,"JAVASCRIPT DAY 2",34);
    e. INSERT INTO tasks VALUES(5,"Fetch API",16);
    f. INSERT INTO tasks VALUES(6,"React Hooks",23);
    g. INSERT INTO tasks VALUES(7,"React CRUD Operations",22);
    h. INSERT INTO tasks VALUES(8,"Context API",24);
    i. INSERT INTO tasks VALUES(9,"SQL Database",10);
}

F{
    a. INSERT INTO company_drives VALUES(1,"SHIVA",8);
    b. INSERT INTO company_drives VALUES(2,"NANI",6);
    c. INSERT INTO company_drives VALUES(3,"SMD",18);
    d. INSERT INTO company_drives VALUES(4,"IMAM",12);
    e. INSERT INTO company_drives VALUES(5,"RAVI",10);
}

G.{
    a. INSERT INTO mentors VALUES(1,"Ragav Kumar",100);
    b. INSERT INTO mentors VALUES(2,"Lavish Jain",90);
    c. INSERT INTO mentors VALUES(3,"Mariappan",80);
    d. INSERT INTO mentors VALUES(4,"Zeel Mehta",80);
    e. INSERT INTO mentors VALUES(5,"Mohammed Shirhaan",70);
    f. INSERT INTO mentors VALUES(6,"Sai Mohan",70);
    g. INSERT INTO mentors VALUES(7,"Deepika",60);
    h. INSERT INTO mentors VALUES(8,"Nancy",60);
    i. INSERT INTO mentors VALUES(9,"Krishna",50);
    j. INSERT INTO mentors VALUES(10,"Rvsp",50);
}

H.{
    a. INSERT INTO students_activated_courses VALUES(1,"Full Stack Developer","SMD");
    b. INSERT INTO students_activated_courses VALUES(2,"Java","IMAM");
    c. INSERT INTO students_activated_courses VALUES(3,"Front-End","SHIVA");
    d. INSERT INTO students_activated_courses VALUES(4,"Python","RAVI");
    e. INSERT INTO students_activated_courses VALUES(5,"Data Science","NANI");

}

I.{
    a. INSERT INTO courses VALUES(1,"Front-End");
    b. INSERT INTO courses VALUES(2,"Back-End");
    c. INSERT INTO courses VALUES(3,"Full Stack Developer");
    d. INSERT INTO courses VALUES(4,"Python");
    e. INSERT INTO courses VALUES(5,"Database And Cloud");
    f. INSERT INTO courses VALUES(6,"Network And Security");
    g. INSERT INTO courses VALUES(7,"Data Science");
    h. INSERT INTO courses VALUES(8,"Angular");
    i. INSERT INTO courses VALUES(9,"AWS");
    j. INSERT INTO courses VALUES(10,"Java");


}
3. get number problems solved in codekata by combining the users
 SELECT student_name,problems_solved FROM users JOIN codekata on users.student_id=codekata.code_id;
+--------------+-----------------+
| student_name | problems_solved |
+--------------+-----------------+
| RAVI         |              20 |
| IMAM         |              36 |
| SMD          |              78 |
| NANI         |              20 |
| SHIVA        |              29 |
+--------------+-----------------+

4. display the no of company drives attended by a user
SELECT student_name,number_of_drives_user_attended FROM users JOIN company_drives on users.student_name=company_drives.user_name ORDER BY number_of_drives_user_attended desc;
+--------------+--------------------------------+
| student_name | number_of_drives_user_attended |
+--------------+--------------------------------+
| SMD          |                             18 |
| IMAM         |                             12 |
| RAVI         |                             10 |
| SHIVA        |                              8 |
| NANI         |                              6 |
+--------------+--------------------------------+

5. combine and display students_activated_courses and courses for a specific user groping them based on the course
SELECT DISTINCT course_name,students_name FROM courses LEFT JOIN students_activated_courses ON course_name = courses;

+----------------------+---------------+
| course_name          | students_name |
+----------------------+---------------+
| Front-End            | SHIVA         |
| Back-End             | NULL          |
| Full Stack Developer | SMD           |
| Python               | RAVI          |
| Database And Cloud   | NULL          |
| Network And Security | NULL          |
| Data Science         | NANI          |
| Angular              | NULL          |
| AWS                  | NULL          |
| Java                 | IMAM          |
+----------------------+---------------+

6. list all the mentors
SELECT mentor_name FROM mentors;
+-------------------+
| mentor_name       |
+-------------------+
| Ragav Kumar       |
| Lavish Jain       |
| Mariappan         |
| Zeel Mehta        |
| Mohammed Shirhaan |
| Sai Mohan         |
| Deepika           |
| Nancy             |
| Krishna           |
| Rvsp              |
+-------------------+

7. list the number of students that are assigned for a mentor
SELECT mentor_name,students_assigned FROM mentors;

+-------------------+-------------------+
| mentor_name       | students_assigned |
+-------------------+-------------------+
| Ragav Kumar       |               100 |
| Lavish Jain       |                90 |
| Mariappan         |                80 |
| Zeel Mehta        |                80 |
| Mohammed Shirhaan |                70 |
| Sai Mohan         |                70 |
| Deepika           |                60 |
| Nancy             |                60 |
| Krishna           |                50 |
| Rvsp              |                50 |
+-------------------+-------------------+

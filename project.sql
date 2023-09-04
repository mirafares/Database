create database project;

//create table
CREATE TABLE student(
first_name VARCHAR(20),
last_name VARCHAR(20),
school_email VARCHAR(50),
student_id INT PRIMARY KEY,
date_of_birth DATE,
gender VARCHAR(2),
address VARCHAR(50),
admission_year INTEGER,
level VARCHAR(2),
student_type VARCHAR(2),
degree_program VARCHAR(20)
);
insert into student (first_name, last_name, school_email, student_id, date_of_birth, gender, address, admission_year, level, student_type, degree_program) 
values('Harry', 'Potter', 'pott3147@hogwarts.com', 67533147, '2001-07-31', 'M', '4 Privet Drive London ON', 2020, 'U', 'D', 'Dark Arts'),('Hermione', 'Granger', 'gran4957@hogwarts.com', 73534957, '2001-09-19', 'F', '18 Hampstead Road Barrie ON', 2020, 'U', 'D', 'History'),('Ron', 'Weasley', 'weas9346@hogwarts.com', 22569346, '2001-03-01', 'M', '123 Burrow Blvd Toronto ON', 2020, 'U', 'D', 'Dark Arts'),('Ginny', 'Weasley', 'weas3781@hogwarts.com', 23083781, '2002-08-11', 'F', '123 Burrow Blvd Toronto ON', 2021, 'U', 'D', 'Charms'),('Draco', 'Malfoy', 'malf7575@hogwarts.com', 24857575, '2001-06-05', 'M', '170 Enterprise Road Markham ON', 2020, 'U', 'D', 'Dark Arts'),('Neville', 'Longbottom', 'long5691@hogwarts.com', 76375691, '2001-07-31', 'M', '9 Sutton Place Waterloo ON', 2020, 'U', 'D', 'Dark Arts'),('Parvati', 'Patil', 'pati8745@hogwarts.com', 75478745, '2001-12-31', 'F', '11532 Avery Avenue London England', 2020, 'U', 'I', 'History'),('Seamus', 'Finnigan', 'finn1501@hogwarts.com', 96691501, '2001-3-31', 'M', '8709 Northern Lights Iqaluit NT', 2020, 'U', 'I', 'Charms'),('Sue', 'Li', 'lisu5332@hogwarts.com', 69185332, '1998-05-01', 'F', '25 Sutton Place Santiago Chile', 2021, 'G', 'I', 'Charms'),('Cedric', 'Diggory', 'digg1772@hogwarts.com ',31781772, '2000-01-01', 'M', '999 Castlemore Blvd Waterloo ON', 2021, 'U', 'D', 'Dark Arts');


CREATE TABLE courses(
course_id VARCHAR(10) PRIMARY KEY,
credit_value DOUBLE,
course_name VARCHAR(50)
);

insert into courses (course_id, credit_value, course_name) 
values
('AS110', 1.0, 'Astronomy and Divination'),('AS164', 1.0, 'Charms and their Application'),('AS225', 2.0, 'Introduction to the Dark Arts'),('AS264', 1.0, 'Potions and Spells'),('AS325', 2.0, 'Defense Against the Dark Arts'),('CR135', 1.0, 'Herbology and Botany'),('CR205', 2.0, 'Care of Magical Creatures'),('CR212', 0.5, 'Art of Flying'),('CR315', 0.5, 'Wand Design'),('CR355', 2.0, 'Transfigurations'),('HS105', 1.0, 'History of Magic'),('HS110', 1.0, 'Muggle Studies'),('HS210', 0.5, 'Advanced Muggle Studies'),('HS220', 1.0, 'Magical Theory'),('HS335', 0.5, 'Study of Ancient Runes'),('GR400', 4.0, 'Graduate Studies'),('PH500', 4.0, 'Doctorate Studies');

CREATE TABLE teacher(
teacher_id VARCHAR(10) PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
department VARCHAR(30),
teacher_email VARCHAR(50)
);

insert into teacher (teacher_id, first_name, last_name, department, teacher_email) 
values('F6879', 'Albus', 'Dumbledore', 'Arts and Spells', 'adumb6879@hogwarts.com' ),('F5980', 'Severus', 'Snape', 'Arts and Spells', 'ssnap5980@hogwarts.com' ),('F2683', 'Minerva', 'McGonagall', 'History', 'mmcgo2683@hogwarts.com' ),('F7272', 'Rubeus', 'Hagrid', 'Creatures', 'rhagr7272@hogwarts.com' );

CREATE TABLE semester(
semester_index INTEGER AUTO_INCREMENT PRIMARY KEY,
semester VARCHAR(10),
course_id VARCHAR(10),
FOREIGN KEY(course_id) REFERENCES courses(course_id),
Format VARCHAR(2),
fee VARCHAR(10),
teacher_id VARCHAR(10),
FOREIGN KEY(teacher_id) REFERENCES teacher(teacher_id)
);


INSERT INTO semester(semester, course_id, format, fee, teacher_id)
VALUES
('F2020', 'AS110', 'P', '$350.00', 'F5980'), ('F2020', 'CR135', 'V', '$325.00', 'F7272'), ('F2020', 'HS105', 'V', '$400.00', 'F2683'), ('F2020', 'AS225', 'V', '$405.00', 'F6879'), ('F2020', 'AS264', 'V', '$430.00', 'F7272'), ('F2020', 'CR212', 'V', '$255.00', 'F2683'), ('F2020', 'HS220', 'V', '$375.00', 'F5980'), ('F2020', 'AS325', 'V', '$820.00', 'F6879'), ('F2020', 'CR315', 'V', '$260.00', 'F2683'), ('W2021', 'AS164', 'V', '$400.00', 'F2683'), ('W2021', 'CR135', 'V', '$330.00', 'F5980'), ('W2021', 'HS110', 'V', '$410.00', 'F6879'), ('W2021', 'AS264', 'V', '$440.00', 'F7272'), ('W2021', 'CR205', 'V', '$750.00', 'F7272'), ('W2021', 'HS210', 'V', '$370.00', 'F5980'), ('W2021', 'HS220', 'V', '$375.00', 'F2683'), ('W2021', 'CR355', 'V', '$260.00', 'F5980'), ('W2021', 'HS335', 'V', '$450.00', 'F6879'), ('F2021', 'AS110', 'V', '$350.00', 'F5980'), ('F2021', 'CR135', 'P', '$345.00', 'F2683'), ('F2021', 'HS105', 'V', '$400.00', 'F2683'), ('F2021', 'AS225', 'V', '$405.00', 'F6879'), ('F2021', 'AS264', 'P' , '$450.00', 'F6879'), ('F2021', 'CR212', 'P', '$255.00', 'F7272'), ('F2021', 'HS220', 'P', '$380.00', 'F2683'), ('F2021', 'AS325', 'V', '$825.00', 'F5980'), ('F2021', 'CR315', 'V', '$265.00', 'F7272'), ('F2021', 'GR400', 'P', '$500.00', 'F5980'), ('F2021', 'PH500', 'P', '$600.00', 'F6879');

 CREATE TABLE grades(
grade_index  INTEGER AUTO_INCREMENT  PRIMARY KEY,
semester_index INTEGER,
FOREIGN KEY(semester_index) REFERENCES semester(semester_index),
student_id INTEGER,
FOREIGN KEY(student_id) REFERENCES student(student_id),
grade VARCHAR(20)
);

INSERT INTO grades(semester_index, student_id, grade)
VALUES (1, 67533147, 'C'), (8, 67533147, 'B'), (13, 67533147, 'B'), (12, 67533147, 'D'), (22, 67533147, 'in progress'), (1, 73534957, 'A'), (2, 73534957, 'A+'), (10, 73534957, 'A'), (12, 73534957, 'A'), (22, 73534957, 'in progress'), (24, 73534957, 'in progress'), (1, 22569346, 'C+'), (2, 22569346, 'B'), (10, 22569346, 'D'), (12, 22569346, 'B'), (22, 22569346, 'in progress'), (19, 23083781, 'in progress'), (20, 23083781, 'in progress'), (1, 24857575, 'B+'), (2, 24857575, 'B'), (10, 24857575, 'C'), (12, 24857575, 'B'), (22, 24857575, 'in progress'), (1, 76375691,'A-'), (3, 76375691, 'A-'), (10, 76375691, 'A-'), (11, 76375691, 'B+'), (22, 76375691, 'in progress'), (2, 75478745, 'A'), (3, 75478745, 'A'), (10, 75478745, 'B+'), (12, 75478745, 'C'), (24, 75478745, 'in progress'), (25, 75478745, 'in progress'), (2, 96691501, 'B+'), (3, 96691501, 'A'), (10, 96691501, 'B'), (12, 96691501, 'B+'), (24, 96691501, 'in progress'), (25, 96691501, 'in progress'), (28, 69185332, 'in progress'), (19, 31781772, 'in progress'), (20, 31781772, 'in progress');

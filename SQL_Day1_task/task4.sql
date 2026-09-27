
create table patient(
patient_id  int primary key,
patient_name varcharacter(60),
age int,
gender varchar(15),
phone varchar(15),
disease varchar(100),
admission_date date,
admission_time time,
doctor_name varchar(70),
is_discharged boolean
);

insert into patient(patient_id,patient_name,age,gender,phone,disease,admission_date,
admission_time,doctor_name,is_discharged) values
(101,'Sneha Rai', 28,'Female','9898765443','Maleria','2026-09-01','08:30:00','Dr.Mehta',false),
(102,'Maya Rathi', 26,'Female','7898765443','Diabetes','2026-09-02','08:20:00','Dr.Nene',false),
(103,'Pooname Mohite', 23,'Female','9898775443','Typhoid','2026-09-03','08:45:00','Dr.Naik',false),
(104,'Sanket Rathi', 38,'Male','9098765443','Asthma','2026-05-01','18:30:00','Dr.Shah',false),
(105,'Pranit Rai', 48,'Male','9398765443','Fracture','2026-07-01','07:30:00','Dr.Shirode',false),
(106,'Neha Thorat', 20,'Female','7898798443','Dengu','2026-09-21','08:38:00','Dr.Joshi',false),
(107,'Priya Naik', 33,'Female','8898765443','Migraine','2026-09-20','02:30:00','Dr.Mogal',false),
(108,'Samadhan Pathak', 32,'Male','9898965443','Cancer','2026-05-06','01:30:00','Dr.Kulkarni',false),
(109,'Kaveri Rane', 44,'Female','9898765422','Hypertension','2026-09-28','04:30:00','Dr.Pathak',false),
(110,'Priti Nene', 29,'Female','9898765483','Pneumonia','2026-11-01','08:35:00','Dr.Mohite',false);

update patient set doctor_name='Dr.Kulkarni' where patient_id=103;

update patient set is_discharged=true where patient_id=105;
 
alter table patient add discharge_date date; 
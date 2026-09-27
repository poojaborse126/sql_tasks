create database citycare_db;
use citycare_db;

create table patients(
patient_id int primary key,
patient_name varchar(80) not null,
email varchar(100) unique,
phone varchar(15),
gender varchar(10),
age int check(age>0),
city varchar(50),
blood_group varchar(5) );

create table doctors(
doctor_id int primary key,
doctor_name varchar(80) not null,
email varchar(100) not null unique,
phone varchar(15),
specialization varchar(60),
experience_year int check(experience_year >= 0),
consultation_fee decimal(10,2) check(consultation_fee > 0),
doctor_status varchar(20) default 'Active' );

create table appointments(
appointment_id int primary key,
patient_id int,
doctor_id int ,
appointment_date date,
appointment_time time,
reason varchar(120),
appointment_status varchar(20) default 'scheduled',
room_no int ,
foreign key (patient_id) references patients(patient_id),
foreign key (doctor_id) references doctors(doctor_id)
);

create table bills(
bill_id int primary key,
patient_id int,
appointment_id int,
bill_date date,
consultation_fee decimal(10,2) check(consultation_fee >= 0),
medicine_fee decimal(10,2) check(medicine_fee >= 0),
total_amount decimal(10,2) check(total_amount >=0),
payment_status varchar(20),
foreign key (patient_id) references patients(patient_id),
foreign key (appointment_id) references appointments(appointment_id)
); 

insert into patients (patient_id, patient_name, email, phone, gender, age, city, blood_group) values
(101, 'Rohan Patil', 'rohan@gmail.com', '9876510001', 'Male', 29, 'Pune', 'B+'),
(102, 'Kavita Joshi', 'kavita@gmail.com', '9876510002', 'Female', 34, 'Mumbai', 'A+'),
(103, 'Akash More', 'akash@gmail.com', '9876510003', 'Male', 42, 'Nashik', 'O+'),
(104, 'Snehal Pawar', 'snehal@gmail.com', '9876510004', 'Female', 27, 'Pune', 'AB+'),
(105, 'Nitin Kale', 'nitin@gmail.com', '9876510005', 'Male', 51, 'Nagpur', 'O-'),
(106, 'Meena Shinde', 'meena@gmail.com', '9876510006', 'Female', 45, 'Pune', 'B-'),
(107, 'Vijay Jadhav', 'vijay@gmail.com', '9876510007', 'Male', 38, 'Satara', 'A-'),
(108, 'Pallavi Deshmukh', 'pallavi@gmail.com', '9876510008', 'Female', 31, 'Kolhapur', 'B+');

insert into doctors (doctor_id, doctor_name, email, phone, specialization, experience_year, consultation_fee, doctor_status) values
(201, 'Dr. Anil Kulkarni', 'anil@hospital.com', '9876520001', 'Cardiologist', 12, 1200.00, 'Active'),
(202, 'Dr. Priya Shah', 'priya@hospital.com', '9876520002', 'Dermatologist', 8, 800.00, 'Active'),
(203, 'Dr. Mahesh Patil', 'mahesh@hospital.com', '9876520003', 'Orthopedic', 15, 1000.00, 'Active'),
(204, 'Dr. Neha Joshi', 'neha@hospital.com', '9876520004', 'Pediatrician', 10, 900.00, 'Active'),
(205, 'Dr. Amit More', 'amit@hospital.com', '9876520005', 'Neurologist', 18, 1500.00, 'Active'),
(206, 'Dr. Riya Kale', 'riya@hospital.com', '9876520006', 'Gynecologist', 11, 1100.00, 'Active'),
(207, 'Dr. Suresh Pawar', 'suresh@hospital.com', '9876520007', 'ENT', 9, 700.00, 'Inactive'),
(208, 'Dr. Pooja Shinde', 'pooja@hospital.com', '9876520008', 'General Physician', 7, 600.00, 'Active');

insert into appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason, appointment_status, room_no) values
(301, 101, 201, '2026-09-10', '10:00:00', 'Chest pain', 'Scheduled', 101),
(302, 102, 202, '2026-09-10', '11:00:00', 'Skin allergy', 'Completed', 102),
(303, 103, 203, '2026-09-11', '09:30:00', 'Knee pain', 'Scheduled', 103),
(304, 104, 204, '2026-09-11', '12:00:00', 'Fever', 'Completed', 104),
(305, 105, 205, '2026-09-12', '10:30:00', 'Headache', 'Scheduled', 105),
(306, 106, 206, '2026-09-12', '14:00:00', 'Routine checkup', 'Cancelled', 106),
(307, 107, 208, '2026-09-13', '15:00:00', 'Cold', 'Scheduled', 107),
(308, 108, 203, '2026-09-14', '16:00:00', 'Back pain', 'Completed', 108);

insert into bills (bill_id, patient_id, appointment_id, bill_date, consultation_fee, medicine_fee, total_amount, payment_status) values
(401, 101, 301, '2026-09-10', 1200.00, 500.00, 1700.00, 'Paid'),
(402, 102, 302, '2026-09-10', 800.00, 350.00, 1150.00, 'Paid'),
(403, 103, 303, '2026-09-11', 1000.00, 700.00, 1700.00, 'Pending'),
(404, 104, 304, '2026-09-11', 900.00, 300.00, 1200.00, 'Paid'),
(405, 105, 305, '2026-09-12', 1500.00, 900.00, 2400.00, 'Pending'),
(406, 106, 306, '2026-09-12', 1100.00, 250.00, 1350.00, 'Refunded'),
(407, 107, 307, '2026-09-13', 600.00, 200.00, 800.00, 'Paid'),
(408, 108, 308, '2026-09-14', 1000.00, 450.00, 1450.00, 'Pending');

insert into appointments (appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason, appointment_status, room_no) values
(309, 999, 201, '2026-09-10', '10:00:00', 'Fever', 'Scheduled', 109);
 
 update patients set patient_name= 'Sham D. Naik' where patient_id =101;
 update patients set  email='sham@gmail.com' where patient_id =101;
 
 update doctors set consultation_fee =1300.00 where doctor_id =201;
 update doctors set consultation_fee= consultation_fee + 200 where experience_year >10;
 
 update doctors set doctor_status= 'Inactive' where specialization ='General Physician';
 
 update bills set medicine_fee = medicine_fee - 50 where payment_status ='paid';
 
 update patients set city='pimpri chinchwad' where patient_id =101;
 
 update appointments set appointment_date='2026-09-15' where appointment_id = 301;
  update appointments set appointment_status ='completed' where appointment_id = 301;
 
 delete from bills where bill_id =408;
 
 delete from bills where payment_status= 'Refunded';
 
 delete from appointments where appointment_status= 'Cancelled';
 delete from bills where bill_id=401;
 select * from appointments where appointment_id =301;
 
 delete from appointments where appointment_id=302;
 delete from bills where appointment_id=302;
 delete from appointments where appointment_id =302;
 
 use citycare_db;
  alter table doctors add column qualification varchar(100) default 'MBBS';
 
 alter table doctors modify column specialization varchar(100);
  
alter table doctors rename column specialization  to doctor_spcialization;

alter table patients add constraint  phone_unique unique (phone);
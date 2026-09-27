CREATE DATABASE  college_placement_db;
USE college_placement_db;


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(80) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    department VARCHAR(50),
    year INT CHECK (year BETWEEN 1 AND 4),
    cgpa DECIMAL(4,2) CHECK (cgpa >= 0.0 AND cgpa <= 10.0),
    city VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    duration_months INT CHECK (duration_months > 0),
    fee DECIMAL(10,2) CHECK (fee >= 0),
    mode VARCHAR(20),
    trainer_name VARCHAR(80),
    course_status VARCHAR(20) DEFAULT 'Active'
);


CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    industry VARCHAR(60),
    job_role VARCHAR(80),
    package_lpa DECIMAL(5,2) CHECK (package_lpa >= 0),
    company_status VARCHAR(20) DEFAULT 'Active'
);

CREATE TABLE applications (
    application_id INT PRIMARY KEY,
    student_id INT,
    company_id INT,
    application_date DATE,
    round_name VARCHAR(50),
    application_status VARCHAR(25) DEFAULT 'Applied',
    interview_mode VARCHAR(20),
    offer_package DECIMAL(5,2) CHECK (offer_package >= 0),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);



INSERT INTO students (student_id, student_name, email, phone, department, year, cgpa, city) VALUES
(101, 'Aditya Patil', 'aditya@gmail.com', '9876530001', 'Computer', 4, 8.20, 'Pune'),
(102, 'Sneha More', 'sneha@gmail.com', '9876530002', 'IT', 4, 7.80, 'Mumbai'),
(103, 'Rahul Jadhav', 'rahul@gmail.com', '9876530003', 'Computer', 4, 8.60, 'Nashik'),
(104, 'Pooja Kale', 'pooja@gmail.com', '9876530004', 'Data Science', 3, 9.10, 'Pune'),
(105, 'Vivek Shah', 'vivek@gmail.com', '9876530005', 'IT', 4, 7.20, 'Nagpur'),
(106, 'Neha Pawar', 'neha@gmail.com', '9876530006', 'Data Science', 3, 8.90, 'Pune'),
(107, 'Sanket Joshi', 'sanket@gmail.com', '9876530007', 'Computer', 4, 7.60, 'Satara'),
(108, 'Riya Deshmukh', 'riya@gmail.com', '9876530008', 'IT', 4, 8.40, 'Kolhapur');

INSERT INTO courses (course_id, course_name, department, duration_months, fee, mode, trainer_name, course_status) VALUES
(201, 'Python Full Stack', 'Computer', 6, 30000.00, 'Offline', 'Amit Trainer', 'Active'),
(202, 'Data Analytics', 'Data Science', 4, 25000.00, 'Hybrid', 'Neha Trainer', 'Active'),
(203, 'Java Full Stack', 'IT', 6, 32000.00, 'Offline', 'Rahul Trainer', 'Active'),
(204, 'Machine Learning', 'Data Science', 5, 35000.00, 'Hybrid', 'Pooja Trainer', 'Active'),
(205, 'Web Development', 'Computer', 3, 18000.00, 'Online', 'Vikas Trainer', 'Active'),
(206, 'Cloud Computing', 'IT', 4, 28000.00, 'Online', 'Suresh Trainer', 'Active'),
(207, 'Power BI', 'Data Science', 2, 12000.00, 'Online', 'Sneha Trainer', 'Active'),
(208, 'SQL & Database', 'IT', 2, 10000.00, 'Online', 'Rohit Trainer', 'Inactive');

INSERT INTO companies (company_id, company_name, email, phone, industry, job_role, package_lpa, company_status) VALUES
(301, 'TechNova', 'hr@technova.com', '9876540001', 'IT', 'Python Developer', 5.50, 'Active'),
(302, 'DataWorks', 'hr@dataworks.com', '9876540002', 'Analytics', 'Data Analyst', 6.00, 'Active'),
(303, 'Cloud Soft', 'hr@cloudsoft.com', '9876540003', 'Cloud', 'Cloud Engineer', 7.20, 'Active'),
(304, 'WebCore', 'hr@webcore.com', '9876540004', 'IT', 'Frontend Developer', 5.00, 'Active'),
(305, 'FinTechPro', 'hr@fintechpro.com', '9876540005', 'Finance IT', 'Backend Developer', 6.50, 'Active'),
(306, 'AI Labs', 'hr@ailabs.com', '9876540006', 'AI', 'ML Engineer', 8.00, 'Active'),
(307, 'Retail Hub', 'hr@retailhub.com', '9876540007', 'Retail', 'Software Developer', 5.80, 'Inactive'),
(308, 'Health Tech', 'hr@healthtech.com', '9876540008', 'Healthcare IT', 'Python Developer', 6.80, 'Active');

INSERT INTO applications (application_id, student_id, company_id, application_date, round_name, application_status, interview_mode, offer_package) VALUES
(401, 101, 301, '2026-09-01', 'Aptitude', 'Selected', 'Online', 5.50),
(402, 102, 302, '2026-09-02', 'Technical', 'In Progress', 'Online', 0.00),
(403, 103, 303, '2026-09-03', 'HR', 'Selected', 'Offline', 7.20),
(404, 104, 306, '2026-09-04', 'Technical', 'Rejected', 'Online', 0.00),
(405, 105, 304, '2026-09-05', 'Aptitude', 'Applied', 'Online', 0.00),
(406, 106, 302, '2026-09-06', 'HR', 'Selected', 'Offline', 6.00),
(407, 107, 305, '2026-09-07', 'Technical', 'In Progress', 'Online', 0.00),
(408, 108, 308, '2026-09-08', 'HR', 'Applied', 'Online', 0.00);

ALTER TABLE students ADD CONSTRAINT chk_student_cgpa CHECK (cgpa >= 0.0 AND cgpa <= 10.0);

ALTER TABLE applications ADD CONSTRAINT fk_app_student FOREIGN KEY (student_id) REFERENCES students(student_id);

ALTER TABLE students DROP CHECK chk_student_cgpa;

ALTER TABLE courses RENAME TO training_courses;

ALTER TABLE training_courses ADD COLUMN course_level VARCHAR(20) DEFAULT 'Beginner';
INSERT INTO training_courses (course_id, course_name, department, duration_months, fee, mode, trainer_name) 
VALUES (209, 'Cyber Security', 'IT', 3, 20000.00, 'Online', 'Sanjay Sir');

ALTER TABLE students ADD COLUMN status VARCHAR(20) DEFAULT 'Active' NOT NULL;

CREATE TABLE temp_practice (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO temp_practice VALUES (1, 'Test Data');

TRUNCATE TABLE temp_practice;
	
CREATE TABLE students_backup AS SELECT * FROM students;

DROP TABLE temp_practice;

ALTER TABLE training_courses RENAME TO courses;

CREATE TABLE placements (
    placement_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    student_email VARCHAR(100) UNIQUE NOT NULL,
    joining_date DATE,
    placement_status VARCHAR(20) DEFAULT 'Confirmed'
);

INSERT INTO students (student_id, student_name, email, phone, department, year, cgpa, city, status) 
VALUES (109, 'Karan Sharma', 'karan@gmail.com', '9876530009', 'Computer', 4, 8.10, 'Pune', 'Active');

INSERT INTO applications (application_id, student_id, company_id, application_date, round_name, application_status, interview_mode, offer_package) 
VALUES (409, 109, 301, '2026-09-15', 'HR', 'Selected', 'Online', 6.00);

UPDATE students SET phone = '9998887770' WHERE student_id = 109;
SELECT * FROM applications WHERE student_id = 109;

UPDATE companies SET package_lpa = package_lpa + 0.50 WHERE company_status = 'Active';

DELETE FROM applications WHERE application_status = 'Rejected';

CREATE TABLE temp_ddl_test (
    id INT PRIMARY KEY,
    test_name VARCHAR(50)
);

ALTER TABLE temp_ddl_test 
ADD COLUMN created_at DATE,
ADD COLUMN remarks VARCHAR(100);

ALTER TABLE temp_ddl_test DROP COLUMN remarks;

TRUNCATE TABLE temp_ddl_test;

DROP TABLE temp_ddl_test;
DROP TABLE students_backup;

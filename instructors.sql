USE cdg_hyd_jfs_059;    
-- INSTRUCTOR DIRECTORY
CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate INT,
    employment_type VARCHAR(20),
    is_active INT,
    joined_on VARCHAR(10),
    created_at VARCHAR(10)
);
DESCRIBE instructors;
SHOW CREATE TABLE instructors;
INSERT INTO 
     instructors(instructor_code,first_name,last_name,email,specialization,years_experience,hourly_rate,employment_type,is_active,joined_on) 
VALUES
     ('INS-JV-001','Kavya','Menon','kavya.menon@example.test','Java',8,1500,'FULL_TIME',1,'2021-06-14');
INSERT INTO 
     instructors(instructor_code,first_name,last_name,email,specialization,years_experience,hourly_rate,employment_type,is_active,joined_on) 
VALUES
     ('INS-DB-002','Ritesh','Kumar','ritesh.kumar@example.test','Databases',12,1200,'CONTRACT',1,'2019-02-01'),
	 ('INS-WB-003','Farah','Ali','farah.ali@example.test','Web Development',5,1800,'PART_TIME',1,'2023-08-21');
INSERT INTO 
     instructors(instructor_code,first_name,last_name,email,specialization,years_experience,hourly_rate,employment_type,is_active,joined_on) 
VALUES
     ('INS-QA-004','Nitin','Bose','nitin.bose@example.test','Software Testing',7,1350,'PART_TIME',1,'2022-01-10'),
	 ('INS-OLD-005','Leela','Shah','leela.shah@example.test','Mainframe Systems',25,2800,'CONTRACT',0,'2010-05-17');
INSERT INTO 
     instructors(instructor_code,first_name,last_name,email,specialization,years_experience,hourly_rate,employment_type,is_active,joined_on) 
VALUES
	 ('INS-JFS-006','Ramu','Karanam','ramu.karanam@example.test','Web Development',0,1800,'FULL_TIME',1,'2026-12-08');


UPDATE instructors 
SET 
    hourly_rate = 1500
WHERE
    instructor_code = 'INS-QA-004';
UPDATE instructors 
SET 
    hourly_rate = (hourly_rate + hourly_rate * .08)
WHERE
    employment_type = 'CONTRACT'
        AND is_active = 1;
UPDATE instructors 
SET 
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';
UPDATE instructors 
SET 
    years_experience = (years_experience + 1)
WHERE
    is_active = 1 AND years_experience < 50;
UPDATE instructors 
SET 
    is_active = 0
WHERE
    instructor_code = 'INS-OLD-005';
    
    
DELETE FROM instructors 
WHERE
    instructor_code = 'INS-OLD-005'
    AND is_active = 0;
INSERT INTO 
       instructors(instructor_code) 
VALUES
     ('INS-TEMP-99');
DELETE FROM instructors 
WHERE
    instructor_code = 'INS-TEMP-99';
DELETE FROM instructors 
WHERE
    employment_type = 'PART-TIME'
    AND years_experience < 6;

SELECT
	instructor_id,
    instructor_code,
    first_name ,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM
    instructors;
    
    

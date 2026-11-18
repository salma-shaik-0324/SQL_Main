USE cdg_hyd_jfs_059;
-- ONLINE COURSE CATALOGUE
CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE courses;
SHOW CREATE TABLE courses;
INSERT INTO 
	courses(course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
    ('CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 6000, 'CLASSROOM', 'ACTIVE');
    
INSERT INTO
     courses(course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
    ('CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 4500, 'ONLINE', 'ACTIVE'),
    ('CRS-WEB-103', 'Responsive Web Design', 'Web Development', 28, 0, 'ONLINE', 'ACTIVE');
       
INSERT INTO
     courses(course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
    ('CRS-TST-104', 'Software Testing Basics', 'Testing', 24, 3500, 'HYBRID', 'ACTIVE'),
    ('CRS-OLD-105', 'Legacy Systems Overview', 'Technology', 12, 2000, 'ONLINE', 'ARCHIVED');
    
    
INSERT INTO
     courses(course_code, course_title, category, duration_hours, fee, delivery_mode, course_status)
VALUES
    ('CRS-PYTHON-106', 'Python', 'Programming', 40, 6000, 'ONLINE', 'ACTIVE');


UPDATE courses 
SET 
    fee = 6500
WHERE
    course_code = 'CRS-JAVA-101';
UPDATE courses 
SET 
    fee = (fee + fee * .10)
WHERE
    course_status = 'ACTIVE';
UPDATE courses 
SET 
    fee = 2500,
    course_status = 'ACTIVE'
WHERE
    course_code = 'CRS-WEB-103';
UPDATE courses 
SET 
    duration_hours = (duration_hours + 4)
WHERE
    category = 'Testing';
UPDATE courses 
SET 
    duration_hours = 0;


DELETE FROM courses 
WHERE
    course_code = 'CRS-OLD-105';
INSERT INTO 
     courses(course_code) 
VALUES 
     ('CRS-TEMP-999');
DELETE FROM courses 
WHERE
    course_code = 'CRS-TEMP-999';
DELETE FROM courses WHERE category='Testing' AND fee<5000;

SELECT  
	course_id,
    course_code ,
    course_title,
    category,
    duration_hours,
    fee,
    delivery_mode,
    course_status,
    created_at
FROM
    courses;
    

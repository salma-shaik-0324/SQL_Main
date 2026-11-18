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
    
    
    
    
    
-- Warehouse Capacity Register
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    manager_name VARCHAR(100),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    created_at VARCHAR(10)
);	

DESCRIBE warehouses;
SHOW CREATE TABLE warehouses;


INSERT INTO 
       warehouses(warehouse_code,warehouse_name,city,state,capacity_units,occupied_units,manager_name,temperature_controlled,operational_status) 
VALUES
     ('WH-BLR-01','Bengaluru Central','Bengaluru','Karnataka',10000,6400,'Ajay Nair',0,'ACTIVE');

INSERT INTO 
       warehouses(warehouse_code,warehouse_name,city,state,capacity_units,occupied_units,manager_name,temperature_controlled,operational_status) 
VALUES
     ('WH-HYD-02','Hyderabad North','Hyderabad','Telangana',8000,7900,'Sana Reddy',1,'ACTIVE'),
	 ('WH-MUM-03','Mumbai Port Store','Mumbai','Maharashtra',15000,9000,'Rohit Shah',0,'MAINTENANCE');

INSERT INTO 
       warehouses(warehouse_code,warehouse_name,city,state,capacity_units,occupied_units,manager_name,temperature_controlled,operational_status) 
VALUES
     ('WH-KOC-04','Kochi Cold Hub','Kochi','Kerala',6000,3200,'Meera Varma',1,'ACTIVE'),
	 ('WH-OLD-05','Training Closed Store','Pune','Maharashtra',2000,0,'Test Manager',0,'CLOSED');
INSERT INTO 
       warehouses(warehouse_code,warehouse_name,city,state,capacity_units,occupied_units,manager_name,temperature_controlled,operational_status) 
VALUES
     ('WH-GUT-06','Guntur East','Guntur','Andhra Pradesh',10000,6400,'Rajesh Kumar',1,'ACTIVE');




UPDATE warehouses 
SET 
    occupied_units = (occupied_units + 500)
WHERE
    warehouse_code = 'WH-BLR-01';
UPDATE warehouses 
SET 
    occupied_units = (occupied_units - 1000)
WHERE
    warehouse_code = 'WH-HYD-02';
UPDATE warehouses 
SET 
    operational_status = 'ACTIVE'
WHERE
    warehouse_code = 'WH-MUM-03';
UPDATE warehouses 
SET 
    capacity_units = (capacity_units + 1000)
WHERE
    temperature_controlled = 1;
 UPDATE warehouses 
SET 
    occupied_units =capacity_units+10
WHERE
    warehouse_code = 'WH-BLR-01';
SELECT 
    warehouse_code, occupied_units, capacity_units
FROM
    warehouses
WHERE
    warehouse_code = 'WH-BLR-01';


DELETE FROM warehouses 
WHERE
    operational_status = 'CLOSED';
INSERT INTO 
     warehouses(warehouse_code) 
VALUES
    ('WH-TMP-99');
DELETE FROM warehouses 
WHERE
    warehouse_code = 'WH-TMP-99';
DELETE FROM warehouses 
WHERE
    operational_status = 'ACTIVE'
    AND occupied_units < (capacity_units * .5);

SELECT
     warehouse_id,
	 warehouse_code,	
	 warehouse_name, 
     city,		 
     state,	 
     capacity_units,	 
     occupied_units,		 
     manager_name,	 
     temperature_controlled,	
     operational_status,	 
     created_at	
FROM
    warehouses;
    
    
    
    
    
-- Shipment Tracking Register
CREATE TABLE shipments (
    shipment_id INT,
    tracking_number VARCHAR(20),
    sender_name VARCHAR(120),
    recipient_name VARCHAR(120),
    destination_city VARCHAR(80),
    package_weight_grams INT,
    shipping_cost INT,
    shipped_date VARCHAR(10),
    expected_delivery_date VARCHAR(10),
    delivered_date VARCHAR(10),
    shipment_status VARCHAR(20),
    priority VARCHAR(10),
    created_at VARCHAR(10)
);	
DESCRIBE shipments;
SHOW CREATE TABLE shipments;

INSERT INTO 
	 shipments(tracking_number,sender_name,recipient_name,destination_city,package_weight_grams,shipping_cost,shipped_date,expected_delivery_date,delivered_date,shipment_status,priority) 
VALUES
    ('TRK26000001','Asha Stores','Nitin Rao','Chennai',2500,180,'2026-09-20','2026-09-24','NULL','IN_TRANSIT','NORMAL');

INSERT INTO 
	 shipments(tracking_number,sender_name,recipient_name,destination_city,package_weight_grams,shipping_cost,shipped_date,expected_delivery_date,delivered_date,shipment_status,priority) 
VALUES
    ('TRK26000002','Nova Tech','Isha Sen','Bengaluru',800,250,'2026-09-21','2026-09-23','2026-09-23','DELIVERED','EXPRESS');
INSERT INTO 
	 shipments(tracking_number,sender_name,recipient_name,destination_city,package_weight_grams,shipping_cost,shipped_date,expected_delivery_date,delivered_date,shipment_status,priority) 
VALUES
    ('TRK26000003','Book Nest','Omar Ali','Kochi',4200,220,'2026-09-22','2026-09-27','NULL','CREATED','NORMAL');
INSERT INTO 
	 shipments(tracking_number,sender_name,recipient_name,destination_city,package_weight_grams,shipping_cost,shipped_date,expected_delivery_date,delivered_date,shipment_status,priority) 
VALUES
    ('TRK26000004','Green Foods','Meera Das','Hyderabad',12000,550,'2026-09-22','2026-09-25','NULL','IN_TRANSIT','EXPRESS'),
    ('TRK26000005','Test Sender','Test Receiver','Pune',1000,100,'2026-09-23','2026-09-26','NULL','CANCELLED','NORMAL');



UPDATE shipments 
SET 
    shipment_status = 'DELIVERED',
    delivered_date = '2026-09-24'
WHERE
    tracking_number = 'TRK26000001';
UPDATE shipments 
SET 
    shipment_status = 'IN_TRANSIT'
WHERE
    tracking_number = 'TRK26000003';
UPDATE shipments 
SET 
    shipping_cost = (shipping_cost + 50)
WHERE
    priority = 'EXPRESS';
UPDATE shipments 
SET 
    expected_delivery_date = '2026-09-27'
WHERE
    tracking_number = 'TRK26000004';
UPDATE shipments 
SET 
    delivered_date = '2026-09-19'
WHERE
    tracking_number = 'TRK26000001';
    
    
    
DELETE FROM shipments 
WHERE
    shipment_status = 'CANCELLED';
INSERT INTO 
     shipments(tracking_number) 
VALUES
     ('TRK-TEMP-999');
DELETE FROM shipments 
WHERE
    tracking_number = 'TRK-TEMP-999';
DELETE FROM shipments 
WHERE
    shipment_status = 'DELIVERED'
    AND priority = 'EXPRESS'
    AND package_weight_grams < 1000;
    
SELECT 
    tracking_number,
    sender_name,
    recipient_name,
    destination_city,
    package_weight_grams,
    shipping_cost,
    shipped_date,
    expected_delivery_date,
    delivered_date,
    shipment_status,
    priority
FROM
    shipments;
    
    
    
    
    
    
-- Service Subscription Register
CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount INT,
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE subscriptions;
SHOW CREATE TABLE subscriptions;


INSERT INTO 
	subscriptions(subscription_code,subscriber_name,subscriber_email,plan_name,billing_cycle ,amount ,start_date ,end_date,auto_renew,subscription_status) 
VALUES
	('SUB260001','Aarav Nair','aarav.nair@example.test','Standard','MONTHLY',499,'2026-09-01','NULL',1,'ACTIVE'),
    ('SUB260002','Diya Shah','diya.shah@example.test','Premium','YEARLY',4999,'2026-01-15','2027-01-14',1,'ACTIVE');
    
INSERT INTO 
	subscriptions(subscription_code,subscriber_name,subscriber_email,plan_name,billing_cycle ,amount ,start_date ,end_date,auto_renew,subscription_status) 
VALUES
    ('SUB260003','Kabir Rao','kabir.rao@example.test','Basic','MONTHLY',199,'2026-09-10','NULL',1,'ACTIVE');
    
INSERT INTO 
	subscriptions(subscription_code,subscriber_name,subscriber_email,plan_name,billing_cycle ,amount ,start_date ,end_date,auto_renew,subscription_status) 
VALUES
	('SUB260004','Meera Bose','meera.bose@example.test','Premium','QUARTERLY',1399,'2026-07-01','2026-09-30',0,'PAUSED'),
    ('SUB260005','Test Subscriber','test.subscriber@example.test','Standard','MONTHLY',499,'2026-08-01','2027-08-31',0,'CANCELLED');
     
INSERT INTO 
	subscriptions(subscription_code,subscriber_name,subscriber_email,plan_name,billing_cycle ,amount ,start_date ,end_date,auto_renew,subscription_status) 
VALUES
    ('SUB260006','Raju Kumar','raju.kumar@example.test','Basic','MONTHLY',199,'2026-09-10','NULL',1,'ACTIVE');
    


UPDATE subscriptions 
SET 
    plan_name = 'Premium',
    amount = 799
WHERE
    subscription_code = 'SUB260001';
UPDATE subscriptions 
SET 
    subscription_status = 'ACTIVE',
    auto_renew = 1
WHERE
    subscription_code = 'SUB260004';
UPDATE subscriptions 
SET 
    amount = amount + (amount * .05)
WHERE
    subscription_status = 'ACTIVE';
UPDATE subscriptions 
SET 
    subscription_status = 'CANCELLED',
    auto_renew = 0,
    end_date = '2026-11-18'
WHERE
    subscription_code = 'SUB260003';   
UPDATE subscriptions 
SET 
    end_date = '2026-01-01'
WHERE
    subscription_code = 'SUB260002';
    
    
    
DELETE FROM subscriptions 
WHERE
    subscription_code = 'SUB260005';
INSERT INTO 
	subscriptions(subscription_code)
VALUES
     ('SUB-TEMP-999');
DELETE FROM subscriptions 
WHERE
    subscription_code = 'SUB-TEMP-999';
    
DELETE FROM subscriptions 
WHERE
    subscription_status = 'CANCELLED'
    AND auto_renew = 0;


 SELECT 
    subscription_id,
    subscription_code,
    subscriber_name,
    subscriber_email,
    plan_name,
    billing_cycle,
    amount,
    start_date,
    end_date,
    auto_renew,
    subscription_status,
    created_at
FROM
    subscriptions;
    
    
    
    
    
-- Event Schedule
CREATE TABLE events (
    event_id INT,
    event_code VARCHAR(15),
    event_name VARCHAR(150),
    venue VARCHAR(150),
    city VARCHAR(80),
    start_date VARCHAR(10),
    end_date VARCHAR(10),
    capacity INT,
    registration_fee INT,
    event_type VARCHAR(20),
    event_status VARCHAR(20),
    created_at VARCHAR(10)
);
DESCRIBE events;
SHOW CREATE TABLE events;

INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-JAVA-01','Java Developer Meetup','Tech Hall','Bengaluru','2026-10-10','2026-10-10',250,500,'OFFLINE','OPEN');
INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-CLOUD-02','Cloud Fundamentals Webinar','Online Platform','Online','2026-10-12','2026-10-12',1000,0,'ONLINE','OPEN'),
    ( 'EVT-DATA-03','Data Engineering Summit','Convention Centre','Hyderabad','2026-11-05','2026-11-06',600,2500,'HYBRID','PLANNED');

INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-UI-04','UI Design Workshop','Creative Hub','Chennai','2026-10-20','2026-10-20',80,1200,'OFFLINE','PLANNED');
INSERT INTO 
	events(event_code,event_name,venue,city,start_date,end_date,capacity,registration_fee,event_type,event_status)
VALUES
    ( 'EVT-OLD-05','Cancelled Training Event','Test Venue','Pune','2026-10-01','2026-10-01',30,100,'OFFLINE','CANCELLED');



UPDATE events 
SET 
    capacity = capacity + 750
WHERE
    event_name = 'Data Engineering Summit';
UPDATE events 
SET 
    event_status = 'OPEN'
WHERE
    event_code = 'EVT-UI-04';
UPDATE events 
SET 
    registration_fee = registration_fee + (registration_fee * 0.10)
WHERE
    event_type = 'OFFLINE';
 UPDATE events 
SET 
    start_date = '2026-10-13',
    end_date = '2026-10-13'
WHERE
    event_code = 'EVT-CLOUD-02'; 
UPDATE events 
SET 
    end_date = '2026-11-05'
WHERE
    event_code = 'EVT-DATA-03';
    
    
    
DELETE FROM events 
WHERE
    event_code = 'EVT-OLD-05';
INSERT INTO 
    events(event_code) 
VALUES
     ('EVT-TEMP-99');
DELETE FROM events 
WHERE
    event_code = 'EVT-TEMP-99';
DELETE FROM events 
WHERE
    registration_fee = 0
    AND event_TYPE = 'ONLINE'
    AND event_status = 'OPEN';

SELECT 
    event_id,
    event_code,
    event_name,
    venue,
    city,
    start_date,
    end_date,
    capacity,
    registration_fee,
    event_type,
    event_status,
    created_at
FROM
    events;
USE cdg_hyd_jfs_059;        
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
    

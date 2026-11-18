USE cdg_hyd_jfs_059;        
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
    
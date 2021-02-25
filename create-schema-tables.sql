DROP SCHEMA IF EXISTS `car-shop-ecommerce`;

CREATE SCHEMA `car-shop-ecommerce`;
USE `car-shop-ecommerce` ;


CREATE TABLE IF NOT EXISTS `car-shop-ecommerce`.`warehouse` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `location_lat` DECIMAL(13,5) DEFAULT NULL,
  `location_long` DECIMAL(13,5) DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


CREATE TABLE IF NOT EXISTS `car-shop-ecommerce`.`car` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(255) DEFAULT NULL,
  `model` VARCHAR(255) DEFAULT NULL,
  `year_model` BIGINT(11) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `licensed` BIT DEFAULT 1,
  `date_added` DATETIME(6) DEFAULT NULL,
  `warehouse_id` BIGINT(20) NOT NULL,
  `location` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_warehouse` (`warehouse_id`),
  CONSTRAINT `fk_warehouse` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

INSERT INTO `car-shop-ecommerce`.`warehouse` (`id`, `name`, `location_lat`, `location_long`) VALUES ('1', 'Warehouse A', '47.13111', '-61.54801');
INSERT INTO `car-shop-ecommerce`.`warehouse` (`id`, `name`, `location_lat`, `location_long`) VALUES ('2', 'Warehouse B', '15.95386', '7.06246');
INSERT INTO `car-shop-ecommerce`.`warehouse` (`id`, `name`, `location_lat`, `location_long`) VALUES ('3', 'Warehouse C', '39.12788', '-2.71398');
INSERT INTO `car-shop-ecommerce`.`warehouse` (`id`, `name`, `location_lat`, `location_long`) VALUES ('4', 'Warehouse D', '-70.84354', '132.22345');

INSERT INTO car (id, make, model, year_model, price, licensed, date_added, warehouse_id, location) VALUES
    (1,'Volkswagen','Jetta III',1995,12947.52,1,'2018-09-18 00:00:00', 1, 'West wing'),
    (2,'Chevrolet','Corvette',2004,20019.64,1,'2018-01-27 00:00:00', 1, 'West wing'),
    (3,'Ford','Expedition EL',2008,27323.42,0,'2018-07-03 00:00:00', 1, 'West wing'),
    (4,'Infiniti','FX',2010,8541.62,1,'2018-03-23 00:00:00', 1, 'West wing'),
    (5,'GMC','Safari',1998,14772.5,0,'2018-07-04 00:00:00', 1, 'West wing'),
    (6,'Plymouth','Colt Vista',1994,6642.45,1,'2018-07-11 00:00:00', 1, 'West wing'),
    (7,'Cadillac','Escalade ESV',2008,24925.75,0,'2018-01-29 00:00:00', 1, 'West wing'),
    (8,'Mitsubishi','Pajero',2002,28619.45,0,'2018-06-12 00:00:00', 1, 'West wing'),
    (9,'Infiniti','Q',1995,6103.4,0,'2017-11-13 00:00:00', 1, 'West wing'),
    (10,'Ford','Mustang',1993,18992.7,0,'2018-01-29 00:00:00', 1, 'West wing'),
    (11,'Chevrolet','G-Series 1500',1997,23362.41,0,'2018-07-30 00:00:00', 1, 'West wing'),
    (12,'Cadillac','DeVille',1993,18371.53,0,'2018-01-24 00:00:00', 1, 'West wing'),
    (13,'Acura','NSX',2001,23175.76,0,'2018-03-28 00:00:00', 1, 'West wing'),
    (14,'Ford','Econoline E250',1994,26605.54,1,'2018-05-13 00:00:00', 1, 'West wing'),
    (15,'Lexus','GX',2005,27395.26,0,'2017-11-12 00:00:00', 1, 'West wing'),
    (16,'Dodge','Ram Van 3500',1999,6244.51,1,'2018-09-28 00:00:00', 1, 'West wing'),
    (17,'Dodge','Caravan',1995,16145.27,0,'2017-11-25 00:00:00', 1, 'West wing'),
    (18,'Dodge','Dynasty',1992,15103.84,1,'2018-08-12 00:00:00', 1, 'West wing'),
    (19,'Dodge','Ram 1500',2004,9977.65,1,'2018-01-18 00:00:00', 1, 'West wing'),
    (20,'Maserati','Coupe',2005,19957.71,0,'2017-11-14 00:00:00', 2, 'East wing'),
    (21,'Isuzu','Rodeo',1998,6303.99,0,'2017-12-03 00:00:00', 2, 'East wing'),
    (22,'Infiniti','I',2002,6910.16,0,'2017-10-15 00:00:00', 2, 'East wing'),
    (23,'Nissan','Altima',1994,8252.66,0,'2018-08-12 00:00:00', 2, 'East wing'),
    (24,'Toyota','Corolla',2009,23732.11,0,'2018-02-13 00:00:00', 2, 'East wing'),
    (25,'Acura','MDX',2011,8487.19,0,'2018-04-18 00:00:00', 2, 'East wing'),
    (26,'BMW','7 Series',1998,29069.52,0,'2017-10-29 00:00:00', 2, 'East wing'),
    (27,'Nissan','Maxima',2004,11187.68,0,'2018-07-16 00:00:00', 2, 'East wing'),
    (28,'Audi','A8',1999,16047.9,0,'2017-12-05 00:00:00', 2, 'East wing'),
    (29,'Nissan','Murano',2005,25859.78,0,'2018-06-06 00:00:00', 2, 'East wing'),
    (30,'Acura','RL',2010,13232.13,1,'2017-12-16 00:00:00', 2, 'East wing'),
    (31,'Mitsubishi','Chariot',1987,15665.23,0,'2018-02-21 00:00:00', 2, 'East wing'),
    (32,'GMC','3500 Club Coupe',1992,18129.37,1,'2018-09-23 00:00:00', 2, 'East wing'),
    (33,'Dodge','Dakota',2009,14479.37,0,'2017-12-12 00:00:00', 2, 'East wing'),
    (34,'Mercury','Grand Marquis',1996,20614.72,0,'2018-05-26 00:00:00', 2, 'East wing'),
    (35,'Kia','Sportage',2001,27106.47,0,'2018-03-14 00:00:00', 2, 'East wing'),
    (36,'Chevrolet','Blazer',1994,14835.48,0,'2017-11-10 00:00:00', 2, 'East wing'),
    (37,'Mercedes-Benz','SL-Class',1994,27717.28,0,'2018-08-17 00:00:00', 2, 'East wing'),
    (38,'Honda','Civic Si',2003,18569.86,1,'2018-09-12 00:00:00', 2, 'East wing'),
    (39,'Mercedes-Benz','CL-Class',2002,23494.78,1,'2018-05-24 00:00:00', 2, 'East wing'),
    (40,'Volkswagen','Jetta',2006,25469.49,0,'2018-04-23 00:00:00', 2, 'East wing'),
    (41,'Pontiac','Grand Prix',1975,11600.74,1,'2018-01-14 00:00:00', 2, 'East wing'),
    (42,'Infiniti','FX',2012,22000.62,1,'2018-06-09 00:00:00', 2, 'East wing'),
    (43,'Jaguar','XK',2006,10260.79,1,'2018-09-28 00:00:00', 2, 'East wing'),
    (44,'Cadillac','STS',2007,13740.2,0,'2018-02-25 00:00:00', 2, 'East wing'),
    (45,'Pontiac','Sunfire',1997,28489.1,0,'2017-12-05 00:00:00', 2, 'East wing'),
    (46,'Cadillac','SRX',2004,26750.38,1,'2018-08-07 00:00:00', 2, 'East wing'),
    (47,'Land Rover','Freelander',2004,21770.59,0,'2018-09-01 00:00:00', 2, 'East wing'),
    (48,'Suzuki','Forenza',2005,28834.26,0,'2018-05-09 00:00:00', 2, 'East wing'),
    (49,'Saab','9-7X',2005,25975.68,0,'2018-06-07 00:00:00', 2, 'East wing'),
    (50,'Ford','Fusion',2012,28091.96,0,'2018-07-15 00:00:00', 2, 'East wing'),
    (51,'Cadillac','Escalade',2005,7429.18,1,'2018-09-26 00:00:00',3, 'Suid wing'),
    (52,'Porsche','Cayenne',2011,17066.31,1,'2017-10-19 00:00:00',3, 'Suid wing'),
    (53,'Mercedes-Benz','SL-Class',2005,14066.06,0,'2018-08-08 00:00:00',3, 'Suid wing'),
    (54,'Mitsubishi','RVR',1995,22560.18,0,'2018-05-25 00:00:00',3, 'Suid wing'),
    (55,'Volvo','850',1995,25762.08,1,'2017-10-03 00:00:00',3, 'Suid wing'),
    (56,'Honda','del Sol',1994,18840.96,1,'2017-11-25 00:00:00',3, 'Suid wing'),
    (57,'Infiniti','Q',1996,28773.14,1,'2018-08-09 00:00:00',3, 'Suid wing'),
    (58,'Mercedes-Benz','500E',1992,17141.08,1,'2018-08-13 00:00:00',3, 'Suid wing'),
    (59,'GMC','Envoy XL',2002,18983.52,1,'2018-03-14 00:00:00',3, 'Suid wing'),
    (60,'Volkswagen','Touareg 2',2008,15611.22,1,'2018-02-22 00:00:00',3, 'Suid wing'),
    (61,'Saab','900',1987,8771,0,'2017-12-01 00:00:00',4, 'Suid wing'),
    (62,'Mazda','B-Series',1998,23407.59,0,'2018-03-01 00:00:00',4, 'Suid wing'),
    (63,'GMC','Sierra 3500',2012,5869.23,1,'2018-04-27 00:00:00',4, 'Suid wing'),
    (64,'Chevrolet','Corvette',1964,16630.67,1,'2018-05-31 00:00:00',4, 'Suid wing'),
    (65,'Toyota','Tacoma',1997,11597.18,0,'2018-03-30 00:00:00',4, 'Suid wing'),
    (66,'GMC','Sonoma',2004,18248.21,0,'2018-03-09 00:00:00',4, 'Suid wing'),
    (67,'Bugatti','Veyron',2009,8051.64,0,'2018-01-10 00:00:00',4, 'Suid wing'),
    (68,'Dodge','Ram 1500 Club',1996,14008.3,0,'2018-05-01 00:00:00',4, 'Suid wing'),
    (69,'Land Rover','Discovery Series II',2001,18620.19,0,'2018-03-03 00:00:00',4, 'Suid wing'),
    (70,'Volvo','960',1993,7316.93,1,'2018-02-15 00:00:00',4, 'Suid wing'),
    (71,'Chrysler','LHS',2001,29444.71,0,'2017-10-25 00:00:00',4, 'Suid wing'),
    (72,'Porsche','944',1984,7396.95,1,'2017-10-26 00:00:00',4, 'Suid wing'),
    (73,'Subaru','Legacy',2010,24491.8,0,'2017-12-26 00:00:00',4, 'Suid wing'),
    (74,'Volvo','XC90',2003,29009.65,1,'2018-04-24 00:00:00',4, 'Suid wing'),
    (75,'Buick','Skyhawk',1985,10567.27,0,'2018-03-21 00:00:00',4, 'Suid wing'),
    (76,'GMC','Envoy XUV',2004,20997.71,1,'2018-03-27 00:00:00',4, 'Suid wing'),
    (77,'Volvo','S60',2009,28614.95,0,'2018-07-25 00:00:00',4, 'Suid wing'),
    (78,'Pontiac','Montana',2000,11221.14,0,'2018-01-04 00:00:00',4, 'Suid wing'),
    (79,'Lexus','RX',2002,23194.01,0,'2018-05-02 00:00:00',4, 'Suid wing'),
    (80,'Lexus','RX',2000,17805.45,0,'2018-09-11 00:00:00',4, 'Suid wing');

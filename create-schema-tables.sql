DROP SCHEMA IF EXISTS `car-shop-ecommerce`;

CREATE SCHEMA `car-shop-ecommerce`;
USE `car-shop-ecommerce` ;


CREATE TABLE IF NOT EXISTS `car-shop-ecommerce`.`warehouse` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `lat` DECIMAL(13,5) DEFAULT NULL,
  `long` DECIMAL(13,5) DEFAULT NULL,
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
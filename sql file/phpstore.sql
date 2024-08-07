CREATE DATABASE IF NOT EXISTS `phpstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phpstore`;

CREATE TABLE `admins` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `username` varchar(30) DEFAULT NULL,
                          `password` varchar(30) DEFAULT NULL,
                          PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
                              `id` int NOT NULL AUTO_INCREMENT,
                              `name` varchar(30) DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                              `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                              PRIMARY KEY (`id`)
);

CREATE TABLE `contact` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `email` varchar(30) DEFAULT NULL,
                           `msg` varchar(200) DEFAULT NULL,
                           `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                           `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                           PRIMARY KEY (`id`)
);

CREATE TABLE `customers` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `username` varchar(30) DEFAULT NULL,
                             `password` varchar(30) DEFAULT NULL,
                             `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                             `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                             PRIMARY KEY (`id`)
);

CREATE TABLE `order_details` (
                                 `id` int NOT NULL AUTO_INCREMENT,
                                 `order_id` int DEFAULT NULL,
                                 `product_id` int DEFAULT NULL,
                                 `quantity` int DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                                 PRIMARY KEY (`id`)
);

CREATE TABLE `orders` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `customer_id` int DEFAULT NULL,
                          `address` varchar(50) DEFAULT NULL,
                          `phone` varchar(30) DEFAULT NULL,
                          `total` float DEFAULT NULL,
                          `pay_method` varchar(20) DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                          PRIMARY KEY (`id`)
);

CREATE TABLE `products` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(30) DEFAULT NULL,
                            `price` float DEFAULT NULL,
                            `picture` varchar(30) DEFAULT NULL,
                            `description` varchar(200) DEFAULT NULL,
                            `category_id` int DEFAULT NULL,
                            `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                            `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
                            PRIMARY KEY (`id`)
);

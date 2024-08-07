USE `phpstore`;

-- Inserindo dados na tabela `admins`
INSERT INTO `admins` (id, username, password) VALUES
    (1, 'test@gmail.com', 'test');

-- Inserindo dados na tabela `categories`
INSERT INTO `categories` (id, name, created_at, updated_at) VALUES
                                                                (1, 'LED', '2022-04-23 06:18:37', '2022-04-23 06:18:37'),
                                                                (2, 'Resistor', '2022-04-24 05:14:30', '2022-04-24 05:14:30'),
                                                                (3, 'TRANSISTOR', '2022-06-02 00:54:12', '2022-06-02 00:54:12'),
                                                                (4, 'Protoboard', '2022-06-02 01:16:59', '2022-06-02 01:16:59');

-- Inserindo dados na tabela `contact`
INSERT INTO `contact` (id, email, msg, created_at, updated_at) VALUES
                                                                   (1, 'kegecor490@ovout.com', 'com muitas coisas', '2022-04-23 05:18:13', '2022-04-23 05:18:13'),
                                                                   (3, 'qweqew', '123', '2022-04-23 05:20:11', '2022-04-23 05:20:11'),
                                                                   (4, 'asd@asd.com', 'asd', '2022-04-23 05:20:37', '2022-04-23 05:20:37'),
                                                                   (5, 'asd@asd.com', 'asdaa', '2022-04-23 05:21:35', '2022-04-23 05:21:35'),
                                                                   (6, 'admin@admin.admin', 'asdasd', '2022-05-07 02:02:38', '2022-05-07 02:02:38'),
                                                                   (7, '', '', '2022-05-07 02:03:47', '2022-05-07 02:03:47'),
                                                                   (8, 'kegecor490@ovout.com', '01010', '2022-05-07 02:04:02', '2022-05-07 02:04:02'),
                                                                   (9, 'kegecor490@ovout.com', '01010', '2022-05-07 02:04:16', '2022-05-07 02:04:16'),
                                                                   (10, 'kegecor490@ovout.com', '01010', '2022-05-07 02:04:20', '2022-05-07 02:04:20'),
                                                                   (11, 'kegecor490@ovout.com', '0101011', '2022-05-07 02:04:23', '2022-05-07 02:04:23'),
                                                                   (12, 'test@gmail.com', '123', '2022-05-07 02:04:42', '2022-05-07 02:04:42');

-- Inserindo dados na tabela `customers`
INSERT INTO `customers` (id, username, password, created_at, updated_at) VALUES
                                                                             (1, 'abc@gmail.com', '123', '2022-06-04 04:37:39', '2022-06-04 04:37:39'),
                                                                             (2, 'test@gmail.com', 'test', '2022-06-05 03:14:14', '2022-06-05 03:14:14');

-- Inserindo dados na tabela `order_details`
INSERT INTO `order_details` (id, order_id, product_id, quantity, created_at, updated_at) VALUES
                                                                                             (1, 3, 14, 1, '2022-06-05 05:38:59', '2022-06-05 05:38:59'),
                                                                                             (2, 3, 13, 1, '2022-06-06 03:12:19', '2022-06-06 03:12:19'),
                                                                                             (3, 3, 14, 1, '2022-06-06 03:14:16', '2022-06-06 03:14:16'),
                                                                                             (4, 3, 14, 1, '2022-06-06 03:17:10', '2022-06-06 03:17:10'),
                                                                                             (5, 3, 15, 1, '2022-06-06 03:17:52', '2022-06-06 03:17:52');

-- Inserindo dados na tabela `orders`
INSERT INTO `orders` (id, customer_id, address, phone, total, pay_method, created_at, updated_at) VALUES
                                                                                                      (1, 2, 'lol', '123456', 999, NULL, '2022-06-05 05:31:49', '2022-06-05 05:31:49'),
                                                                                                      (2, 2, 'lol', '123456', 999, NULL, '2022-06-05 05:31:57', '2022-06-05 05:31:57'),
                                                                                                      (3, 2, 'lol update', '123456', 999, NULL, '2022-06-05 05:38:58', '2022-06-05 05:38:58'),
                                                                                                      (4, 2, 'asdasd', '123123', 999, 'cash', '2022-06-06 03:31:36', '2022-06-06 03:31:36'),
                                                                                                      (5, 2, '', '', 1001, 'paypal', '2022-06-06 03:32:49', '2022-06-06 03:32:49');

-- Inserindo dados na tabela `products`
INSERT INTO `products` (id, name, price, picture, description, category_id, created_at, updated_at) VALUES
                                                                                                        (13, '(update)Resistor 1K 5% (1/4W)', 10, 'uploads/product-09.jpg', '10', 1, '2022-05-07 03:33:21', '2022-05-07 03:33:21'),
                                                                                                        (14, '(update)Resistor 1K 5% (1/4W)', 999, 'uploads/slide1.jpg', 'aaaa', 1, '2022-05-07 03:39:41', '2022-05-07 03:39:41'),
                                                                                                        (15, 'Arduino', 1, 'uploads/arduino.jpg', 'Arduino Uno', 4, '2022-06-02 01:20:02', '2022-06-02 01:20:02');

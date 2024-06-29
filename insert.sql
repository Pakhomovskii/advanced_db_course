INSERT INTO Customer (FullName, EmailAddress, PasswordHash, Address, TelephoneNumber)
VALUES
('Ivan Ivanov', 'ivan@example.com', 'hashed_password_1', 'Moscow, Lenina St., 1', '+79043112233'),
('Petr Petrov', 'petr@example.com', 'hashed_password_2', 'Saint Petersburg, Nevsky Ave., 2', '+79001112244'),
('Anna Sidorova', 'anna@example.com', 'hashed_password_3', 'Kazan, Pushkina St., 3', '+79001112255'),
('Egor Letov', 'egor@example.com', 'hashed_password_1', 'Moscow, Lenina St., 1', '+79023112233'),
('Kirill Ananas', 'kirill@example.com', 'hashed_password_2', 'Saint Petersburg, Nevsky Ave., 2', '+79001112244'),
('Alex German', 'alex@example.com', 'hashed_password_3', 'Kazan, Pushkina St., 3', '+79001112255'),
('Nikita Afdeev', 'nikita@example.com', 'hashed_password_1', 'Moscow, Lenina St., 1', '+79231112233'),
('Denis Afdeev', 'df@example.com', 'hashed_password_1', 'Irkutsk, Lenina St., 1', '+79001145233'),
('David Akunin', 'david@example.com', 'hashed_password_2', 'Saint Petersburg, Nevsky Ave., 2', '+76601112244'),
('Nikolas Sam', 'nikolas@example.com', 'hashed_password_3', 'Kazan, Pushkina St., 3', '+79001116455');

INSERT INTO Supplier (SupplierName)
VALUES
    ('Supplier 1'),
    ('Supplier 2'),
    ('Supplier 3'),
    ('Supplier 4'),
    ('Supplier 5'),
    ('Supplier 6'),
    ('Supplier 7'),
    ('Supplier 8'),
    ('Supplier 9'),
    ('Supplier 10');



INSERT INTO Category (CategoryName)
VALUES
('Electronics'),
('Clothing'),
('Books'),
('Sports'),
('Household Chemicals'),
('Tools'),
('Jewelry'),
('Gifts'),
('Paintings'),
('Home and Garden');


INSERT INTO Product (Name, SupplierID, Description, Price, CategoryID, Image)
VALUES
    ('Smartphone 1', 1, 'Smartphone 1 test', 599.99, 1, ''),
    ('Laptop 1', 2, 'Laptop 1 test', 999.99, 1, ''),
    ('T-shirt 1', 3, 'T-shirt 1 test', 19.99, 2, null),
    ('Book 1', 4, 'Book 1 test', 9.99, 3, null),
    ('Tool Set Big', 6, 'Tool set test', 49.99, 4, null),
    ('T-shirt big 1', 1, 'T-shirt big 1 test', 129.99, 2, null),
    ('Book 3', 4, 'Book 3 test', 9.99, 3, null),
    ('Tool Set Big', 6, 'Tool set test', 49.99, 4, null),
    ('Tennis Racket', 5, 'Tennis racket test', 79.99, 4, null),
    ('Golf Racket', 1, 'Tennis racket test', 79.99, 4, null),
    ('Tool Set', 6, 'Tool set test', 49.99, 5, null),
    ('Smartphone 2', 1, 'Smartphone 2 test', 799.99, 1, null),
    ('Laptop 2', 2, 'Laptop 2 test', 1299.99, 1, null),
    ('Jeans', 3, 'Jeans test', 39.99, 2, null),
    ('Book 2', 4, 'Book 2 test', 14.99, 3, null),
    ('Dumbbells', 5, 'Dumbbells test', 29.99, 4, null),
    ('Blender', 7, 'Blender test', 59.99, 5, null),
    ('Necklace', 8, 'Necklace test', 99.99, 6, null),
    ('Gift Basket', 9, 'Gift basket test', 24.99, 7, null),
    ('Painting 1', 10, 'Painting 1 test', 199.99, 8, null),
    ('Garden Hose', 6, 'Garden hose test', 19.99, 9, null);


INSERT INTO Orders (CustomerID, OrderDate, Description)
VALUES
    (1, '2024-05-24 12:30:00', 'order 1'),
    (2, '2024-05-23 15:45:00', 'order 2'),
    (3, '2024-05-22 10:15:00', 'order 3'),
    (4, '2024-05-21 18:00:00', 'order 4'),
    (5, '2024-05-20 09:25:00', 'order 5'),
    (6, '2024-05-19 14:50:00', 'order 6'),
    (7, '2024-05-18 11:35:00', 'order 7'),
    (8, '2024-05-17 20:10:00', 'order 8'),
    (9, '2024-05-16 13:45:00', 'order 9'),
    (1, '2024-05-15 17:20:00', 'order 10'),
    (2, '2024-05-14 10:55:00', 'order 11'),
    (3, '2024-05-13 16:30:00', 'order 12'),
    (4, '2024-05-12 12:05:00', 'order 13'),
    (5, '2024-05-11 19:40:00', 'order 14'),
    (6, '2024-05-10 11:15:00', 'order 15'),
    (7, '2024-05-09 18:50:00', 'order 16'),
    (8, '2024-05-08 13:25:00', 'order 17'),
    (9, '2024-05-07 10:00:00', 'order 18'),
    (1, '2024-05-06 15:35:00', 'order 19'),
    (2, '2024-05-05 12:10:00', 'order 20'),
    (3, '2024-05-04 19:45:00', 'order 21'),
    (4, '2024-05-03 14:20:00', 'order 22'),
    (5, '2024-05-02 10:55:00', 'order 23'),
    (6, '2024-05-01 17:30:00', 'order 24'),
    (7, '2024-04-30 13:05:00', 'order 25'),
    (8, '2024-04-29 19:40:00', 'order 26'),
    (9, '2024-04-28 14:15:00', 'order 27'),
    (1, '2024-04-27 11:50:00', 'order 28'),
    (2, '2024-04-26 18:25:00', 'order 29'),
    (3, '2024-04-25 13:00:00', 'order 30'),
    (4, '2024-04-24 10:35:00', 'order 31'),
    (5, '2024-04-23 16:10:00', 'order 32'),
    (6, '2024-04-22 11:45:00', 'order 33'),
    (7, '2024-04-21 19:20:00', 'order 34'),
    (8, '2024-04-20 14:55:00', 'order 35'),
    (9, '2024-04-19 11:30:00', 'order 36'),
    (1, '2024-04-18 18:05:00', 'order 37'),
    (2, '2024-04-17 13:40:00', 'order 38'),
    (3, '2024-04-16 10:15:00', 'order 39'),
    (4, '2024-04-15 16:50:00', 'order 40'),
    (5, '2024-04-14 12:25:00', 'order 41'),
    (6, '2024-04-13 19:00:00', 'order 42'),
    (7, '2024-04-12 14:35:00', 'order 43'),
    (8, '2024-04-11 11:10:00', 'order 44'),
    (9, '2024-04-10 17:45:00', 'order 45'),
    (1, '2024-04-09 13:20:00', 'order 46'),
    (2, '2024-04-08 10:55:00', 'order 47'),
    (3, '2024-04-07 16:30:00', 'order 48'),
    (4, '2024-04-06 12:05:00', 'order 49'),
    (5, '2024-04-05 19:40:00', 'order 50');



INSERT INTO OrderItem (OrderID, ProductID, Quantity)
VALUES
    (1, 1, 2),
    (1, 3, 1),
    (2, 2, 1),
    (3, 5, 3),
    (4, 7, 1),
    (5, 9, 2),
    (6, 11, 1),
    (7, 13, 4),
    (8, 15, 2),
    (9, 17, 1),
    (10, 1, 1),
    (11, 4, 5),
    (12, 6, 2),
    (13, 8, 3),
    (14, 10, 1),
    (15, 12, 2),
    (16, 14, 1),
    (17, 16, 3),
    (18, 18, 2),
    (19, 20, 1),
    (20, 2, 2),
    (21, 5, 1),
    (22, 7, 3),
    (23, 9, 1),
    (24, 11, 2),
    (25, 13, 1),
    (26, 15, 4),
    (27, 17, 2),
    (28, 19, 1),
    (29, 1, 1),
    (30, 3, 3);



INSERT INTO ReturnedItem (OrderItemID, ReturnDate, Reason)
VALUES
    (1, '2024-05-25', 'Wrong size'),
    (2, '2024-05-25', 'Wrong size'),
    (3, '2024-05-25', 'Wrong color'),
    (4, '2024-05-25', 'Wrong size'),
    (5, '2024-05-25', 'Wrong size'),
    (6, '2024-05-25', 'Wrong color'),
    (7, '2024-05-25', 'Wrong size'),
    (9, '2024-05-24', 'Broken'),
    (10, '2024-05-24', 'Broken');

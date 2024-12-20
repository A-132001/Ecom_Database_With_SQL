INSERT INTO E_User (password, email, username, fname, lname, is_admin)
VALUES 
('Pass1234', 'user1@email.com', 'user1', 'John', 'Doe', 0),
('Pass1234', 'user2@email.com', 'user2', 'Jane', 'Smith', 1),
('Pass1234', 'user3@email.com', 'user3', 'Mike', 'Johnson', 0),
('Pass1234', 'user4@email.com', 'user4', 'Alice', 'Brown', 0),
('Pass1234', 'user5@email.com', 'user5', 'Chris', 'White', 1),
('Pass1234', 'user6@email.com', 'user6', 'Tom', 'Davis', 0),
('Pass1234', 'user7@email.com', 'user7', 'Emma', 'Wilson', 0),
('Pass1234', 'user8@email.com', 'user8', 'Olivia', 'Taylor', 1),
('Pass1234', 'user9@email.com', 'user9', 'Liam', 'Thomas', 0),
('Pass1234', 'user10@email.com', 'user10', 'Sophia', 'Anderson', 1),
('Pass1234', 'user11@email.com', 'user11', 'Noah', 'Harris', 0),
('Pass1234', 'user12@email.com', 'user12', 'Isabella', 'Martin', 0),
('Pass1234', 'user13@email.com', 'user13', 'Mason', 'Lee', 1),
('Pass1234', 'user14@email.com', 'user14', 'Lucas', 'Walker', 0),
('Pass1234', 'user15@email.com', 'user15', 'Mia', 'Robinson', 1);

INSERT INTO phone_numbers (user_id, phone_number)
VALUES
(1, '123-456-7890'), (2, '234-567-8901'), (3, '345-678-9012'),
(4, '456-789-0123'), (5, '567-890-1234'), (6, '678-901-2345'),
(7, '789-012-3456'), (8, '890-123-4567'), (9, '901-234-5678'),
(10, '012-345-6789'), (11, '111-222-3333'), (12, '222-333-4444'),
(13, '333-444-5555'), (14, '444-555-6666'), (15, '555-666-7777');

INSERT INTO Category (name, description)
VALUES
('Electronics', 'Electronic gadgets and devices'),
('Clothing', 'Men and Women Clothing'),
('Books', 'Books and Stationery'),
('Toys', 'Toys for kids'),
('Sports', 'Sports equipment'),
('Health', 'Healthcare products'),
('Beauty', 'Beauty and personal care'),
('Furniture', 'Home and office furniture'),
('Automotive', 'Automobile products'),
('Groceries', 'Daily groceries and supplies'),
('Accessories', 'Fashion accessories'),
('Footwear', 'Shoes and sandals'),
('Jewelry', 'Jewelry items'),
('Kitchen', 'Kitchen tools and appliances'),
('Garden', 'Garden tools and decorations');


INSERT INTO Product (name, description, price, category_id)
VALUES
('Laptop', 'High-performance laptop', 1200.99, 1),
('T-Shirt', 'Cotton T-shirt', 15.99, 2),
('Novel', 'Bestselling novel', 9.99, 3),
('Doll', 'Kids toy doll', 19.49, 4),
('Football', 'Standard size football', 29.99, 5),
('Vitamins', 'Daily vitamin supplements', 14.99, 6),
('Lipstick', 'Waterproof lipstick', 8.99, 7),
('Desk', 'Wooden office desk', 199.99, 8),
('Car Tire', 'Durable car tire', 89.99, 9),
('Apple', 'Fresh apples (1kg)', 2.99, 10),
('Watch', 'Digital wristwatch', 49.99, 11),
('Sneakers', 'Running shoes', 59.99, 12),
('Necklace', 'Gold necklace', 399.99, 13),
('Blender', 'Kitchen blender', 34.99, 14),
('Lawn Mower', 'Electric lawn mower', 249.99, 15);


INSERT INTO Total_Order (o_date, payment_status, user_id)
VALUES
('2024-06-01', 1, 1), ('2024-06-02', 0, 2), ('2024-06-03', 1, 3),
('2024-06-04', 1, 4), ('2024-06-05', 0, 5), ('2024-06-06', 1, 6),
('2024-06-07', 0, 7), ('2024-06-08', 1, 8), ('2024-06-09', 1, 9),
('2024-06-10', 0, 10), ('2024-06-11', 1, 11), ('2024-06-12', 0, 12),
('2024-06-13', 1, 13), ('2024-06-14', 1, 14), ('2024-06-15', 0, 15);

INSERT INTO payment (amount, p_date, method, order_id)
VALUES
(1200.99, '2024-06-01', 'Credit Card', 1),
(15.99, '2024-06-02', 'PayPal', 2),
(9.99, '2024-06-03', 'Credit Card', 3),
(19.49, '2024-06-04', 'Cash', 4),
(29.99, '2024-06-05', 'Credit Card', 5),
(14.99, '2024-06-06', 'Cash', 6),
(8.99, '2024-06-07', 'PayPal', 7),
(199.99, '2024-06-08', 'Credit Card', 8),
(89.99, '2024-06-09', 'Debit Card', 9),
(2.99, '2024-06-10', 'Cash', 10),
(49.99, '2024-06-11', 'PayPal', 11),
(59.99, '2024-06-12', 'Credit Card', 12),
(399.99, '2024-06-13', 'Debit Card', 13),
(34.99, '2024-06-14', 'Credit Card', 14),
(249.99, '2024-06-15', 'Cash', 15);


INSERT INTO user_address (city, street, post_code, country, user_id)
VALUES
('Cairo', 'Main St', '12345', 'Egypt', 1),
('Alexandria', 'Sea Rd', '67890', 'Egypt', 2),
('Giza', 'Pyramid Rd', '54321', 'Egypt', 3),
('Mansoura', 'Nile St', '11223', 'Egypt', 4),
('Luxor', 'Temple Rd', '33445', 'Egypt', 5),
('Aswan', 'River St', '55667', 'Egypt', 6),
('Zagazig', 'Market St', '77889', 'Egypt', 7),
('Tanta', 'Old Rd', '99112', 'Egypt', 8),
('Suez', 'Port Rd', '22334', 'Egypt', 9),
('Ismailia', 'Green Rd', '44556', 'Egypt', 10),
('Port Said', 'Harbor Rd', '66778', 'Egypt', 11),
('Damietta', 'Bridge Rd', '88990', 'Egypt', 12),
('Fayoum', 'Lake St', '10112', 'Egypt', 13),
('Beni Suef', 'Main Ave', '12122', 'Egypt', 14),
('Hurghada', 'Resort Rd', '13132', 'Egypt', 15);



INSERT INTO Cart (total_items, total_price, user_id)
VALUES
(3, 150.50, 1), (2, 75.00, 2), (4, 220.75, 3),
(1, 50.00, 4), (5, 320.00, 5), (2, 100.25, 6),
(3, 150.00, 7), (4, 250.99, 8), (2, 125.00, 9),
(6, 450.75, 10), (1, 30.00, 11), (3, 90.00, 12),
(2, 60.50, 13), (4, 300.00, 14), (5, 500.00, 15);


INSERT INTO cart_items (quantity, total_price, product_id, cart_id)
VALUES
(1, 120.99, 1, 1), (2, 31.98, 2, 2), (1, 9.99, 3, 3),
(3, 58.47, 4, 4), (2, 59.98, 5, 5), (1, 14.99, 6, 6),
(2, 17.98, 7, 7), (1, 199.99, 8, 8), (4, 359.96, 9, 9),
(3, 269.97, 10, 10), (2, 99.98, 11, 11), (1, 59.99, 12, 12),
(1, 399.99, 13, 13), (3, 104.97, 14, 14), (2, 499.98, 15, 15);


INSERT INTO order_items (quantity, total_price, product_id, order_id)
VALUES
(2, 241.98, 1, 1), (1, 15.99, 2, 2), (3, 29.97, 3, 3),
(2, 38.98, 4, 4), (1, 29.99, 5, 5), (4, 59.96, 6, 6),
(2, 17.98, 7, 7), (1, 199.99, 8, 8), (3, 269.97, 9, 9),
(2, 179.98, 10, 10), (1, 49.99, 11, 11), (4, 239.96, 12, 12),
(2, 799.98, 13, 13), (3, 104.97, 14, 14), (5, 1249.95, 15, 15);
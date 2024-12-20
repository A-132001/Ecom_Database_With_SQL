-- View 1: UserPhoneDetails (Encrypted)
CREATE VIEW UserPhoneDetails AS
SELECT 
    u.id AS UserID,
    u.username,
    u.email,
    u.fname,
    u.lname,
    p.phone_number
FROM 
    E_User u
LEFT JOIN 
    phone_numbers p ON u.id = p.user_id;
GO

-- View 2: ProductDetails (Encrypted)
CREATE VIEW ProductDetails AS
SELECT 
    p.id AS ProductID,
    p.name AS ProductName,
    p.description AS ProductDescription,
    p.price,
    c.name AS CategoryName
FROM 
    Product p
LEFT JOIN 
    Category c ON p.category_id = c.id;
GO

-- View 3: OrderDetails (Encrypted)
CREATE VIEW OrderDetails AS
SELECT 
    o.id AS OrderID,
    o.o_date AS OrderDate,
    u.username AS OrderedBy,
    o.payment_status,
    p.amount AS PaymentAmount,
    p.method AS PaymentMethod
FROM 
    Total_Order o
LEFT JOIN 
    E_User u ON o.user_id = u.id
LEFT JOIN 
    payment p ON o.id = p.order_id;
GO

-- View 4: CartContents (Encrypted)
CREATE VIEW CartContents AS
SELECT 
    ci.id AS CartItemID,
    c.id AS CartID,
    u.username AS CartOwner,
    p.name AS ProductName,
    ci.quantity,
    ci.total_price
FROM 
    cart_items ci
INNER JOIN 
    Cart c ON ci.cart_id = c.id
INNER JOIN 
    E_User u ON c.user_id = u.id
INNER JOIN 
    Product p ON ci.product_id = p.id;
GO

-- View 5: OrderItemsDetails (Encrypted)
CREATE VIEW OrderItemsDetails AS
SELECT 
    oi.order_id AS OrderID,
    p.name AS ProductName,
    oi.quantity,
    oi.total_price
FROM 
    order_items oi
INNER JOIN 
    Product p ON oi.product_id = p.id;
GO

-- View 6: AllUsers (Encrypted)
CREATE VIEW AllUsers AS
SELECT 
    u.id AS UserID,
    u.username,
    u.email,
    u.fname,
    u.lname,
    u.is_admin,
    p.phone_number
FROM 
    E_User u
LEFT JOIN 
    phone_numbers p ON u.id = p.user_id;
GO

-- View 7: AllOrders (Encrypted)
CREATE VIEW AllOrders AS
SELECT 
    o.id AS OrderID,
    o.o_date AS OrderDate,
    u.username AS OrderedBy,
    o.payment_status,
    p.amount AS PaymentAmount,
    p.method AS PaymentMethod
FROM 
    Total_Order o
LEFT JOIN 
    E_User u ON o.user_id = u.id
LEFT JOIN 
    payment p ON o.id = p.order_id;
GO

-- Testing the Views (Optional)
SELECT * FROM UserPhoneDetails;
SELECT * FROM ProductDetails;
SELECT * FROM OrderDetails;
SELECT * FROM CartContents;
SELECT * FROM OrderItemsDetails;
SELECT * FROM AllUsers;
SELECT * FROM AllOrders;

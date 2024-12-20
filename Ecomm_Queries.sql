
CREATE TABLE E_User (
    id INT IDENTITY(1,1) PRIMARY KEY,
    password VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    username VARCHAR(150) NOT NULL UNIQUE,
    fname VARCHAR(150),
    lname VARCHAR(150),
    is_admin BIT NOT NULL
);


CREATE TABLE phone_numbers (
    phone_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    CONSTRAINT FK_User_phones FOREIGN KEY (user_id) REFERENCES E_User(id) ON DELETE CASCADE,
    CONSTRAINT UQ_User_phone UNIQUE (user_id, phone_number) 
);


CREATE TABLE Category (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(254) NOT NULL
);


CREATE TABLE Product (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(512) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0), 
    category_id INT,
    CONSTRAINT FK_Category FOREIGN KEY (category_id) REFERENCES Category(id) ON DELETE SET NULL
);


CREATE TABLE Total_Order (
    id INT IDENTITY(1,1) PRIMARY KEY,
    o_date DATE NOT NULL,
    payment_status BIT NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT FK_User_order FOREIGN KEY (user_id) REFERENCES E_User(id) ON DELETE CASCADE
);


CREATE TABLE payment (
    id INT IDENTITY(1,1) PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    p_date DATE NOT NULL,
    method VARCHAR(50) NOT NULL,
    order_id INT NOT NULL,
    CONSTRAINT FK_Order FOREIGN KEY (order_id) REFERENCES Total_Order(id) ON DELETE CASCADE
);


CREATE TABLE order_items (
    id INT IDENTITY(1,1) PRIMARY KEY,
    quantity INT NOT NULL CHECK (quantity > 0),  
    total_price DECIMAL(10,2) NOT NULL CHECK (total_price >= 0),
    product_id INT NOT NULL,
    order_id INT NOT NULL,
    CONSTRAINT FK_Order_order_items FOREIGN KEY (order_id) REFERENCES Total_Order(id) ON DELETE CASCADE,
    CONSTRAINT FK_Product_order_items FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);


CREATE TABLE user_address (
    id INT IDENTITY(1,1) PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    post_code VARCHAR(20) NOT NULL,
    country VARCHAR(100) NOT NULL,
    user_id INT NOT NULL,
    CONSTRAINT FK_User_address FOREIGN KEY (user_id) REFERENCES E_User(id) ON DELETE CASCADE
);


CREATE TABLE Cart (
    id INT IDENTITY(1,1) PRIMARY KEY,
    total_items INT NOT NULL CHECK (total_items >= 0), 
    total_price DECIMAL(10,2) NOT NULL CHECK (total_price >= 0),  
    user_id INT NOT NULL,
    CONSTRAINT FK_User_cart FOREIGN KEY (user_id) REFERENCES E_User(id) ON DELETE CASCADE
);


CREATE TABLE cart_items (
    id INT IDENTITY(1,1) PRIMARY KEY,
    quantity INT NOT NULL CHECK (quantity > 0),  
    total_price DECIMAL(10,2) NOT NULL CHECK (total_price >= 0),
    product_id INT NOT NULL,
    cart_id INT NOT NULL,
    CONSTRAINT FK_Cart_cart_items FOREIGN KEY (cart_id) REFERENCES Cart(id) ON DELETE CASCADE,
    CONSTRAINT FK_Product_cart_items FOREIGN KEY (product_id) REFERENCES Product(id) ON DELETE CASCADE
);
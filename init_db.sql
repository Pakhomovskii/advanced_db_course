CREATE DATABASE online_shop;
\c online_shop;

-- Creation extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- Creation types
CREATE TYPE OrderStatus AS ENUM ('pending', 'processing', 'shipped', 'delivered', 'cancelled');
CREATE TYPE CustomerStatus AS ENUM ('active', 'inactive', 'banned');
-- Creation roles and permissions
CREATE ROLE readonly_user WITH LOGIN PASSWORD '12345';
GRANT CONNECT ON DATABASE online_shop TO readonly_user;
GRANT USAGE ON SCHEMA public TO readonly_user;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly_user;

-- Creation tables and indexes
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    FullName VARCHAR(48) NOT NULL,
    EmailAddress VARCHAR(120) UNIQUE NOT NULL,
    LastLoginTime TIMESTAMPTZ,
    PasswordHash VARCHAR(255) NOT NULL,
    Address TEXT,
    TelephoneNumber VARCHAR(20),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_customer_email ON Customer (EmailAddress);

CREATE TABLE Supplier (
    SupplierID SERIAL PRIMARY KEY,
    SupplierName VARCHAR(48) NOT NULL
);

CREATE TABLE Category (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE Product (
    ProductID SERIAL PRIMARY KEY,
    ProductUUID UUID DEFAULT uuid_generate_v4(),
    Name VARCHAR(48) NOT NULL,
    SupplierID INT REFERENCES Supplier(SupplierID),
    Description TEXT,
    Image TEXT,
    Price NUMERIC(10, 2) NOT NULL CHECK (Price > 0),
    CategoryID INT REFERENCES Category(CategoryID),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DeletedAt TIMESTAMP
);

CREATE INDEX idx_product_active_category ON Product (CategoryID)
WHERE DeletedAt IS NULL;
CREATE INDEX idx_product_name ON Product (Name);
CREATE INDEX idx_product_category ON Product (CategoryID);

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    OrderDate TIMESTAMPTZ NOT NULL,
    Description TEXT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    OrderStatus OrderStatus DEFAULT 'pending'
);

CREATE TABLE OrderItem (
    OrderItemID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES Orders(OrderID) ON DELETE CASCADE,
    ProductID INT REFERENCES Product(ProductID),
    Quantity INT NOT NULL CHECK (Quantity > 0),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CustomerStatus CustomerStatus DEFAULT 'active'
);

CREATE INDEX idx_orderitem_order ON OrderItem (OrderID);
CREATE INDEX idx_orderitem_product ON OrderItem (ProductID);

CREATE TABLE ReturnedItem (
    ReturnedItemID SERIAL PRIMARY KEY,
    OrderItemID INT REFERENCES OrderItem(OrderItemID) ON DELETE CASCADE,
    ReturnDate DATE NOT NULL,
    Reason TEXT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


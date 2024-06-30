-- Insert sample data into Products table
INSERT INTO Products
    (ProductID, ProductName, Category, Price, Stock)
VALUES
    (1, 'Laptop', 'Computers', 1200.00, 50),
    (2, 'Smartphone', 'Mobile Devices', 800.00, 200),
    (3, 'Tablet', 'Mobile Devices', 500.00, 100);
GO

-- Insert sample data into Orders table
INSERT INTO Orders
    (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2024-06-01', 2000.00),
    (2, 2, '2024-06-15', 800.00);
GO

-- Insert sample data into Customers table
INSERT INTO Customers
    (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com');
GO

-- Insert sample data into Reviews table
INSERT INTO Reviews
    (ReviewID, ProductID, CustomerID, Rating, ReviewText)
VALUES
    (1, 1, 1, 5, 'Excellent laptop!'),
    (2, 2, 2, 4, 'Great smartphone.');
GO

-- Insert sample data into Suppliers table
INSERT INTO Suppliers
    (SupplierID, SupplierName, ContactEmail)
VALUES
    (1, 'TechSupplies Inc.', 'contact@techsupplies.com'),
    (2, 'MobileTech Co.', 'support@mobiletech.com');
GO


CREATE DATABASE eCommerceDB; GO
-- Use ... by Ragav Kumar V (Unverified)
Ragav Kumar V
(Unverified)
17:20
CREATE DATABASE eCommerceDB;
GO

-- Use the created database
USE eCommerceDB;
GO


-- Create Products table
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);
GO

-- Create Orders table
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10, 2)
);
GO

-- Create Customers table
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100)
);
GO

-- Create Reviews table
CREATE TABLE Reviews
(
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    Rating INT,
    ReviewText NVARCHAR(1000)
);
GO

-- Create Suppliers table
CREATE TABLE Suppliers
(
    SupplierID INT PRIMARY KEY,
    SupplierName NVARCHAR(100),
    ContactEmail NVARCHAR(100)
);
GO

-- Create Audit table to log changes for all tables
CREATE TABLE AuditLog
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    TableName NVARCHAR(50),
    Operation NVARCHAR(50),
    RecordID INT,
    OperationTime DATETIME
);
GO


-- Insert sample data into Products table
INSERT INTO Products
    (ProductID, ProductName, Category, Price, Stock)
VALUES
    (1, 'Laptop', 'Computers', 1200.00, 50),
    (2, 'Smartphone', 'Mobile Devices', 800.00, 200),
    (3, 'Tablet', 'Mobile Devices', 500.00, 100);
GO

-- Insert sample data into Orders table
INSERT INTO Orders
    (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2024-06-01', 2000.00),
    (2, 2, '2024-06-15', 800.00);
GO

-- Insert sample data into Customers table
INSERT INTO Customers
    (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com');
GO

-- Insert sample data into Reviews table
INSERT INTO Reviews
    (ReviewID, ProductID, CustomerID, Rating, ReviewText)
VALUES
    (1, 1, 1, 5, 'Excellent laptop!'),
    (2, 2, 2, 4, 'Great smartphone.');
GO

-- Insert sample data into Suppliers table
INSERT INTO Suppliers
    (SupplierID, SupplierName, ContactEmail)
VALUES
    (1, 'TechSupplies Inc.', 'contact@techsupplies.com'),
    (2, 'MobileTech Co.', 'support@mobiletech.com');
GO
 
 
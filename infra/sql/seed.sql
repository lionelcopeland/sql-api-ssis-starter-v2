/*
  Simple seed script for demo purposes.
  Adjust database names as needed.
*/

IF DB_ID('StarterDb') IS NULL
BEGIN
  CREATE DATABASE StarterDb;
END
GO

USE StarterDb;
GO

IF OBJECT_ID('dbo.Products') IS NULL
BEGIN
  CREATE TABLE dbo.Products (
    ProductId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
  );
END
GO

INSERT INTO dbo.Products (Name, Price) VALUES
('Widget A', 19.99),
('Widget B', 29.99),
('Widget C', 49.99);
GO

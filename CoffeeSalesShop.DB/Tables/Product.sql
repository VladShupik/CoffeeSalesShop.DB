CREATE TABLE [dbo].[Product]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Code] NVARCHAR(10) NOT NULL,
	[Name] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(1000),
	[QuantityLeft] INT NOT NULL DEFAULT 0,
	[Price] decimal(10,2),
	CONSTRAINT PK_Product PRIMARY KEY ([Id]),
	CONSTRAINT UQ_Product_Code UNIQUE ([Code]),
	CONSTRAINT UQ_Product_Name UNIQUE ([Name])
)

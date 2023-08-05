CREATE TABLE [dbo].[OrderDelivery]
(
	[OrderId] INT NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[Email] nvarchar(320) NOT NULL,
	[PhoneNumer] nvarchar(15) NOT NULL,
	[City] nvarchar(50) NOT NULL,
	[Address] nvarchar(100) NOT NULL,
	[Note] nvarchar(1000) NULL,
	CONSTRAINT PK_OrderDelivery PRIMARY KEY ([OrderId]),
	CONSTRAINT FK_OrderDelivery_Order FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id])
)

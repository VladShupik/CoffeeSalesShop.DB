CREATE TABLE [dbo].[ShoppingCart]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[UserId] INT NULL,
	CONSTRAINT PK_ShoppingCart PRIMARY KEY ([Id]),
	CONSTRAINT FK_ShoppingCart_User FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id])
)

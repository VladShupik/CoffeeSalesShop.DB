CREATE TABLE [dbo].[ShoppingCartProduct]
(
	[ShoppingCartId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Quantity] INT NOT NULL,
	CONSTRAINT PK_ShoppingCartProduct PRIMARY KEY ([ShoppingCartId], [ProductId]),
	CONSTRAINT FK_ShoppingCartProduct_ShoppingCart FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[ShoppingCart] ([Id]),
	CONSTRAINT FK_ShoppingCartProduct_Product FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
)

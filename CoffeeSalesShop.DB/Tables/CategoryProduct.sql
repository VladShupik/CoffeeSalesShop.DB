CREATE TABLE [dbo].[CategoryProduct]
(
	[CategoryId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	CONSTRAINT PK_CategoryProduct PRIMARY KEY ([CategoryId], [ProductId]),
	CONSTRAINT FK_CategoryProduct_Category FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]),
	CONSTRAINT FK_CategoryProduct_Product FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
)

CREATE TABLE [dbo].[ProductImage]
(
	[ProductId] INT NOT NULL,
	[Image] NVARCHAR(MAX) NOT NULL,
	CONSTRAINT FK_ProductImage_Product FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
)

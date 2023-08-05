CREATE TABLE [dbo].[ProductImage]
(
	[ProductId] INT NOT NULL,
	[ImageId] INT NOT NULL,
	CONSTRAINT PK_ProductImage PRIMARY KEY ([ProductId], [ImageId]),
	CONSTRAINT FK_ProductImage_Product FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
	CONSTRAINT FK_ProductImage_Image FOREIGN KEY ([ImageId]) REFERENCES [dbo].[Image] ([Id])
)

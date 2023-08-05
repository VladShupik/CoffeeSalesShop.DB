CREATE TABLE [dbo].[Category]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(50) NOT NULL,
	CONSTRAINT PK_Category PRIMARY KEY ([Id]),
	CONSTRAINT UQ_Category_Name UNIQUE ([Name])
)

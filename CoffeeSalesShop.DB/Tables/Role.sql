CREATE TABLE [dbo].[Role]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Name] nvarchar(10) NOT NULL,
	CONSTRAINT PK_Role PRIMARY KEY ([Id]),
	CONSTRAINT UQ_Role_Name UNIQUE ([Name])
)

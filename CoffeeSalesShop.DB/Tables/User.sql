CREATE TABLE [dbo].[User]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[Email] nvarchar(320) NOT NULL,
	[PasswordHash] nvarchar(64) NOT NULL,
	[RoleId] INT NOT NULL,
	CONSTRAINT PK_User PRIMARY KEY ([Id]),
	CONSTRAINT FK_User_Role FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([Id]),
	CONSTRAINT UQ_User_Email UNIQUE ([Email])
)

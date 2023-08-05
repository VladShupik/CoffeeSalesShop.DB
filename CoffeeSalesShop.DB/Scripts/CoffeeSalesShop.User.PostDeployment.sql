DECLARE @roleCount INT;

SELECT @roleCount = COUNT(*) FROM [dbo].[Role];

IF @roleCount = 0
BEGIN
    INSERT INTO [dbo].[Role] ([Name])
    VALUES ('Admin'), ('User');
END

DECLARE @roleId INT;
SET @roleId = (SELECT [Id] FROM [dbo].[Role] WHERE [Name] = 'Admin');

DECLARE @userCount INT;

SELECT @userCount = COUNT(*) FROM [dbo].[User];

IF @userCount = 0
BEGIN
    INSERT INTO [dbo].[User] ([FirstName], [LastName], [Email], [PasswordHash], [RoleId])
    VALUES ('Admin', 'Admin', 'test@gmail.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', @roleId);
END

CREATE TABLE [dbo].[OrderHistory]
(
	[UserId] INT NOT NULL,
	[OrderId] INT NOT NULL,
	CONSTRAINT PK_OrderHistory PRIMARY KEY ([UserId], [OrderId]),
	CONSTRAINT FK_OrderHistory_User FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([Id]),
	CONSTRAINT FK_OrderHistory_Order FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id])
)

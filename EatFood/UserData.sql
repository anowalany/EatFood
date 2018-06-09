CREATE TABLE [dbo].[UserData]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Login] NCHAR(20) NULL, 
    [Email] NCHAR(50) NULL, 
    [Password] NCHAR(20) NULL
)

﻿CREATE TABLE [dbo].[Dim_Organizacional]
(
	[Cod_Filho] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Filho] NVARCHAR(200) NULL, 
    [Cod_Pai] NVARCHAR(50) NULL, 
    [Left] INT NULL, 
    [Right] INT NULL, 
    [Level] INT NULL, 
    CONSTRAINT [FK_Dim_Organizacional_Dim_Organizacional] FOREIGN KEY ([Cod_Pai]) REFERENCES [Dim_Organizacional]([Cod_Filho])
)

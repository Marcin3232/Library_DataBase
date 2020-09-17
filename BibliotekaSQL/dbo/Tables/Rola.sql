CREATE TABLE [dbo].[Rola] (
    [id_rola] INT          NOT NULL,
    [nazwa]   VARCHAR (50) NULL,
    [opis]    TEXT         NOT NULL,
    CONSTRAINT [PK_Rola] PRIMARY KEY CLUSTERED ([id_rola] ASC)
);


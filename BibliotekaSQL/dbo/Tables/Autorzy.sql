CREATE TABLE [dbo].[Autorzy] (
    [id_autor] INT          NOT NULL,
    [imie]     VARCHAR (50) NULL,
    [nazwisko] VARCHAR (50) NULL,
    [opis]     TEXT         NULL,
    CONSTRAINT [PK_Autorzy] PRIMARY KEY CLUSTERED ([id_autor] ASC)
);


CREATE TABLE [dbo].[Kategorie] (
    [id_kategoria] INT          NOT NULL,
    [nazwa]        VARCHAR (50) NOT NULL,
    [opis]         TEXT         NULL,
    CONSTRAINT [PK_Kategorie] PRIMARY KEY CLUSTERED ([id_kategoria] ASC)
);


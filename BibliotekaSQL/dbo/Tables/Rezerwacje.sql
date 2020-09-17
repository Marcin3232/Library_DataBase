CREATE TABLE [dbo].[Rezerwacje] (
    [id_rezerwacji]   INT      NOT NULL,
    [id_dostepnosc]   INT      NOT NULL,
    [id_ksiazki]      INT      NOT NULL,
    [data_rezerwacji] DATETIME NULL,
    [komentarz]       TEXT     NULL,
    CONSTRAINT [PK_Rezerwacje] PRIMARY KEY CLUSTERED ([id_rezerwacji] ASC),
    CONSTRAINT [FK_Rezerwacje_Dostepnosc] FOREIGN KEY ([id_ksiazki]) REFERENCES [dbo].[Dostepnosc] ([id_dostepnosc])
);


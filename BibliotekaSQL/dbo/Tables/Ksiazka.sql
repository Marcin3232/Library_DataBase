CREATE TABLE [dbo].[Ksiazka] (
    [id_ksiazki]      INT          NOT NULL,
    [id_kategoria]    INT          NOT NULL,
    [id_autor]        INT          NOT NULL,
    [id_wydawca]      INT          NOT NULL,
    [data_wydania]    DATE         NOT NULL,
    [opis]            TEXT         NULL,
    [tytul]           VARCHAR (50) NULL,
    [ilosc]           INT          NULL,
    [id_wypozyczenia] INT          NULL,
    CONSTRAINT [PK_Ksiazka] PRIMARY KEY CLUSTERED ([id_ksiazki] ASC),
    CONSTRAINT [FK_Ksiazka_Autorzy] FOREIGN KEY ([id_autor]) REFERENCES [dbo].[Autorzy] ([id_autor]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Ksiazka_Kategorie] FOREIGN KEY ([id_kategoria]) REFERENCES [dbo].[Kategorie] ([id_kategoria]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Ksiazka_Wydawnictwo] FOREIGN KEY ([id_wydawca]) REFERENCES [dbo].[Wydawnictwo] ([id_wydawca]) ON DELETE CASCADE ON UPDATE CASCADE
);


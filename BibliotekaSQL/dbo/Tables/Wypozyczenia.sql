CREATE TABLE [dbo].[Wypozyczenia] (
    [id_wypozyczenia]   INT      NOT NULL,
    [id_klienta]        INT      NULL,
    [id_ksiazki]        INT      NULL,
    [data_wypozyczenia] DATETIME NULL,
    [id_pracownik]      INT      NULL,
    [data_oddania]      DATETIME NULL,
    [id_dostepnosc]     INT      NOT NULL,
    [id_karty]          INT      NULL,
    CONSTRAINT [PK_Wypozyczenia_1] PRIMARY KEY CLUSTERED ([id_wypozyczenia] ASC),
    CONSTRAINT [FK_Wypozyczenia_Dostepnosc] FOREIGN KEY ([id_dostepnosc]) REFERENCES [dbo].[Dostepnosc] ([id_dostepnosc]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Wypozyczenia_Karta_Klienta1] FOREIGN KEY ([id_karty]) REFERENCES [dbo].[Karta_Klienta] ([id_karty]),
    CONSTRAINT [FK_Wypozyczenia_Klienci1] FOREIGN KEY ([id_klienta]) REFERENCES [dbo].[Klienci] ([id_klienta]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Wypozyczenia_Ksiazka] FOREIGN KEY ([id_ksiazki]) REFERENCES [dbo].[Ksiazka] ([id_ksiazki]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Wypozyczenia_Pracownicy1] FOREIGN KEY ([id_pracownik]) REFERENCES [dbo].[Pracownicy] ([id_pracownika]) ON DELETE CASCADE ON UPDATE CASCADE
);


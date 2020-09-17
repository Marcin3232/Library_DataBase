CREATE TABLE [dbo].[Dostepnosc] (
    [id_ksiazki]      INT NOT NULL,
    [dostepne]        INT NOT NULL,
    [wypozyczone]     INT NULL,
    [id_wypozyczenia] INT NULL,
    [id_dostepnosc]   INT NOT NULL,
    CONSTRAINT [PK_Dostepnosc] PRIMARY KEY CLUSTERED ([id_dostepnosc] ASC)
);


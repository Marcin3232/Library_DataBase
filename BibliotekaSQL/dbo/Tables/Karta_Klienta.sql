CREATE TABLE [dbo].[Karta_Klienta] (
    [id_karty]              INT           NOT NULL,
    [imie]                  VARCHAR (50)  NOT NULL,
    [nazwisko]              VARCHAR (50)  NOT NULL,
    [telefon]               INT           NOT NULL,
    [data_urodzenia]        DATETIME      NOT NULL,
    [data_utworzenia_karty] DATETIME      NULL,
    [email]                 VARCHAR (MAX) NULL,
    [id_wypozyczenia]       NCHAR (10)    NULL,
    [id_rezerwacji]         INT           NULL,
    CONSTRAINT [PK_Karta_Klienta_1] PRIMARY KEY CLUSTERED ([id_karty] ASC),
    CONSTRAINT [FK_Karta_Klienta_Rezerwacje1] FOREIGN KEY ([id_rezerwacji]) REFERENCES [dbo].[Rezerwacje] ([id_rezerwacji])
);


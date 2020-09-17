CREATE TABLE [dbo].[Klienci] (
    [id_klienta]            INT           NOT NULL,
    [login]                 VARCHAR (50)  NOT NULL,
    [haslo]                 VARCHAR (50)  NOT NULL,
    [imie]                  VARCHAR (50)  NOT NULL,
    [nazwisko]              VARCHAR (50)  NOT NULL,
    [telefon]               INT           NULL,
    [email]                 VARCHAR (MAX) NULL,
    [id_karty]              INT           NOT NULL,
    [data_urodzenia]        DATETIME      NOT NULL,
    [id_wypozyczenia]       INT           NOT NULL,
    [data_utworzenia_konta] DATETIME      NULL,
    [id_rezerwacji]         INT           NULL,
    CONSTRAINT [PK_Klienci_1] PRIMARY KEY CLUSTERED ([id_klienta] ASC),
    CONSTRAINT [FK_Klienci_Rezerwacje1] FOREIGN KEY ([id_rezerwacji]) REFERENCES [dbo].[Rezerwacje] ([id_rezerwacji]) ON DELETE CASCADE ON UPDATE CASCADE
);


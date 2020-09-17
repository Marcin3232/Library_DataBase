CREATE TABLE [dbo].[Pracownicy] (
    [id_pracownika] INT           NOT NULL,
    [login]         VARCHAR (50)  NOT NULL,
    [haslo]         VARCHAR (50)  NOT NULL,
    [imie]          VARCHAR (50)  NOT NULL,
    [nazwisko]      VARCHAR (50)  NOT NULL,
    [telefon]       INT           NOT NULL,
    [email]         VARCHAR (MAX) NULL,
    [id_rola]       INT           NOT NULL,
    CONSTRAINT [PK_Pracownicy] PRIMARY KEY CLUSTERED ([id_pracownika] ASC),
    CONSTRAINT [FK_Pracownicy_Rola1] FOREIGN KEY ([id_rola]) REFERENCES [dbo].[Rola] ([id_rola]) ON DELETE CASCADE ON UPDATE CASCADE
);


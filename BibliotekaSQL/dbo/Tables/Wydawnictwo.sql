CREATE TABLE [dbo].[Wydawnictwo] (
    [id_wydawca] INT          NOT NULL,
    [nazwa]      VARCHAR (50) NOT NULL,
    [opis]       TEXT         NULL,
    CONSTRAINT [PK_Wydawnictwo] PRIMARY KEY CLUSTERED ([id_wydawca] ASC)
);


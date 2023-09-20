
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/19/2023 20:29:02
-- Generated from EDMX file: C:\Users\User\source\repos\T3H_Cap04\T3H_Cap04\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CursoAsp3H];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AlunosMFSet'
CREATE TABLE [dbo].[AlunosMFSet] (
    [Cod] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(50)  NOT NULL,
    [Endereco] nvarchar(max)  NOT NULL,
    [Idade] nvarchar(max)  NOT NULL,
    [CEP] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NotasSet'
CREATE TABLE [dbo].[NotasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Idaluno] nvarchar(max)  NOT NULL,
    [Nota] nvarchar(max)  NOT NULL,
    [AlunosMFCod] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Cod] in table 'AlunosMFSet'
ALTER TABLE [dbo].[AlunosMFSet]
ADD CONSTRAINT [PK_AlunosMFSet]
    PRIMARY KEY CLUSTERED ([Cod] ASC);
GO

-- Creating primary key on [Id] in table 'NotasSet'
ALTER TABLE [dbo].[NotasSet]
ADD CONSTRAINT [PK_NotasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AlunosMFCod] in table 'NotasSet'
ALTER TABLE [dbo].[NotasSet]
ADD CONSTRAINT [FK_AlunosMFNotas]
    FOREIGN KEY ([AlunosMFCod])
    REFERENCES [dbo].[AlunosMFSet]
        ([Cod])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AlunosMFNotas'
CREATE INDEX [IX_FK_AlunosMFNotas]
ON [dbo].[NotasSet]
    ([AlunosMFCod]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
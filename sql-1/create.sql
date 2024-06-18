-- Tabla maestra de operaciones de SpotDeals
CREATE TABLE SpotDeals (
    Id INT PRIMARY KEY,
    SpotNumber VARCHAR(50),
    Amount DECIMAL(18, 2),
    EntryDate DATETIME,
    FolderId INT,
    UserId INT,
    CptyId INT,
    PairsMonedasId INT,
    SpotType CHAR(1),
    SpotStatus CHAR(1)
);

-- Tabla de Folders
CREATE TABLE Folders (
    Id INT PRIMARY KEY,
    ShortName VARCHAR(50),
    Name VARCHAR(100)
);

-- Tabla de Users
CREATE TABLE Users (
    Id INT PRIMARY KEY,
    ShortName VARCHAR(50),
    Name VARCHAR(100)
);

-- Tabla de Contrapartes (Clientes)
CREATE TABLE Cpty (
    Id INT PRIMARY KEY,
    ShortName VARCHAR(50),
    Name VARCHAR(100)
);

-- Tabla de PairsMonedas
CREATE TABLE PairsMonedas (
    Id INT PRIMARY KEY,
    ShortName VARCHAR(50),
    Name VARCHAR(100)
);

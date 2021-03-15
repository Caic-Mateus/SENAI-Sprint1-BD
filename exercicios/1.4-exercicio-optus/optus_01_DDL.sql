--DDL
CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Artistas
(
	idArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(50) NOT NULL
);

CREATE TABLE Estilos
(
	idEstilo INT PRIMARY KEY IDENTITY
	,NomeEstilo VARCHAR(20) NOT NULL
);
CREATE TABLE Albuns
(
	idAlbum INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR(50) NOT NULL
	,DataLancamento VARCHAR (15) NOT NULL
	,Localizacao VARCHAR (50)NOT NULL
	,QtdMinutos INT NOT NULL
	,Ativo INT NOT NULL
	,idArtista INT FOREIGN KEY REFERENCES Artistas (idArtista)
);
CREATE TABLE AlbunsEstilos
(
	idAlbum INT FOREIGN KEY REFERENCES Albuns (idAlbum)
	,idEstilo INT FOREIGN KEY REFERENCES Estilos (idEstilo)
);
CREATE TABLE Usuarios
(
	idUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(40) NOT NULL
	,Email VARCHAR (50) NOT NULL
	,Senha VARCHAR (20) NOT NULL
	,Permissao VARCHAR (20) NOT NULL
);
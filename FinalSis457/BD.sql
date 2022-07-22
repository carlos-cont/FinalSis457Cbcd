CREATE DATABASE FinalSis457Cbcd;
USE [master]
GO
CREATE LOGIN [usrfinal ] WITH PASSWORD=N'12345678', 
   DEFAULT_DATABASE=[FinalSis457Cbcd], 
   CHECK_EXPIRATION=OFF, 
   CHECK_POLICY=ON
GO
USE [FinalSis457Cbcd]
GO
CREATE USER [usrfinal ] FOR LOGIN [usrfinal ]
GO
USE [FinalSis457Cbcd]
GO
ALTER ROLE [db_owner] ADD MEMBER [usrfinal ]
GO
DROP TABLE IF EXISTS Serie;

CREATE TABLE Serie (
  id INT IDENTITY(1, 1) PRIMARY KEY,
  titulo VARCHAR(250) NOT NULL,
  sinopsis VARCHAR(5000) NOT NULL,
  director VARCHAR(100) NOT NULL,
  duracion INT NOT NULL,
  fechaEstreno DATE NOT NULL,
  registroActivo BIT
);
CREATE TABLE Usuario (
    [id]              INT           IDENTITY (1, 1) NOT NULL,
    [usuario]         VARCHAR (12)  NOT NULL,
    [clave]           VARCHAR (250) NOT NULL,
    [rol] VARCHAR (20) NOT NULL,
    [registroActivo]  BIT           NULL
);
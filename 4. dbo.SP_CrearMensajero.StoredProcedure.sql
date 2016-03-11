USE [AvestrApp]
GO
/****** Object:  StoredProcedure [dbo].[SP_CrearMensajero]    Script Date: 07/03/2016 12:34:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CrearMensajero]
@nombrePersona varchar(50),
@apellidoPersona varchar(50),
@usuario varchar(20),
@contrasenia varchar(100),
@salt varchar(100),
@edad tinyint
AS
BEGIN

INSERT INTO Persona(nombrePersona, apellidoPersona, usuario, contrasenia, salt, edad, idTipoPersona)
VALUES (@nombrePersona, @apellidoPersona, @usuario, @contrasenia, @salt, @edad, 1);

END
GO

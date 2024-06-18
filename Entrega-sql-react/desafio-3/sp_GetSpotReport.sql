-- ===========================================================================================


/**
 Autor: Luis Palacio A
 Fecha de creacion: 2024-06-13
 Descripcion: Objeto que retorna información de operaciones spot segun lo solicitado por el banco
 Parametros:  
 	@StartDate -> fecha inicial de las operaciones spot
    @EndDate -> fecha final de las operaciones spot
    @FolderId -> id del folder
    @UserId -> id del usuario
 **/
-- ===========================================================================================


CREATE PROCEDURE sp_GetSpotReport
    @StartDate datetime = null,
    @EndDate datetime = null,
    @FolderId int = null,
    @UserId int = null
AS
BEGIN
    SET NOCOUNT ON;

    -- Seleccionar los spots que cumplen con los criterios
    SELECT
        Folders.ShortName AS FolderShortN,
        Users.ShortName AS UserShortN,
        Users.Name AS UserName,
        SpotDeals.SpotNumber,
        SpotDeals.Amount,
        Cpty.ShortName AS CptyShortN,
        Cpty.Name AS CptyName,
        SpotDeals.EntryDate,
        PairsMonedas.ShortName AS PairMonedaShortN
    FROM SpotDeals
    	INNER JOIN Folders 
    		ON SpotDeals.FolderId = Folders.Id
    	INNER JOIN Users 
    		ON SpotDeals.UserId = Users.Id
    	INNER JOIN Cpty 
    		ON SpotDeals.CptyId = Cpty.Id
    	INNER JOIN PairsMonedas 
    		ON SpotDeals.PairsMonedasId = PairsMonedas.Id
    WHERE
        SpotDeals.SpotType <> 'M' 
        AND SpotDeals.SpotStatus = 'V'
        AND (@StartDate IS NULL OR SpotDeals.EntryDate >= @StartDate)
        AND (@EndDate IS NULL OR SpotDeals.EntryDate <= @EndDate)
        AND (@FolderId IS NULL OR SpotDeals.FolderId = @FolderId)
        AND (@UserId IS NULL OR SpotDeals.UserId = @UserId)
    ORDER BY
        SpotDeals.EntryDate;
END;

-- ===========================================================================================

-- Ejemplo de ejecución: EXEC sp_GetSpotReport @StartDate = '2023-01-01', @EndDate = '2023-12-31', @FolderId = null, @UserId = null;
-- ===========================================================================================


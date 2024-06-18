-- ===========================================================================================

/**
 Autor: Luis Palacio A
 Fecha de creacion: 2024-06-13
 Descripcion: Objeto que retorna información de ventas de producto total por producto y el total de los 3 productos
 Parametros:  
 	@StartDate -> fecha inicial de las ventas
    @EndDate -> fecha final de las ventas
 
 **/

-- ===========================================================================================


CREATE PROCEDURE sp_GetSalesReport
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN

    IF OBJECT_ID('tempdb..#dates') IS NOT NULL
        DROP TABLE #dates;


    CREATE TABLE #dates (
   		SALE_DATE DATE	);

    WITH DateRange AS (
        SELECT @StartDate AS SALE_DATE
        UNION ALL
        SELECT DATEADD(DAY, 1, SALE_DATE)
        FROM DateRange
        WHERE SALE_DATE < @EndDate
    )
    INSERT INTO #dates (SALE_DATE)
    SELECT SALE_DATE FROM DateRange;

    SELECT 
        f.SALE_DATE,
        ISNULL(SUM(CASE WHEN v.PRODUCT_TYPE = 'A' THEN v.TOTAL_AMOUNT ELSE 0 END), 0) AS TOTAL_A,
        ISNULL(SUM(CASE WHEN v.PRODUCT_TYPE = 'B' THEN v.TOTAL_AMOUNT ELSE 0 END), 0) AS TOTAL_B,
        ISNULL(SUM(CASE WHEN v.PRODUCT_TYPE = 'C' THEN v.TOTAL_AMOUNT ELSE 0 END), 0) AS TOTAL_C,
        ISNULL(SUM(v.TOTAL_AMOUNT), 0) AS TOTAL_AMOUNT
    FROM #dates f
    LEFT JOIN (
        SELECT SALE_DATE, TOTAL_AMOUNT, PRODUCT_TYPE FROM SalesPA
        UNION ALL
        SELECT SALE_DATE, TOTAL_AMOUNT, PRODUCT_TYPE FROM SalesPB
        UNION ALL
        SELECT SALE_DATE, TOTAL_AMOUNT, PRODUCT_TYPE FROM SalesPC
    ) v ON f.SALE_DATE = v.SALE_DATE
    GROUP BY f.SALE_DATE
END;


-- ===========================================================================================
-- Ejemplo de ejecución: EXEC sp_GetSalesReport @StartDate = '2024-06-01', @EndDate = '2024-06-15';
-- ===========================================================================================

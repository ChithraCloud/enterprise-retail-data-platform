CREATE PROCEDURE usp_GetSalesByRegion
(
    @Region NVARCHAR(50)
)
AS
BEGIN

SELECT *

FROM Sales

WHERE Region=@Region;

END;

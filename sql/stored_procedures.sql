CREATE PROCEDURE GetSalesByRegion
(
    @Region VARCHAR(50)
)
AS
BEGIN

SELECT *

FROM Sales

WHERE Region=@Region;

END

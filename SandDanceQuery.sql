USE EVPopulation;

SELECT 
    [Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility] AS [CAFV Eligibility], 
    COUNT(*) AS NumVehicles
FROM [EVPopulation].[dbo].[Electric_Vehicle_Population_Data]
GROUP BY [Clean_Alternative_Fuel_Vehicle_CAFV_Eligibility]
ORDER BY NumVehicles DESC;


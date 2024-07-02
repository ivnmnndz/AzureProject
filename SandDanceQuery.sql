USE EVPopulation;

SELECT 
    Cleaned_Electric_Utility,
    COUNT(*) AS Count
FROM (
    SELECT 
        CASE 
            WHEN Electric_Utility LIKE 'BONNEVILLE POWER ADMINISTRATION%' THEN 'BONNEVILLE POWER ADMINISTRATION'
            WHEN Electric_Utility LIKE 'PUGET%' THEN 'PUGET'
            WHEN Electric_Utility LIKE 'CITY OF SEATTLE%' THEN 'CITY OF SEATTLE'
            ELSE Electric_Utility
        END AS Cleaned_Electric_Utility
    FROM Electric_Vehicle_Population_Data
    WHERE Electric_Utility IS NOT NULL
) AS UtilityCategories
GROUP BY Cleaned_Electric_Utility
HAVING COUNT(*) > 3000
ORDER BY Count DESC;



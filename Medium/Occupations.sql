/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT 
    [Doctor],[Professor],[Singer],[Actor]
FROM(
    SELECT ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS [RowNumber], * FROM OCCUPATIONS) AS Temp_Table

PIVOT(
    MIN(NAME) FOR OCCUPATION IN ([Doctor],[Professor],[Singer],[Actor])) AS Pivot_Table

    
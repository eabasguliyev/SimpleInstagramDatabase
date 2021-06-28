-- Our Investors want to know:
-- How many times does the average post?

SELECT CAST(COUNT(*) AS FLOAT) / 
(SELECT CAST(COUNT(*) AS FLOAT) FROM users) AS 'Avg number of photos per user'
FROM photos;


SELECT ( SELECT CAST(COUNT(*) AS FLOAT)
FROM photos ) / ( SELECT CAST(COUNT(*) AS FLOAT) FROM users )
AS 'Avg number of photos per user';


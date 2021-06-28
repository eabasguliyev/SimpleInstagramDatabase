-- tables: 
--users
--photos
--followers
--comments
--photo_likes
--tags
--photo_tags


--What day of the week do most users register on?
--We need to figure out when to schedule an ad campaign

SELECT TOP 3 DATENAME(WEEKDAY, created_at) AS 'Day of week',
			COUNT(*) AS 'Registered account count' 
FROM users
GROUP BY DATENAME(WEEKDAY, created_at)
ORDER BY COUNT(created_at) DESC;
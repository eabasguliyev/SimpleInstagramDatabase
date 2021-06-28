-- tables: 
--users
--photos
--followers
--comments
--photo_likes
--tags
--photo_tags


--We want to reward our user who have been around the longest
--Find the 5 oldest users

SELECT TOP 5 * FROM users
ORDER BY created_at ASC;
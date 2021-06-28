-- We have a small problem with bots on our site:
-- Find users who have liked every single photo on the site

SELECT users.username, COUNT(*) AS total_like FROM users
INNER JOIN photo_likes
ON users.id = photo_likes.[user_id]
GROUP BY users.username
HAVING COUNT(*) = (SELECT COUNT(*) FROM photos);
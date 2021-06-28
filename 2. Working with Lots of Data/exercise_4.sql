--We're running a new contest to see who can get the most
--likes on a single photo.
--Who WON?

SELECT * FROM photos;
SELECT * FROM photo_likes;

SELECT TOP 1 username, photos.image_url, 
		COUNT(*) AS count_of_likes
FROM photos
INNER JOIN photo_likes
ON photos.id = photo_likes.photo_id
INNER JOIN users
ON photos.[user_id] = users.id
GROUP BY photos.id, users.username, photos.image_url
ORDER BY count_of_likes DESC;
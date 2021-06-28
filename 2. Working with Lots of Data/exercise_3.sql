--We want to target our inactive users with an email campaign
--Find the users who have never posted a photo

SELECT * FROM users;

SELECT * FROM photos;

SELECT username FROM users
LEFT JOIN photos
ON users.id = photos.[user_id]
WHERE photos.id IS NULL;


SELECT username FROM photos
RIGHT JOIN users
ON users.id = photos.[user_id]
WHERE photos.id IS NULL;
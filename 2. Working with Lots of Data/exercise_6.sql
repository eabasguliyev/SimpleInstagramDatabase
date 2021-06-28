-- A brand wants to know which hashtags to use in a post
-- What are the top 5 most commonly used hashtags?

SELECT * FROM photo_tags;
SELECT * FROM tags;

SELECT TOP 5 tags.tag_name, COUNT(*) AS [count] FROM tags
INNER JOIN photo_tags
ON tags.id = photo_tags.tag_id
GROUP BY tags.tag_name
ORDER BY [count] DESC;
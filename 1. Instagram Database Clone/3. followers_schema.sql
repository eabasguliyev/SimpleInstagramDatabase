CREATE TABLE followers(
	follower_id INT NOT NULL,
	followee_id INT NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	UNIQUE(follower_id, followee_id),
	-- OR try this:
	-- PRIMARY KEY(follower_id, followee_id)
	CONSTRAINT FK_Users_To_Followers_Follower_Id FOREIGN KEY (follower_id) REFERENCES users(id),
	CONSTRAINT FK_Users_To_Followers_Followee_Id FOREIGN KEY (followee_id) REFERENCES users(id)
);

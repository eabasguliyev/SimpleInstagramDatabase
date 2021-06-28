CREATE TABLE photo_likes (
	photo_id INT NOT NULL,
	[user_id] INT NOT NULL,
	created_id DATETIME DEFAULT GETDATE(),
	UNIQUE(photo_id, [user_id]),
	-- OR try this:
	-- PRIMARY KEY([user_id], photo_id)
	CONSTRAINT FK_Photos_To_Photo_Likes_Photo_Id FOREIGN KEY (photo_id) REFERENCES photos(id),
	CONSTRAINT FK_Users_To_Photo_Likes_User_Id FOREIGN KEY ([user_id]) REFERENCES users(id)
);

CREATE TABLE comment_likes (
	comment_id INT NOT NULL,
	[user_id] INT NOT NULL,
	created_id DATETIME DEFAULT GETDATE(),
	UNIQUE(comment_id, [user_id]),
	-- OR try this:
	-- PRIMARY KEY([user_id], photo_id)
	CONSTRAINT FK_Comments_To_Comment_Likes_Comment_Id FOREIGN KEY (comment_id) REFERENCES comments(id),
	CONSTRAINT FK_Users_To_Comment_Likes_User_Id FOREIGN KEY ([user_id]) REFERENCES users(id)
);
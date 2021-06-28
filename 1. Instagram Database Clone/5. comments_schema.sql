CREATE TABLE comments(
	id INT IDENTITY(1,1),
	comment_text NVARCHAR(255) NOT NULL,
	photo_id INT NOT NULL,
	[user_id] INT NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Comments_Id PRIMARY KEY (id),
	CONSTRAINT FK_Photos_To_Comments_Photo_Id FOREIGN KEY (photo_id) REFERENCES photos(id),
	CONSTRAINT FK_Users_To_Comments_User_Id FOREIGN KEY ([user_id]) REFERENCES users(id)
);

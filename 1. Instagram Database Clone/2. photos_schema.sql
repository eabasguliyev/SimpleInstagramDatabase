CREATE TABLE photos(
	id INT IDENTITY(1,1),
	image_url NVARCHAR(255) NOT NULL,
	[user_id] INT NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Photos_Id PRIMARY KEY (id),
	CONSTRAINT FK_Users_To_Photos_User_Id FOREIGN KEY ([user_id]) REFERENCES users(id)
);
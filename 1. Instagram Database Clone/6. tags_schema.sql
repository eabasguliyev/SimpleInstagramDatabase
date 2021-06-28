CREATE TABLE tags(
	id INT IDENTITY(1,1),
	tag_name NVARCHAR(255) UNIQUE,
	created_at DATETIME DEFAULT GETDATE(),
	CONSTRAINT PK_Tags_Id PRIMARY KEY (id)
);

CREATE TABLE photo_tags(
	id INT IDENTITY(1,1),
	tag_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	UNIQUE(tag_id, photo_id),
	CONSTRAINT PK_Photo_Tags_Id PRIMARY KEY (id),
	CONSTRAINT FK_Tags_To_Photo_Tags_Tag_Id FOREIGN KEY (tag_id) REFERENCES tags(id),
	CONSTRAINT FK_Photos_To_Photo_Tags_Photo_Id FOREIGN KEY (photo_id) REFERENCES photos(id)
);


CREATE TABLE comment_tags(
	id INT IDENTITY(1,1),
	tag_id INT NOT NULL,
	comment_id INT NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	UNIQUE(tag_id, comment_id),
	CONSTRAINT PK_Comment_Tags_Id PRIMARY KEY (id),
	CONSTRAINT FK_Tags_To_Comment_Tags_Tag_Id FOREIGN KEY (tag_id) REFERENCES tags(id),
	CONSTRAINT FK_Comment_To_Comment_Tags_Comment_Id FOREIGN KEY (comment_id) REFERENCES comments(id)
);
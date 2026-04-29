CREATE TABLE School_friend(
	School_id SERIAL PRIMARY KEY,
	Friend_name VARCHAR(100),
	Class VARCHAR(100),
	Favorite_Subject VARCHAR(100)
);

INSERT INTO School_friend(Friend_name,Class,Favorite_Subject)
VALUES
('Swarina','10th','Science'),
('Suraj','12th','Python');

Select* from School_friend;
CREATE TABLE Books(
	ISBN char(20),
	Title VARCHAR (100),
	Authors VARCHAR (100),
	Publisher VARCHAR (100),
	YOP DATE,
	Category_id varchar(100),
	Available_copies int,
	Price DOUBLE(4,2),
	Format ENUM('Softcover', 'Hardcover'),
	Keywords VARCHAR (100),
	Subject VARCHAR (50),
	PRIMARY KEY (ISBN),
	FOREIGN KEY Category_id REFERENCES Category(cat_id));

	CREATE TABLE Category(
	cat_id int NOT NULL AUTO_INCREMENT,
	cat_name VARCHAR(100) NOT NULL,
	parent INT,
	PRIMARY KEY (cat_id)
)

USE userdb;

DROP TABLE has_played_in;
DROP TABLE movie;

CREATE TABLE movie(
	digital_visa INT NOT NULL PRIMARY KEY,
	title VARCHAR(30),
	year INT,
	`type` VARCHAR(20),
	nb_spec INT,
	budget INT
	);
CREATE TABLE has_played_in(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	digital_visa INT,
	FOREIGN KEY(digital_visa) REFERENCES movie(digital_visa)
	);

INSERT INTO movie(digital_visa, title, year, `type`, nb_spec, budget) VALUES
		(1, "Movie1",2005,"comedy", 1500000, 20000000),
		(2, "Movie2", 2008, "action",1800000,1000000),
		(3, "Movie3", 2017, "romcom",1200000, 900000),
		(4, "Movie4", 2015, "thriller",900000,1800000),
		(5, "Movie6",1998,"thriller",90000,800000),
		(7, "Movie7", 1993, "thriller", 8000000,2000000),
		(8, "Movie8",2012, "animation", 180000,300000),
		(9,"Movie9", 2013, "animation", 100000000,900000);
INSERT INTO has_played_in(first_name,last_name,digital_visa) VALUES
		("Johnny", "Depp",1),
		("Johnny", "Depp",2),
		("Johnny", "Depp",3),
		("Johnny", "Depp",4),
		("Mike", "Myers",5),
		("Patrick", "Adams", 5),
		("Luke", "Mchaels",7),
		("Tim", "Robbins",8),
		("Marlon","Brando",7),
		("Dwayne", "Johnson",9);

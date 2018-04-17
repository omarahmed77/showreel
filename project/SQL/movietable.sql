USE moviesite;

CREATE TABLE movies (movie_id INT(5) AUTO_INCREMENT PRIMARY KEY,
					 movie_name VARCHAR(50) NOT NULL,
					 language VARCHAR(15) NOT NULL,
					 genre VARCHAR(10),
					 rating DECIMAL(2, 1),
					 released INT(2) NOT NULL,
					 poster_loc VARCHAR(60) NOT NULL,
					 );

/*INSERT INTO movies VALUES(&movie_id, '&movie_name', '&language', '&genre', &rating, &released, '&poster_loc');*/
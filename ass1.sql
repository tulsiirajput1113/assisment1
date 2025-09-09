create database nobel_win;
use nobel_win;

CREATE TABLE Nobel_win (
    year INT,
    subject VARCHAR(50),
    winner VARCHAR(100),
    country VARCHAR(50),
    category VARCHAR(50)
);

INSERT INTO Nobel_win (year, subject, winner, country, category) VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Physics'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Literature'),
(1970, 'Peace', 'Norman Borlaug', 'USA', 'Peace'),
(1970, 'Chemistry', 'Luis Leloir', 'Argentina', 'Chemistry'),
(1970, 'Economics', 'Paul Samuelson', 'USA', 'Economics'),
(1965, 'Chemistry', 'Robert Woodward', 'USA', 'Chemistry'),
(1972, 'Chemistry', 'Christian Anfinsen', 'USA', 'Chemistry'),
(1975, 'Chemistry', 'John Cornforth', 'UK', 'Chemistry'),
(1904, 'Peace', 'Louis Renault', 'France', 'Peace'),
(1969, 'Medicine', 'Louis Leprince', 'Belgium', 'Medicine');

SELECT * FROM Nobel_win;

SELECT year, subject, winner
FROM Nobel_win
WHERE year = 1970;

SELECT year, subject, winner, country
FROM Nobel_win
WHERE subject = 'Chemistry' AND year BETWEEN 1965 AND 1975;

SELECT year, subject, winner, country
FROM Nobel_win
WHERE winner LIKE 'Louis%';

SELECT year, subject, winner
FROM Nobel_win
WHERE subject NOT LIKE 'P%'
ORDER BY year DESC, winner ASC;

SELECT year, subject, winner, country, category
FROM Nobel_win
WHERE year = 1970
ORDER BY CASE WHEN subject IN ('Chemistry','Economics') THEN 2 ELSE 1 END, subject ASC;



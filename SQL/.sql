--Creating a shows table
CREATE TABLE SHOWS(
ID serial primary key,
title VARCHAR(255) NOT NULL,
url VARCHAR(255) NOT NULL,
length int NOT NULL);

INSERT INTO SHOWS (title,url,length)
VALUES('New on HULU:January','https://www.youtube.com/watch?v=T0ROs6MXKRw&t=116s',3),
('New on Netflix:Feburary','https://www.youtube.com/watch?v=5sUiBOwJ-sc&t=2s',6),
('Best Comming Age Movies','https://www.youtube.com/watch?v=6GetN4CzRfY&t=187s',13);
select * from SHOWS;

---Creating a reviews table

CREATE TABLE Reviews(
ID serial primary key,
first_name VARCHAR(255) NOT NULL,
rating VARCHAR (255) NOT NULL,
description VARCHAR (255));

INSERT INTO Reviews (first_name,rating,description)
VALUES
('Raymond','good','great show suggestions'),
('Kelly','excellent','found some shows that I enjoy watching');
select * from Reviews;
---Creating an outerjoin table to merge the two tables
select * FROM SHOWS 
FULL OUTER JOIN Reviews
on SHOWS = Reviews



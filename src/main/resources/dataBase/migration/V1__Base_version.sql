

create table users (
id int NOT NULL,
name varchar(20) NOT NULL,
password varchar(15) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO users (id, name, password)
VALUES (1,'Alex','1');

INSERT INTO users (id, name, password)
VALUES (2,'John','2');

select * from users;

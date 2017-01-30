DROP TABLE customers;
DROP TABLE films;
DROP TABLE tickets;

CREATE TABLE customers (
  id SERIAL4 primary key,
  name VARCHAR(225) 
);

CREATE TABLE films (
id SERIAL4 primary key,
title VARCHAR(225) 
);

CREATE TABLE tickets (
id SERIAL4 primary key,
customer_id INT4 references customers(id) ON DELETE CASCADE,
film_id INT4 refereces film(id) ON DELETE CASCADE
);

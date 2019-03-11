CREATE DATABASE IF NOT EXISTS burgers_db;
USE burgers_db;

# If the table already exists, remove it before trying to create the table again
DROP TABLE IF EXISTS burgers;
DROP TABLE IF EXISTS customers;

# Create the burgers table
CREATE TABLE burgers (
id INT NOT NULL AUTO_INCREMENT,
burger_name VARCHAR(255) NOT NULL,
date_created DATETIME NOT NULL,
devoured BOOL DEFAULT false,
eater_id VARCHAR(255),
date_eaten DATETIME,
PRIMARY KEY (id)
);
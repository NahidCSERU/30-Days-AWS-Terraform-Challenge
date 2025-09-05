CREATE DATABASE myappdb;
USE myappdb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO users (name, email) VALUES
('Nahid', 'nahid@example.com'),
('Hasan', 'hasan@example.com');

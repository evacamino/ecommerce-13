-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
    category_name VARCHAR(30) NOT NULL
);
CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
    product_name VARCHAR(30) NOT NULL
    price INT DECIMAL NOT NULL 
    -- validate that value is a decimal???
    stock INT NOT NULL DEFAULT 10
    -- validate is a value is numeric
    category_id INT 
    -- references the caterogy models' id
);
CREATE TABLE tag (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
    tag_name VARCHAR(30)

);
CREATE TABLE productTag (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
    product_id INT
    -- references prodcut model id
    tag_id INT 

);


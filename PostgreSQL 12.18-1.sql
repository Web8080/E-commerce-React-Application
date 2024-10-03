CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    is_featured BOOLEAN DEFAULT FALSE
);


INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 1', 29.99, '/path/to/product1.jpg', 'category1', TRUE),
('Product 2', 39.99, '/path/to/product2.jpg', 'category2', FALSE),
('Product 3', 21.99, '/path/to/product1.jpg', 'category3', TRUE),
('Product 4', 79.99, '/path/to/product2.jpg', 'category4', FALSE),
('Product 5', 89.99, '/path/to/product1.jpg', 'category5', TRUE),
('Product 6', 89.99, '/path/to/product2.jpg', 'category6', FALSE),
('Product 7', 26.99, '/path/to/product1.jpg', 'category7', TRUE),
('Product 8', 33.99, '/path/to/product2.jpg', 'category8', FALSE),
('Product 9', 25.99, '/path/to/product1.jpg', 'category9', TRUE),
('Product 10', 31.99, '/path/to/product2.jpg', 'category10', FALSE);


select * from products


SELECT current_user, current_database();

SELECT * FROM category_id;

SELECT * FROM categories;


CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


INSERT INTO categories (name) VALUES 
('Category 1'),
('Category 2'),
('Category 3'),
('Category 4'),
('Category 5');


SELECT * FROM categories;


SELECT * FROM products;


SELECT current_user, current_database();


SELECT * FROM products;


INSERT INTO products (name, price, image, category_id, is_featured)
VALUES ('Product 11', 49.99, '/path/to/product11.jpg', 'category5', TRUE);

-- Adding products to Category 1
INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 1', 29.99, '/path/to/product1.jpg', '1', TRUE),  -- Category ID 1
('Product 2', 39.99, '/path/to/product2.jpg', '1', FALSE);

-- Adding products to Category 2
INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 3', 21.99, '/path/to/product3.jpg', '2', TRUE),
('Product 4', 79.99, '/path/to/product4.jpg', '2', FALSE);

-- Adding products to Category 3
INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 5', 89.99, '/path/to/product5.jpg', '3', TRUE),
('Product 6', 89.99, '/path/to/product6.jpg', '3', FALSE);

-- Adding products to Category 4
INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 7', 26.99, '/path/to/product7.jpg', '4', TRUE),
('Product 8', 33.99, '/path/to/product8.jpg', '4', FALSE);

-- Adding products to Category 5
INSERT INTO products (name, price, image, category_id, is_featured)
VALUES 
('Product 9', 25.99, '/path/to/product9.jpg', '5', TRUE),
('Product 10', 31.99, '/path/to/product10.jpg', '5', FALSE);

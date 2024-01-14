CREATE TABLE orders
(
    id           SERIAL PRIMARY KEY,
    date         DATE         NOT NULL,
    customers_id INT          NOT NULL,
    product_name VARCHAR(128) NOT NULL,
    amount       INT,
    FOREIGN KEY (customers_id) REFERENCES customers (id)
);

INSERT INTO orders(date, customers_id, product_name, amount)
VALUES ('2023-10-29', 1, 'iPhone', 50000),
       ('2023-11-10', 2, 'iPad', 75000),
       ('2023-05-15', 3, 'Mac', 100000),
       ('2023-01-20', 4, 'iPod', 10000),
       ('2023-08-11', 6, 'AirPods', 25000);
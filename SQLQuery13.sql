CREATE TABLE order_details (
    order_id VARCHAR(50) NOT NULL,
    order_date DATETIME,
    ship_mode VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(50),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_id VARCHAR(50),
    cost_price DECIMAL(10,2),
    list_price DECIMAL(10,2),
    quantity INT,
    discount_percent DECIMAL(5,2),
    PRIMARY KEY (order_id, product_id)
);
CREATE TABLE sales(
id SERIAL PRIMARY KEY,
order_date DATE,
customer VARCHAR(50),
region VARCHAR(20),
product VARCHAR(50),
quantity INT,
unit_price NUMERIC(10,2)
);

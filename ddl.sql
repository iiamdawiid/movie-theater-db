CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER
);

CREATE TABLE ticket_order(
    t_order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    t_order_id INTEGER NOT NULL,
    price NUMERIC(5,2),
    FOREIGN KEY (t_order_id) REFERENCES ticket_order(t_order_id) ON DELETE CASCADE
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    movie_name VARCHAR(50),
    duration INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id) ON DELETE CASCADE
);

CREATE TABLE concession_order(
    order_id SERIAL PRIMARY KEY, 
    customer_id INTEGER NOT NULL,
    quantity INTEGER DEFAULT 1,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE concession(
    food_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    food_name VARCHAR(50),
    price NUMERIC(5,2),
    FOREIGN KEY (order_id) REFERENCES concession_order(order_id) ON DELETE CASCADE
);
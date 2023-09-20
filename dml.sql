INSERT INTO customer(
    first_name,
    last_name,
    age
) VALUES (
    'David',
    'Jachym',
    21
);

SELECT *
FROM customer;

INSERT INTO ticket_order(
    customer_id,
    quantity
) VALUES (
    1,
    2
);

SELECT *
FROM ticket_order;

INSERT INTO tickets(
    t_order_id,
    price
) VALUES (
    1,
    18
);

SELECT *
FROM tickets;

INSERT INTO movies(
    ticket_id,
    movie_name,
    duration
) VALUES (
    1,
    'Interstellar',
    169
);

SELECT *
FROM movies;

INSERT INTO concession_order(
    customer_id,
    quantity
) VALUES (
    1,
    3
);

SELECT *
FROM concession_order;

INSERT INTO concession(
    order_id,
    food_name,
    price
) VALUES (
    1,
    'hot dog, popcorn, skittles',
    30
);

SELECT *
FROM concession;
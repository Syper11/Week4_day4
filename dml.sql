INSERT INTO car (
    car_make,
    car_model,
    car_year,
    price 
) VALUES (
    'Ford',
    'F-150 XLT',
    2023,
    65000
),(
    'Bugatti',
    'Chiron Super Sport 300+',
    2021,
    3100000
),(
    'Mercedes',
    'AMG One',
    2022,
    32000
);
--Test to make sure it's all there!!!
SELECT * FROM car

INSERT INTO customer(
    first_name,
    last_name,
    car_id
) VALUES (
    'Brett',
    'Rickheim',
    2
),(
    'Jordan',
    'Golde',
    3
),(
    'Harlan',
    'Rickheim',
    1
);
--Test to make sure it's all there!!!
SELECT * FROM customer

INSERT INTO saleperson(
    first_name,
    last_name,
    customer_id
) VALUES (
    'Ben',
    'Lucky',
    1
),(
    'Ben',
    'Lucky',
    3
),(
    'Robert',
    'Killenit',
    2
);
--Test to make sure it's all there!!!
SELECT * FROM saleperson

INSERT INTO invoice(
    saleperson_id,
    car_id,
    customer_id
) VALUES (
    1,2,1
),(
    2,1,3
),(
    3,3,2
);
--Test to make sure it's all there!!!
SELECT * FROM invoice

INSERT INTO mechanic(
    first_name,
    last_name
) VALUES (
    'Ted',
    'Bundy'
),(
    'Popeye',
    'Fiegel'
);
--Test to make sure it's all there!!!
SELECT * FROM mechanic

INSERT INTO service_department(
    car_id
) VALUES (
    3
),(
    3
);
--Test to make sure it's all there!!!
SELECT * FROM service_department

INSERT INTO service_mechanic(
    mechanic_id,
    service_ticket
) VALUES (
    1,1
),(
    1,2
);
--Test to make sure it's all there!!!
SELECT * FROM service_mechanic

INSERT INTO service_history(
    car_id,
    service_ticket
) VALUES (
    3,1
),(
    3,1
);
--Test to make sure it's all there!!!
SELECT * FROM service_history


CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR(50),
    car_model VARCHAR(50),
    car_year INTEGER NULL,
    price NUMERIC (10)
);
--Test to make sure it's all there!!!
SELECT * FROM car

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);
--Test to make sure it's all there!!!
SELECT * FROM customer

CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
--Test to make sure it's all there!!!
SELECT * FROM saleperson

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (saleperson_id) REFERENCES saleperson(saleperson_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);
--Test to make sure it's all there!!!
SELECT * FROM invoice

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
--Test to make sure it's all there!!!
SELECT * FROM mechanic

CREATE TABLE service_department(
    service_ticket SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);
--Test to make sure it's all there!!!
SELECT * FROM service_department

CREATE TABLE service_mechanic(
    service_mechanic_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER NOT NULL,
    service_ticket INTEGER NOT NULL,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY (service_ticket) REFERENCES service_department(service_ticket)
);
--Test to make sure it's all there!!!
SELECT * FROM service_mechanic

CREATE TABLE service_history(
    service_history SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    service_ticket INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (service_ticket) REFERENCES service_department(service_ticket)
);
--Test to make sure it's all there!!!
SELECT * FROM service_history

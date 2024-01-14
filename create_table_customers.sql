CREATE TABLE customers
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(128) NOT NULL,
    surname      VARCHAR(128) NOT NULL,
    age          INT CHECK ( age > 0 AND age < 150 ),
    phone_number VARCHAR(20)
);

INSERT INTO customers(name, surname, age, phone_number)
VALUES ('Kirill', 'Makarov', 23, '88005553535'),
       ('Alexey', 'Ivanov', 28, '88005553536'),
       ('Dmitriy', 'Dmitrievich', 20, '88005553537'),
       ('alexey', 'Davidov', 36, '88005553538'),
       ('Oleg', 'Olegovich', 35, '88005553539'),
       ('ALEXEY', 'Pavlov', 41, '88005553531'),
       ('Denis', 'Denisovich', 29, '88005553532');
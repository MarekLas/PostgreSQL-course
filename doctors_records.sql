INSERT INTO doctors(first_name, last_name, specjalization, room_number)
VALUES ('Gregory', 'House', 'ALL', 112);

INSERT INTO doctors(first_name, last_name, specjalization, room_number)
VALUES ('James', 'Wilson', 'oncology', 113);

INSERT INTO doctors(first_name, last_name, specjalization)
VALUES ('Eric', 'Foreman', 'neurology');

SELECT * FROM doctors;

SELECT first_name, last_name, room_number
FROM doctors;
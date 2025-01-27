CREATE Table students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT Check(age > 15),
    email VARCHAR(100) NOT NULL UNIQUE,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50),
    course VARCHAR(50)
);

SELECT * FROM students;


-- INSERT INTO students (first_name, last_name, age, email, dob, blood_group, country, course)
-- VALUES

--     ('John', 'Doe', 20, 'john.doe@example.com', '2003-02-15', 'O+', 'USA', 'Computer Science'),
--     ('Jane', 'Smith', 22, 'jane.smith@example.com', '2001-05-21', 'A-', 'Canada', 'Mathematics'),
--     ('Michael', 'Brown', 19, 'michael.brown@example.com', '2004-09-11', 'B+', 'UK', 'Physics'),
--     ('Emily', 'Davis', 21, 'emily.davis@example.com', '2002-04-10', 'AB-', 'Australia', 'Chemistry'),
--     ('Chris', 'Wilson', 18, 'chris.wilson@example.com', '2005-01-25', 'O-', 'Germany', 'Biology'),
--     ('Sarah', 'Taylor', 23, 'sarah.taylor@example.com', '2000-08-13', 'A+', 'India', 'Engineering'),
--     ('David', 'Moore', 20, 'david.moore@example.com', '2003-07-19', 'B-', 'France', 'Astronomy'),
--     ('Sophia', 'Anderson', 19, 'sophia.anderson@example.com', '2004-03-09', 'O+', 'Italy', 'Literature'),
--     ('James', 'Jackson', 22, 'james.jackson@example.com', '2001-12-22', 'AB+', 'Spain', 'Philosophy'),
--     ('Olivia', 'White', 21, 'olivia.white@example.com', '2002-06-30', 'B+', 'Brazil', 'Sociology'),
--     ('Ethan', 'Harris', 19, 'ethan.harris@example.com', '2004-11-04', 'A-', 'China', 'Computer Engineering'),
--     ('Isabella', 'Martin', 20, 'isabella.martin@example.com', '2003-01-17', 'O+', 'Japan', 'Economics'),
--     ('Matthew', 'Thompson', 21, 'matthew.thompson@example.com', '2002-09-12', 'B+', 'South Korea', 'Political Science'),
--     ('Mia', 'Garcia', 18, 'mia.garcia@example.com', '2005-02-28', 'A-', 'Mexico', 'Anthropology'),
--     ('Alexander', 'Martinez', 20, 'alexander.martinez@example.com', '2003-05-06', 'AB-', 'Netherlands', 'History'),
--     ('Charlotte', 'Lopez', 19, 'charlotte.lopez@example.com', '2004-10-23', 'B+', 'Russia', 'Geology'),
--     ('Benjamin', 'Clark', 22, 'benjamin.clark@example.com', '2001-03-03', 'A+', 'South Africa', 'Medicine'),
--     ('Amelia', 'Walker', 23, 'amelia.walker@example.com', '2000-07-15', 'O-', 'New Zealand', 'Law'),
--     ('William', 'Hall', 18, 'william.hall@example.com', '2005-06-10', 'AB+', 'Argentina', 'Education'),
--     ('Emma', 'Allen', 19, 'emma.allen@example.com', '2004-12-08', 'B-', 'Portugal', 'Architecture');


-- SELECT * FROM students WHERE age > 22;

SELECT *FROM students;

SELECT country FROM students ORDER BY country ASC;


SELECT DISTINCT blood_group FROM students;


-- case sensetive 
SELECT * FROM students WHERE first_name LIKE 'a%';

-- case insensetive
SELECT * FROM students WHERE first_name ILIKE 'a%'


SELECT * FROM students 
    WHERE blood_group IN ('A+', 'O-')



SELECT * FROM students ORDER BY first_name ;

SELECT * FROM students LIMIT 5 OFFSET 10;


SELECT MIN(age) FROM students;
SELECT MAX(age) FROM students;

SELECT COUNT(id) FROM students;

SELECT * FROM students;

SELECT * FROM students 
    WHERE blood_group IN('A+','A-')


SELECT first_name FROM students GROUP BY first_name;



CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(25) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) 
)
-- CREATE Table post(
--     id SERIAL PRIMARY KEY,
--     title TEXT NOT NULL,
--     user_id INTEGER REFERENCES "user"(id) on Delete CASCADE 
-- )


INSERT 
INTO "user" (user_name) VALUES
    ('john_doe'),
    ('jane_smith'),
    ('michael_brown'),
    ('emily_davis');

INSERT INTO post(title, user_id) VALUES
    ('descripton', 1),
    ('descripton', 1),
    ('descripton', 2),
    ('descripton',3),
    ('descripton',4);

    SELECT * FROM post;

    SELECT * FROM "user";

DROP TABLE post;
DROP TABLE "user";

    DELETE FROM "user" WHERE id=2;

-- delete constraint on Delete User
--  cascading deletion On Delete Casecade
-- Restict Deletion On delete restrict
--  set default value On delete set Default







--  Join and get title  from post table and get user_name from "user" table

SELECT title, user_name FROM post
    JOIN "user" ON post.user_id = "user".id;





-- new table 

CREATE Table orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
)

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
    (1, '2023-01-15', 150.75),
    (2, '2023-02-20', 200.50),
    (3, '2023-03-10', 99.99),
    (4, '2023-04-05', 250.00),
    (5, '2023-05-25', 175.25),
    (6, '2023-06-30', 300.00),
    (7, '2023-07-15', 120.00),
    (8, '2023-08-20', 180.75),
    (9, '2023-09-10', 220.50),
    (10, '2023-10-05', 199.99);



SELECT 
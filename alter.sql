-- Active: 1737021225145@@127.0.0.1@5432@ph


ALTER Table persone2 ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO persone2 VALUES (5, 'user', 22, 'satter@gmail.com' )


ALTER TABLE persone2 
    RENAME age to user_age;

   
--    ALTER Table persone2  Alter COLUMN email Set UNIQUE;


    UPDATE persone2
    SET email = 'newemail@example.com'
    WHERE id = 4;

    ALTER TABLE persone2 
        ADD CONSTRAINT email UNIQUE (email);

        -- ALTER TABLE persone2 RENAME TO person;
        ALTER Table persone2 RENAME To person;



        SELECT * FROM person; 
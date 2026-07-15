

DROP TABLE IF EXISTS basics.students; -- Here we are dropping the table if it already exists, so that we can create a new one without any errors.

-- Note: Here we write the table name as basics.students, which means we are creating a table named students inside the schema named basics. If we don't specify the schema name, it will create the table in the default public schema.

CREATE TABLE basics.students ( 
    
    -- create an auto incrementing integer
    -- 1, -> 2, 3 and so on, 4, 5
    --  primary key simply means this col uniquely identifies each row
    id SERIAL PRIMARY KEY,

    -- text - string data
    --  not null means this col is required
    -- postgres is going to reject if this name valiue is not present
    name TEXT NOT NULL,
   
    -- unique means - no 2 students is going to have same email
    email TEXT NOT NULL UNIQUE,

    -- integer - whole number
    -- check means this col is going to have some condition
    age INTEGER CHECK (age >= 18),

    -- TIMESTAMP -> stores date and time format 
    -- default means if u dont give any value it will take by default
    created_at TIMESTAMP DEFAULT NOW()
);


-- insert some data

INSERT INTO basics.students (name, email, age)
VALUES 
  ('Sangam', 'mrinal@gmail.com', 55),
  ('John', 'mantu@gmail.com', 23);
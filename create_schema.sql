-- Schema
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
  id serial PRIMARY KEY,
  line_1 varchar(100) NOT NULL,
  city varchar(100) NOT NULL,
  _state varchar(60) NOT NULL,
  zipcode int
);



CREATE TABLE students (
  id           serial PRIMARY KEY,
  first_name   varchar(255) NOT NULL,
  last_name    varchar(255) NOT NULL,
  birthdate    date NOT NULL,
  address_id   integer references addresses(id)
);




CREATE TABLE classes (
  id serial PRIMARY KEY,
  _name varchar(100) NOT NULL,
  credits int
);


CREATE TABLE enrollments (
  id serial PRIMARY KEY,
  student_id int references students(id),
  class_id int references classes(id),
  grade varchar(1)
);

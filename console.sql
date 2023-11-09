CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name text not null,
    department_id INT
);
insert into employees (name, department_id) values ('Tomi', 1);
insert into employees (name, department_id) values ('Zsuzsi', 1);

CREATE table employee_orders(
    item_id serial primary key,
    employee_id int,
    foreign key (employee_id) references employees(employee_id)
);

insert into employee_orders (employee_id) values (1);
insert into employee_orders (employee_id) values (5);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(255) NOT NULL
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(255) NOT NULL
);

INSERT INTO Teachers (teacher_id, teacher_name) VALUES
    (1, 'Mr. Smith'),
    (2, 'Mrs. Jones');

INSERT INTO Subjects (subject_id, subject_name) VALUES
    (101, 'Mathematics'),
    (102, 'Algebra'),
    (103, 'English');

CREATE TABLE TeacherSubjects (
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL REFERENCES Teachers(teacher_id),
    PRIMARY KEY (teacher_id, subject_id)
);

INSERT INTO TeacherSubjects (subject_id, teacher_id) VALUES
    (101, 1),
    (102, 1),
    (103, 2),
    (101, 2);


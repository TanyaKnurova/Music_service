CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    director_id INTEGER,
    FOREIGN KEY (director_id) REFERENCES Employees(employee_id)
);
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO Clientes (id, nombre, email) VALUES 
(2, 'Juan', 'juan@example.com'),
(3, 'Ana', 'ana@example.com'),
(4, 'Sara', 'sara@example.com'),
(5, 'Antonio', 'antonio@example.com');

UPDATE clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

SELECT * 
FROM Clientes 
WHERE Nombre LIKE 'A%';


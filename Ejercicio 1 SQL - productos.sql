CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2)
);

INSERT INTO Productos (id, nombre, precio) VALUES
(1, 'Bicarbonato', 1250.50),
(2, 'Sulfatos', 25.99),
(3, 'Percabonato', 85.00),
(4, 'Perfume', 150.00),
(5, 'Tensioactivos', 45.50);

SELECT * 
FROM Productos 
WHERE precio > 50;

CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);

INSERT INTO Usuarios (id, nombre) VALUES 
(4, 'Carlos'),
(5, 'Elena'),
(6, 'Roberto');

CREATE TABLE Productos (
    id INT PRIMARY KEY,
    nombre_producto VARCHAR(100)
);
ALTER TABLE Productos 
RENAME COLUMN nombre_producto TO nºproducto;


CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    id_usuario INT,
    id_producto INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);


ALTER TABLE Productos 
ADD COLUMN precio DECIMAL(10, 2),
ADD COLUMN producto INT,
ADD COLUMN descripcion TEXT;

ALTER TABLE Productos 
ALTER COLUMN producto TYPE VARCHAR(100);

INSERT INTO Productos (id, producto, precio, descripcion) VALUES 
(1, 'Ordenador', 1200.50, 'Informatica'),
(2, 'Monitor 4K', 350.00, 'Industria'),
(3, 'Silla Ergonómica', 210.99, 'Oficina');

SELECT 
    u.nombre AS usuario, 
    COALESCE(p.producto, 'Sin pedidos') AS producto_comprado
FROM Usuarios u
LEFT JOIN Pedidos ped ON u.id = ped.id_usuario
LEFT JOIN Productos p ON ped.id_producto = p.id;

SELECT 
    u.nombre AS usuario, 
    COALESCE(p.producto, 'Sin pedidos') AS producto_comprado
FROM Usuarios u
LEFT JOIN Pedidos ped ON u.id = ped.id_usuario
LEFT JOIN Productos p ON ped.id_producto = p.id;

ALTER TABLE Pedidos 
ADD COLUMN cantidad INT;

UPDATE Pedidos SET cantidad = 1 WHERE id = 1;
UPDATE Pedidos SET cantidad = 5 WHERE id = 2;
UPDATE Pedidos SET cantidad = 2 WHERE id = 3;



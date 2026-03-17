CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    producto VARCHAR(255),
    cantidad INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

INSERT INTO Pedidos (id, cliente_id, producto, cantidad)
VALUES (1, 1, 'Camiseta', 2);

UPDATE pedidos
SET cantidad = 3
WHERE id = 1;

SELECT * FROM Pedidos WHERE Cantidad >= 5;

ALTER TABLE Pedidos
ADD COLUMN fecha DATE;

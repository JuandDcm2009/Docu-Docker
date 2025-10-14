DELIMITER $$ 
    CREATE PROCEDURE hola_mundo(IN _nombre VARCHAR(50))
    BEGIN 
        SELECT CONCAT('Hola:', _nombre) AS Saludo;

    END $$
DELIMITER ;

CALL hola_mundo(); 

DELIMITER $$
CREATE PROCEDURE calcular_empleado(IN _ventas DECIMAL(10, 2)) 
BEGIN 
    IF _ventas >= 100000 THEN
        SELECT 'El empleado cumplio con las ventas' as resultado;
    ELSEIF _ventas >= 50000 THEN
        SELECT 'El empleado CASI cumplio con las ventas' as resultado;
    ELSE
        SELECT 'El empleado no hizo una mierda con las ventas' as resultado;
    END IF;
END 
$$
DELIMITER ;

CREATE TABLE cupones (

);

CREATE VIEW view_top_clientes_compras AS
SELECT c.nombre as Nombres, cliente_id, SUM(dp.total);
FROM pedidos p
INNER JOIN clientes c on p.cliente_id = c.cliente_id
JOIN detalles_pedidos dp on dp.pedido_id = p.pedido_id GROUP BY dp.total ORDER BY dp.total DESC;


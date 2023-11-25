/*Este procedimiento ordena los clientes por provincia*/

DELIMITER //
CREATE PROCEDURE SP_OrdenarTabla_Clientes (
    IN CampoDeOrdenamiento VARCHAR(50),  -- Parámetro para el campo de ordenamiento
    IN Orden BOOLEAN)                                                 -- Parámetro para el orden (ascendente o descendente
BEGIN

    SET @query = CONCAT('SELECT ID_DNI, USUARIO, PROVINCIA FROM clientes ORDER BY ' , CampoDeOrdenamiento ,  IF(Orden, ' ASC', ' DESC'));

PREPARE consulta FROM @query;
EXECUTE consulta;
DEALLOCATE PREPARE consulta;

END //

DELIMITER ;


/*El siguiente procedimiento inserta un registro de cliente*/

DELIMITER //
CREATE PROCEDURE SP_Insertar_Cliente (
    IN DNI INT(11),
    IN DIRECCION VARCHAR(50),
    IN NOMBRE_APELLIDO VARCHAR(50),
    IN PROVINCIA VARCHAR (50))                    
BEGIN

    SET @query = CONCAT('INSERT INTO feria_placarcito.clientes (ID_DNI, DIRECCION, USUARIO, PROVINCIA) VALUES (', DNI, ', "', DIRECCION, '", "', NOMBRE_APELLIDO, '", "', PROVINCIA, '")');
    
PREPARE consulta FROM @query;
EXECUTE consulta;
DEALLOCATE PREPARE consulta;

END //

DELIMITER ;




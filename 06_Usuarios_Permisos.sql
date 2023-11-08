----Creacion de usuario con permisos solo de lectura
CREATE USER 'solo_lectura'@'localhost'IDENTIFIED BY'contrasena_solo_lectura';

--Conceder permisos solo de lectura en todas las tablas de Placarcito
---No se permite eliminar registros
GRANT SELECT ON feria_placarcito.* TO 'solo_lectura'@'localhost';

--Creacion de usuario lectura_insercion_modificacion con permisos de lectura, insercion y modificacion
CREATE USER 'lectura_insercion_modificacion'@'localhost' IDENTIFIED BY
'contrasena_lectura_insercion_modificacion';

--Conceder permisos  de lectura, insercion y modificacion en todas las tablas de placarcito
--No se permite eliminar registros
GRANT SELECT, INSERT, UPDATE ON feria_placarcito.* TO
'lectura_insercion_modificacion'@'localhost';

--Eliminar la capacidad de eliminar registros para ambos usuarios
REVOKE DELETE ON *.* FROM 'solo_lectura'@'localhost';
REVOKE DELETE ON *.* FROM 'lectura_insercion_modificacion'@'localhost';

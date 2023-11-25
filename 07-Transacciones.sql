/*Iniciar una transaccion en la tabla 'producto'*/
START transaction;

/*Eliminar algunos registros en la tabla 'producto' (o reemplazar por insercion si esta vacía)*/

/*Comentar la sentencia Rollback (no ejecutar)*/
/*ROLLBACK;

/*Comentar la sentencia Commit (no ejecutar)*/
/*COMMIT;

/*Iniciar una transaccion en la tabla 'proveedor'*/
START transaction;

/*Insertar ocho nuevos registros de productos en la tabla 'producto'*/
INSERT INTO PRODUCTO
(ID_PRODUCTO, CANTIDAD,ID_DNI_PROVEEDOR,CATEGORIA,SUBCATEGORIA,ESTADO)
VALUES 
(16,20,33786512,'Parte Abajo','Jean','Usado'),
(17,21,33786512,'Parte Abajo','Pantalon de Vestir','Usado'),
(18,26,33786512,'Parte Abajo','Jean','Usado'),
(19,29,33786512,'Parte Abajo','Short','Nuevo');

/*Agregar un savepoint después de la insercion del cuarto registro*/
SAVEPOINT savepoint4;
/*Continuar insertando registros*/

INSERT INTO PRODUCTO
(ID_PRODUCTO, CANTIDAD,ID_DNI_PROVEEDOR,CATEGORIA,SUBCATEGORIA,ESTADO)
VALUES 
(20,20,33786512,'Parte Abajo','Jean','Nuevo'),
(21,51,33786512,'Parte Abajo','Pantalon de Vestir','Usado'),
(22,66,33786512,'Parte Abajo','Jean','Nuevo'),
(23,39,33786512,'Parte Abajo','Short','Nuevo');

/*Agregar un savepoint despues de la insercion del octavo registro*/
SAVEPOINT savepoint8;

/*Comentar la sentencia para eliminar el savepoint de los primeros 4 registros insertados*/
/*ROLLBACK TO savepoint4;

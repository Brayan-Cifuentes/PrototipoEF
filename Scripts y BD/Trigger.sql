use prototipoef;

select * from usuario;
select * from bitacora_usuario;

-- trigger de registro de usuario
DELIMITER |
create trigger registrar_usuario AFTER insert ON usuario
FOR EACH ROW BEGIN 
insert into bitacora_usuario(usuario, fecha, accion) values ( current_user(), NOW(), "Creo un Nuevo usuario");
END;
|

/*TABLA DE MONEDA*/
-- Insercion
DELIMITER |
create trigger insertar_mantenimiento AFTER insert ON moneda
FOR EACH ROW BEGIN 
insert into bitacora_usuario(usuario, fecha, accion) values ( current_user(), NOW(), "Insercion en tabla Moneda");
END;
|

-- Modificar
DELIMITER |
create trigger Modificar_mantenimiento AFTER update ON moneda
FOR EACH ROW BEGIN 
insert into bitacora_usuario(usuario, fecha, accion) values ( current_user(), NOW(), "Modificacion en tabla Moneda");
END;
|

-- Eliminar
DELIMITER |
create trigger Eliminar_mantenimiento AFTER delete ON moneda
FOR EACH ROW BEGIN 
insert into bitacora_usuario(usuario, fecha, accion) values ( current_user(), NOW(), "Eliminacion en tabla Moneda");
END;
|
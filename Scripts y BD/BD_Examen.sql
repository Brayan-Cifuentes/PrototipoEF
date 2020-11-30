-- drop database PrototipoEF;
create database PrototipoEF;
use PrototipoEF;

/*
Área a utilizar: Bancos
Tabla: Moneda
*/

create table moneda(
	id_moneda varchar(10) primary key,
    nombre_moneda varchar(20) not null,
    tipo_cambio float,
    estatus_moneda char(1)
)engine = InnoDB default charset=latin1;

create table usuario(
	id_usuario varchar(10),
	username varchar(35),
    password_u varchar(45)
)engine = InnoDB default charset=latin1;

create table bitacora_usuario(
	id_bitacora int primary key auto_increment,
    id_usuario varchar(10),
    usuario varchar(35),
    fecha date
)engine = InnoDB default charset=latin1;

select * from usuario;
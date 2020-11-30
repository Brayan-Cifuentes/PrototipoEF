use prototipoef;

select * from usuario;

call SP_login ("Brayan","12345", @id_usuario,@existe);
SELECT @id_usuario, @existe;

call SP_login ("admin","123", @id_usuario,@existe);
SELECT @id_usuario, @existe;
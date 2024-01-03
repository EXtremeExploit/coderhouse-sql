DELIMITER //
-- Crea un trigger que mueve los comentarios borrados a la tabla `ComentariosBorrados`
CREATE OR REPLACE TRIGGER `TRG_DEL_COMM`
BEFORE DELETE ON `Comentarios`
FOR EACH ROW
BEGIN
    INSERT INTO `ComentariosBorrados` (id_comentario, id_usuario, id_fic, text, time, time_borrado) VALUES(OLD.id,OLD.id_usuario, OLD.id_fic, OLD.text, OLD.time, NOW());
END //

DELIMITER ;

-- Borrar algunos comentarios
DELETE FROM `Comentarios` WHERE id = 1;
DELETE FROM `Comentarios` WHERE id = 2;
DELETE FROM `Comentarios` WHERE id = 8;



DELIMITER //
-- Crea un trigger que logea los usuarios creados, y a que hora se crearon a la tabla `UsuariosLog`
CREATE OR REPLACE TRIGGER `TRG_NEW_USER`
AFTER INSERT ON `Usuarios`
FOR EACH ROW
BEGIN
    INSERT INTO `UsuariosLog` (id_user, username, time) VALUES(NEW.id,NEW.username, NOW());
END //

DELIMITER ;

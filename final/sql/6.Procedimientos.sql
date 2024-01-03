DELIMITER //
-- Listar todos los usuarios ordenados
CREATE PROCEDURE SP_USUARIOS_ORDENADOS(
    IN CampoOrdenamiento VARCHAR(100), -- Por que campo de la tabla ordenar
    IN OrdenAscendente BOOLEAN) -- Ordenar Ascendente? (true/false)
BEGIN
    SET @query = CONCAT('SELECT * FROM Usuarios ORDER BY ', CampoOrdenamiento, IF(OrdenAscendente, 'ASC', 'DESC'));

    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //
DELIMITER ;


DELIMITER //
-- Crea un fic con la fecha actual
CREATE PROCEDURE SP_CREAR_FIC(
    IN id_creador INT, -- ID del usuario que creo el fic
    IN title TEXT, -- Titulo del fic
    IN text TEXT) -- Texto del fic
BEGIN
    INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (id_creador, title,text, NOW() );
END //
DELIMITER ;

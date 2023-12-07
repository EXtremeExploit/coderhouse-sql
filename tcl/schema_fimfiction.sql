-- Crear schema
DROP SCHEMA IF EXISTS fimfiction;
CREATE DATABASE fimfiction;
USE fimfiction;


-- Crear las tablas

-- tabla de usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `username` varchar(16) NOT NULL, -- Nombre de usuario
    `password` varchar(100) NOT NULL, -- hash de la contraseña
    `salt` varchar(100) NOT NULL -- Sal del hash de la contraseña
);

-- Tabla de generos de los usuarios
CREATE TABLE IF NOT EXISTS Generos (
    `id_user` INT PRIMARY KEY NOT NULL,
    `gender` varchar(20), -- Genero del usuario, puede ser cualquier texto, incluso un valor nulo
    FOREIGN KEY (id_user) REFERENCES Usuarios(id)
);

CREATE TABLE IF NOT EXISTS UsuariosLog (
    `id` INT PRIMARY KEY AUTO_INCREMENT, -- ID del log
    `id_user` INT NOT NULL, -- Id del usuario creado
    `username` varchar(16) NOT NULL, -- Nombre de usuario
    `time` datetime NOT NULL -- Fecha de creacion
);

-- tabla fics
CREATE TABLE IF NOT EXISTS Fics (
    `id` INT PRIMARY KEY AUTO_INCREMENT, -- ID del fic
    `id_creador` INT NOT NULL, -- ID del usuario del autor del fic
    `title` varchar(1024) NOT NULL, -- Titulo del fic
    `text` TEXT NOT NULL, -- Texto del fic
    `time` datetime NOT NULL, -- A que hora se publico el fic
    FOREIGN KEY (id_creador) REFERENCES Usuarios(id)
);


-- tabla de comentarios en los fics
CREATE TABLE IF NOT EXISTS Comentarios (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_usuario` INT NOT NULL, -- ID del usuario que hizo el comentario
    `id_fic` INT NOT NULL, -- ID del fic en el que esta el comentario
    `text` TEXT NOT NULL, -- Texto del comentario
    `time` datetime NOT NULL, -- A que hora se hizo el comentario
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_fic) REFERENCES Fics(id)
);


-- tabla de comentarios borrados en los fics
CREATE TABLE IF NOT EXISTS ComentariosBorrados (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_comentario` INT NOT NULL, -- ID del comentario borrado
    `id_usuario` INT NOT NULL, -- ID del usuario que hizo el comentario
    `id_fic` INT NOT NULL, -- ID del fic en el que esta el comentario
    `text` TEXT NOT NULL, -- Texto del comentario
    `time` datetime NOT NULL, -- A que hora se hizo el comentario
    `time_borrado` datetime NOT NULL, -- A que hora se hizo el comentario
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_fic) REFERENCES Fics(id)
);



-- tabla de fics favoritos
CREATE TABLE IF NOT EXISTS FicsFavs (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_usuario` INT NOT NULL, -- ID del usuario que hizo el favorito
    `id_fic` INT NOT NULL, -- ID del fic que esta en favoritos
    `time` datetime NOT NULL, -- A que hora se añadio a favoritos
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_fic) REFERENCES Fics(id)
);

-- tabla de fics votados
CREATE TABLE IF NOT EXISTS FicsVotos (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_usuario` INT NOT NULL, -- ID del usuario que hizo el voto
    `id_fic` INT NOT NULL, -- ID del fic votado
    `type` ENUM("+","-") NOT NULL, -- Tipo de voto, puede ser + o -
    `time` datetime NOT NULL, -- A que hora se hizo el voto
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_fic) REFERENCES Fics(id)
);

-- tabla de comentarios votados
CREATE TABLE IF NOT EXISTS CommentariosVotos (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_usuario` INT NOT NULL, -- ID del usuario que hizo el voto
    `id_comentario` INT NOT NULL, -- ID del comentario votado
    `type` ENUM("+","-") NOT NULL, -- Tipo de voto, puede ser + o -
    `time` datetime NOT NULL, -- A que hora se hizo el voto
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_comentario) REFERENCES Comentarios(id)
);

-- Datos de ejemplo
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("x","e5fa44f2b31c1fb553b6021e7360d07d5d91ff5e","b026324c6");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("queso","7448d8798a4380162d4b56f9b452e2f6f9e24e7a","26ab0db90");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("tomate","a3db5c13ff90a36963278c6a39e4ee3c22e2a436","6d7fce9fe");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("TheLegend27","9c6b057a2b9d96a4067a749ee3b3b0158d390cf1","48a24b70a");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("EXtremeExploit","5d9474c0309b7ca09a182d888f73b37a8fe1362c","1dcca2335");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("elreptiliano","ccf271b7830882da1791852baeca1737fcbe4b90","9ae0ea9e3");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("pedrito","d3964f9dad9f60363c81b688324d95b4ec7c8038","84bc3da1b");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("flutterbat","136571b41aa14adc10c5f3c987d43c02c8f5d498","c30f74727");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("discord","b6abd567fa79cbe0196d093a067271361dc6ca8b","7c5aba41f");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("jesse","4143d3a341877154d6e95211464e1df1015b74bd","31d30eea8");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("heisenberg","dd71038f3463f511ee7403dbcbc87195302d891c","166d77ac1");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("twi_twi","ad552e6dc057d1d825bf49df79d6b98eba846ebe","2737b4925");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("nico","feee44ad365b6b1ec75c5621a0ad067371102854","aa6ed9e0f");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("littleshy","030514d80869744a4e2f60d2fd37d6081f5ed01a","367764329");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("sunshine","587b596f04f7db9c2cad3d6b87dd2b3a05de4f35","8c9eb686b");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("vari","3596ea087bfdaf52380eae441077572ed289d657","5b6b41ed9");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("coaster","ad48103e4fc71796e9708cafc43adeed0d1076b7","4d095eeac");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("Anon","24b9c1f3fddff79893e5304f998f2f95ebebd149","0d07d5d91");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("AnonFilly","ba9f376fa71904ccde2a756a24a4e47ec014ee0a","6f9e24e7a");

INSERT INTO Generos (`id_user`, `gender`) VALUES (8, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (10, "caos");
INSERT INTO Generos (`id_user`, `gender`) VALUES (11, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (12, "Yegua");
INSERT INTO Generos (`id_user`, `gender`) VALUES (13, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (15, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (16, "Hombre");

INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (8, "Equestrian Enigma: The Mystery of the Missing Elements","When the Elements of Harmony vanish without a trace, Ponyville is plunged into chaos. Twilight Sparkle and her friends must unravel the mysterious disappearance, facing challenges that test the very essence of their friendship. Can they solve the enigma and restore peace to their beloved land?", '2013-12-02 14:22:11' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Beyond the Everfree: Exploring the Unknown in Ponyville","An ancient legend awakens curiosity in Ponyville, leading Twilight Sparkle and her friends to explore the mysterious realms beyond the Everfree Forest. As they encounter new creatures and face unforeseen challenges, the ponies learn valuable lessons about trust, bravery, and the magic that lies beyond their familiar borders.",'2013-09-28 04:17:47' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Twilight's Legacy: Passing the Torch of Friendship","Twilight Sparkle, now a wise and experienced ruler, contemplates her legacy as the Princess of Friendship. When a new generation of ponies emerges, Twilight must pass on the torch of friendship, guiding the young ones through their own adventures. Together, they discover the timeless values that make Equestria a land of everlasting harmony.",'2021-03-16 18:31:31' );

INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(18, 1, "Primero", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(19, 1, "Segundo", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 1, "Muy bueno.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 1, "Twilight como siempre la GOAT.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 2, "Basadisimo el que hizo esto.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 2, "All my homies love the everfree forest.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(8, 3, "No te puedo creer que le paso toda la responsabilidad a Cozy Glow.", NOW());
INSERT INTO Comentarios(id_usuario, id_fic, text, time) VALUES(5, 3, "Re vieja twilight.", NOW());


-- Views

CREATE OR REPLACE VIEW VW_Usuarios_Genero_Hombre AS (
    (SELECT * FROM `Usuarios` AS  u JOIN `Generos` AS g ON u.id = g.id_user WHERE g.gender = "Hombre")
);

CREATE OR REPLACE VIEW VW_Usuarios_Anon AS (
    (SELECT username FROM `Usuarios` WHERE LOWER(username) LIKE "%anon%")
);

CREATE OR REPLACE VIEW VW_Fics_friendship AS (
    (SELECT * FROM `Fics` WHERE LOWER(text) LIKE "%friendship%")
);

CREATE OR REPLACE VIEW VW_Fics_By_User_id_8 AS (
    (SELECT * FROM `Fics` WHERE id_creador = 8)
);
CREATE OR REPLACE VIEW VW_Fics_in_2013 AS (
    (SELECT * FROM `Fics` WHERE year(time) = 2013)
);

-- Funciones

DROP FUNCTION IF EXISTS CantFicsPorUsuarioId;
DELIMITER //
CREATE FUNCTION CantFicsPorUsuarioId(id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cant INT;

    SELECT COUNT(*) INTO cant FROM Fics WHERE id_creador = id;

    return cant;
END//
DELIMITER ;


DROP FUNCTION IF EXISTS CantFicsPorAño;
DELIMITER //
CREATE FUNCTION CantFicsPorAño(año INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cant INT;

    SELECT COUNT(*) INTO cant FROM `Fics` WHERE year(`time`) = año;

    return cant;
END//
DELIMITER ;

-- Procedures

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

-- Inserta nuevos usuarios para probar el trigger
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("john","c15f47cace1e4948ac3ccdd3489d249b99a1b026","cf6a52053");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("capcom","745d8d7470846da22a9cc096dc19671b16215df5","5aa8301da");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("illinois","fbea1350da5283f2e89cc2669635731281202371","ff7f2c85a");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("enderman","468749f28902b501d9b00d76b32562ac7f9e14b8","929ad9494");
INSERT INTO Usuarios (`username`, `password`, `salt`) VALUES ("snek","592d58131f564a5ecc4fdf0eeb530a1dd0786d34","4df969991");


CREATE USER IF NOT EXISTS pedrito@localhost identified by "hola123";
CREATE USER IF NOT EXISTS capcom@localhost identified by "cap";

-- GRANT SELECT ON fimfiction.* to capcom@localhost;
-- GRANT SELECT,UPDATE,INSERT ON fimfiction.* to pedrito@localhost;


-- TCL

-- Tabla 1
SET @@AUTOCOMMIT = 0;

START TRANSACTION;

DELETE FROM Generos WHERE id_user = 3;
DELETE FROM Generos WHERE id_user = 6;
DELETE FROM Generos WHERE id_user = 16;

DELETE FROM Usuarios WHERE id = 3;
DELETE FROM Usuarios WHERE id = 6;
DELETE FROM Usuarios WHERE id = 16;
-- ROLLBACK;
-- COMMIT;

COMMIT; -- Comittea el borrar los usuarios para la siguiente transaccion

-- Tabla 2
START TRANSACTION;
INSERT INTO Generos (`id_user`, `gender`) VALUES (1, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (2, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (14, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (4, "Hombre");
SAVEPOINT sp1;
INSERT INTO Generos (`id_user`, `gender`) VALUES (5, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (9, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (7, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (17, "Hombre");
SAVEPOINT sp2;
RELEASE SAVEPOINT sp1;
COMMIT;

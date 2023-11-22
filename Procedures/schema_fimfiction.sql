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

INSERT INTO Generos (`id_user`, `gender`) VALUES (1, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (2, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (3, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (4, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (5, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (6, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (7, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (8, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (9, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (10, "caos");
INSERT INTO Generos (`id_user`, `gender`) VALUES (11, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (12, "Yegua");
INSERT INTO Generos (`id_user`, `gender`) VALUES (13, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (14, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (15, "Mujer");
INSERT INTO Generos (`id_user`, `gender`) VALUES (16, "Hombre");
INSERT INTO Generos (`id_user`, `gender`) VALUES (17, "Hombre");

INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (8, "Equestrian Enigma: The Mystery of the Missing Elements","When the Elements of Harmony vanish without a trace, Ponyville is plunged into chaos. Twilight Sparkle and her friends must unravel the mysterious disappearance, facing challenges that test the very essence of their friendship. Can they solve the enigma and restore peace to their beloved land?", '2013-12-02 14:22:11' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Beyond the Everfree: Exploring the Unknown in Ponyville","An ancient legend awakens curiosity in Ponyville, leading Twilight Sparkle and her friends to explore the mysterious realms beyond the Everfree Forest. As they encounter new creatures and face unforeseen challenges, the ponies learn valuable lessons about trust, bravery, and the magic that lies beyond their familiar borders.",'2013-09-28 04:17:47' );
INSERT INTO Fics (`id_creador`, `title`,`text`,`time`) VALUES (5, "Twilight's Legacy: Passing the Torch of Friendship","Twilight Sparkle, now a wise and experienced ruler, contemplates her legacy as the Princess of Friendship. When a new generation of ponies emerges, Twilight must pass on the torch of friendship, guiding the young ones through their own adventures. Together, they discover the timeless values that make Equestria a land of everlasting harmony.",'2021-03-16 18:31:31' );

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
    SET @query = CONCAT('SELECT * FROM Usuarios ORDER BY ', CampoOrdenamiento, IF(OrdenAscendente, ' ASC', ' DESC'));

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


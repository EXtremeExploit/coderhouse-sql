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
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `id_user` INT NOT NULL,
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

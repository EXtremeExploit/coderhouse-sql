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

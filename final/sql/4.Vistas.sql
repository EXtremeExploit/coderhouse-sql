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

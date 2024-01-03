CREATE USER IF NOT EXISTS pedrito@localhost identified by "hola123";
CREATE USER IF NOT EXISTS capcom@localhost identified by "cap";

GRANT SELECT ON fimfiction.* to capcom@localhost;
GRANT SELECT,UPDATE,INSERT ON fimfiction.* to pedrito@localhost;

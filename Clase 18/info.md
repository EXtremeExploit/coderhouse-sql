# FiMFiction DB
* Una base de datos de una pagina en la que la gente hace historias hechas por la comunidad (fics) publicamente de My Little Pony: FiM

## Tablas

### Usuarios
* **id:**  ID del usuario **(INT)**
    * **Llave primaria**
* **username:**  Nombre de usuario **(varchar(16))**
* **password:**  Hash de la contraseña del usuario **(varchar(100))**
* **salt:**  Sal del hash de la contraseña **(varchar(100))**

### UsuariosLog
* **id:** ID **(INT)**
    * **Llave primaria**
* **id_user:**  ID del usuario **(INT)**
* **username:**  Nombre de usuario **(varchar(16))**
* **time:** Fecha a la que se registro el usuario **(datetime)**

### Generos
* **id:**  ID del genero **(INT)**
    * **Llave primaria**
* **id_user:**  ID del usuario **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **gender:**  Genero del usuario **(varchar(20) / null)**

### Fics
* **id:**  ID del fic **(INT)**
    * **Llave primaria**
* **id_creador:**  ID del usuario que publico que fic **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **title:** Titulo del fic **(varchar(1024))**
* **text:** Texto del fic **(TEXT)**
* **time:** Fecha a la que se publico el fic **(datetime)**

### Comentarios
* **id:**  ID del comentario **(INT)**
    * **Llave primaria**
* **id_usuario:**  ID del usuario que hizo el comentario **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **id_fic:** ID del fic en la que esta el comentario **(INT)**
    * Referencia a `id` en la tabla `Fics`
* **text:** Texto del comentario **(TEXT)**
* **time:** Fecha a la que se publico el comentario **(datetime)**


### ComentariosBorrados
* **id:** ID **(INT)**
    * **Llave primaria**
* **id_comentario:** ID del comentario**(INT)**
* **id_usuario:**  ID del usuario que hizo el comentario **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **id_fic:** ID del fic en la que esta el comentario **(INT)**
    * Referencia a `id` en la tabla `Fics`
* **text:** Texto del comentario **(TEXT)**
* **time:** Fecha a la que se publico el comentario **(datetime)**
* **time:** Fecha a la que se borro el comentario **(datetime)**


### FicsFav
* **id:**  ID del favorito, es global **(INT)**
    * **Llave primaria**
* **id_usuario:**  ID del usuario que lo puso en favoritos **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **id_fic:** ID del fic **(INT)**
    * Referencia a `id` en la tabla `Fics`
* **time:** Fecha a la que se añadio a favoritos **(datetime)**


### FicsVotos
* **id:**  ID del voto, es global **(INT)**
    * **Llave primaria**
* **id_usuario:**  ID del usuario que hizo el voto al fic **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **id_fic:** ID del fic en el que esta el voto **(INT)**
    * Referencia a `id` en la tabla `Fics`
* **type:** Tipo de voto, positivo o negativo **(ENUM("+", "-"))**
* **time:** Fecha a la que se añadio a favoritos **(datetime)**


### CommentariosVotos
* **id:**  ID del voto, es global **(INT)**
    * **Llave primaria**
* **id_usuario:**  ID del usuario que hizo el voto al comentario **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **id_comentario:** ID del comentario votado **(INT)**
    * Referencia a `id` en la tabla `Comentarios`
* **type:** Tipo de voto, positivo o negativo **(ENUM("+", "-"))**
* **time:** Fecha a la que se añadio a favoritos **(datetime)**


## Vistas
### VW_Usuarios_Genero_Hombre 
#### Contiene todos los usuarios con genero "Hombre"
* Tablas: `Usuarios`, `Generos`
* **id:**  ID del usuario **(INT)**
    * **Llave primaria**
* **username:**  Nombre de usuario **(varchar(16))**
* **password:**  Hash de la contraseña del usuario **(varchar(100))**
* **salt:**  Sal del hash de la contraseña **(varchar(100))**
* **gender:** Genero del usuario

### VW_Usuarios_Anon 
#### Contiene todos los usuarios con la palabra "anon" en el nombre
* Tablas: `Usuarios`
* **id:**  ID del usuario **(INT)**
    * **Llave primaria**
* **username:**  Nombre de usuario **(varchar(16))**
* **password:**  Hash de la contraseña del usuario **(varchar(100))**
* **salt:**  Sal del hash de la contraseña **(varchar(100))**


### VW_Fics_friendship 
#### Contiene todos los fics con la palabra "friendship" en el texto
* Tablas: `Fics`
* **id:**  ID del fic **(INT)**
    * **Llave primaria**
* **id_creador:**  ID del usuario que publico que fic **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **title:** Titulo del fic **(varchar(1024))**
* **text:** Texto del fic **(TEXT)**
* **time:** Fecha a la que se publico el fic **(datetime)**


### VW_Fics_By_User_id_8 
#### Contiene todos los fics hechos por el usuario por la id 8
* Tablas: `Fics`
* **id:**  ID del fic **(INT)**
    * **Llave primaria**
* **id_creador:**  ID del usuario que publico que fic **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **title:** Titulo del fic **(varchar(1024))**
* **text:** Texto del fic **(TEXT)**
* **time:** Fecha a la que se publico el fic **(datetime)**

### VW_Fics_in_2013 
#### Contiene todos los fics hechos en el año 2013
* Tablas: `Fics`
* **id:**  ID del fic **(INT)**
    * **Llave primaria**
* **id_creador:**  ID del usuario que publico que fic **(INT)**
    * Referencia a `id` en la tabla `Usuarios`
* **title:** Titulo del fic **(varchar(1024))**
* **text:** Texto del fic **(TEXT)**
* **time:** Fecha a la que se publico el fic **(datetime)**

## Funciones
### CantFicsPorUsuarioId (id INT)
#### Retorna la cantidad de fics creados por un usuario (INT)
* Tablas: `Fics`
* Argumentos:
    * **`id`** (INT): id del usuario para contar los fics

### CantFicsPorAño (año INT)
#### Retorna la cantidad de fics creados en cierto año (INT)
* Tablas: `Fics`
* Argumentos
    * **`año`** (INT) Año para contar los fics

## Stored Procedures
### SP_USUARIOS_ORDENADOS
#### Retorna todos los usuarios registrados, ordenados por el campo y el orden deseado
* Argumentos
    * **IN `CampoOrdenamiento` (VARCHAR(100))** Por que campo ordenar la tabla
    * **IN `OrdenAscendente` (BOOLEAN)** Ordenar Ascendente?

### SP_CREAR_FIC
#### Crea un fic con la fecha actual
* Argumentos
    * **IN `id_creador` (INT)** ID del usuario que creo el fic
    * **IN `title` (TEXT)** Titulo del fic a crear
    * **IN `text` (TEXT)** Texto del fic a crear

## Triggers
### TRG_DEL_COMM
#### Mueve el comentrio borrado a la tabla `ComentariosBorrados`
* Accion: `BEFORE DELETE`
* Tabla: `Comentarios`

### TRG_NEW_USER
#### Loguea el usuario creado y la fecha a la tabla `UsuariosLog`
* Accion: `AFTER INSERT`
* Tabla: `Usuarios`
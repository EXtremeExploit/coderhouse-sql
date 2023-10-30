# FiMFiction DB
* Una base de datos de una pagina en la que la gente hace historias hechas por la comunidad (fics) publicamente de My Little Pony: FiM

## Tablas

### Usuarios
* **id:**  ID del usuario **(INT)**
    * **Llave primaria**
* **username:**  Nombre de usuario **(varchar(16))**
* **password:**  Hash de la contraseña del usuario **(varchar(100))**
* **salt:**  Sal del hash de la contraseña **(varchar(100))**

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


# **Documentacion Docker**

Juan Diego Cristancho Maldonado

## Comandos Basicos

- ``` docker -v / docker --version``` verificar la version instalada actual de docker.

- ```docker run --name (nombre) -e MYSQL_ROOT_PASSWORD=(contraseña) -p 3309:3306 (puertos) -d (Imagen) ``` crear nuevo contenedor de docker.

- ``` docker exec -it (nombre_contenedor) (imagen) -P root -p``` acceder al contenedor.
- ``` docker start (nombre_contenedor)``` inicializar contenedor.
- ``` docker stop (nombre_contenedor)``` apagar contenedor.
- ``` docker ps``` listar contenedores que ya estan inicializados. Se le puede añadir ```--all / -a ``` para listar absulotamente todos los contendores, asi no esten inicializados.

## Comandos Docker MYSQL

#### Bases de datos

- ```SHOW DATABASES;``` listar todas las bases de datos creadas.
- ```USE (nombre_db);``` acceder a la base de datos para gestionarla.
- ```CREATE DATABASE (nombre);``` crear nueva base de datos. Se le puede añadir ``` IF NOT EXISTS``` para comprobar que no exista otra con el mismo nombre antes de crearla.
- ```DROP DATABASE (nombre_db);``` eliminar base de datos. Se le puede añadir ```IF EXISTS`` para comprobar que esta exista antes de eliminarla.

#### Tablas

- ```SHOW TABLES;``` listar todas las talblas.

- ```CREATE TABLE (nombre_tabla);``` (); crear nueva tabla. Se le puede añadir ```IF NOT EXISTS``` para verificar que no exista una igual antes de crearla.

- ````mysql
  CREATE TABLE (nombre_tabla) (
  	dato tipo_de_dato,
  	dato tipo_de_dato,
  	...
  	..
  	.
  );
  ````

  Sintaxis basica para crear tablas.

- ``DROP TABLE (nombre_tabla);``  eliminar base de datos. Se le puede añadir ``IF EXISTS`` para verificar que esta exista antes de eliminarla.

- **Tipos de datos:** 

  - ``INT`` Número entero 

  - ``VARCHAR(size)`` Cadena de texto de longitud variable, especificada por "size"   

  - ``CHAR(size)``  Cadena de texto de longitud fija, especificada por "size"   

  - ``TEXT``  Texto de longitud variable   

  - ``DATE``  Fecha (formato: 'YYYY-MM-DD')   

  - ``TIME`` Hora (formato: 'HH:MM:SS')   

  - ``DATETIME`` Fecha y hora (formato: 'YYYY-MM-DD HH:MM:SS')   

  - ``FLOAT`` Número decimal de precisión simple   

  - ``DOUBLE`` Número decimal de precisión doble   

  - ``DECIMAL(p, s)``  Número decimal con precisión y escala específicas   

  - ``BOOLEAN``  Valor booleano (0 o 1)   

  - ``ENUM(val1, val2)``  Enumeración de valores específicos  

  - ``SET(val1, val2)``  Conjunto de valores específicos   

  - ``INT`` Número entero 

  - ``VARCHAR(size)``  Cadena de texto de longitud variable, especificada por "size"   

  - ``CHAR(size)``  Cadena de texto de longitud fija, especificada por "size"   

  - ``TEXT`` Texto de longitud variable   

  - ``DATE`` Fecha (formato: 'YYYY-MM-DD')   

  - ``TIME``  Hora (formato: 'HH:MM:SS')   

  - ``DATETIME``  Fecha y hora (formato: 'YYYY-MM-DD HH:MM:SS')   

  - ``FLOAT``  Número decimal de precisión simple   

  - ``DOUBLE`` Número decimal de precisión doble   

  - ``DECIMAL(p, s)``  Número decimal con precisión y escala específicas   

  - ``BOOLEAN`` Valor booleano (0 o 1)   

  - ``ENUM (val1, val2)``  Enumeración de valores específicos  

  - ``SET(val1, val2)``  Conjunto de valores específicos   

  - ``BLOB`` Datos binarios largos    Datos binarios largos   

- ``PRYMARY KEY`` definir clave primaria.

#### Deifinicion de Datos

- ```
  INSERT INTO nombre_de_la_tabla (columna1, columna2, columna3, ...)
  VALUES (valor1, valor2, valor3, ...) WHERE condicion (id = 10);
  ```

  Insertar valores a las tablas.

- `` UPDATE (nombre_tabla) SET columna1 = valor, columna2 = valor...`` actualizar valores de los datos.

- ``DELETE FROM (nombre_tabla);`` Eliminar valores de una tabla. Se le puede añadir un ``LIMIT (canitdad)`` para asegurar que solo se elmine X cantidad de registros.

#### Consulta de Datos

- ```SELECT`` Sentencia para selecionar datos en la base de datos.

- ``SELECT (nombre_de_los_campos) FROM (tabla) WHERE (condicion);`` Sintaxis basica.
  ``SELECT id, nombre FROM usuarios;`` Ejemplo.
  Se pueden selecionar todos los atributos con ``SELECT * FROM``  el asterico.

- ``ÒRDER BY (atributo)`` Ordenar los resultados obtenidos. Con ``DESC`` se ordenan de forma descendiente y ``ASC`` para la forma ascendente.

- ``SELECT `` se le pueden aplicar los metodos de ``LIMIT, WHERE, ORDER BY...``

- **Comparadores de comparacion**
  **"=" ** :   Indica igualdad

  **"<>" :** Señala una diferencia

  **"<" :**  Representa menor que

  **">" :**  Significa mayor que

  **"<=" :**  Equivale a menor o igual que

  **">=" :**  Corresponde a mayor o igual que

- **Comparadores de Logicos**
  ``AND`` Verifica que ambas condiciones sean verdaderas

  ``OR`` Requiere que al menos una de las condiciones sea verdadera

  ``NOT`` Invierte el resultado de una condición

#### Funciones de Agregacion

- **Metodos**
  ``SUM(valor)`` Suma los valores de una columna de tipo numerico o ``INT``.
  ``COUNT(valor)`` Cuenta el numero de filas.
  ``AVG(valor)`` Calcula el promedio de los valores de una columna numercia.
  ``MAX(valor)`` Devuelbe el valor maximo de una columna.
  ``MIN(valor)`` Devuelbe el valor minimo de una columna.
- ``SELECT metodo(valor) AS (PREFIJO personalizado) FROM (nombre_tabla);``
- ``SELECT metodo(valor) FROM (nombre_tabla) GROUP BY (atributo)`` Devuelve los valores de un atributo en especifico, Este modelo devuelve valores sin repetirlos nunca.

#### Clausulas de agregación

- `FROM`: Identifica la tabla de trabajo.
- `WHERE`: Filtra las filas individuales.
- `GROUP BY`: Agrupa las filas filtradas.
- `HAVING`: Filtra los grupos ya formados.
- `SELECT`: Selecciona las columnas y aplica las funciones de agregación.
- `ORDER BY`: Ordena el resultado final.
- `LIMIT`: Limita el número de filas a mostrar.

#### Creacion de tablas atravez de Consultas

- ``CREATE TABLE (nombre_tabla) AS SELECT (columna), (columna).. FROM (tabla_origen) WHERE (condicion)`` Crear tabla apartir de los atributos de otra tabla origen.
- 

/* Crear una tabla */
CREATE TABLE libros(id INTEGER PRIMARY KEY,
						Titulo TEXT,
						Autor TEXT,
						Año INTEGER,
						Valor INTEGER,
						Genero TEXT
);

/* Agregar datos a la tabla */
INSERT INTO libros VALUES (101, 'De animales a dioses', 'Yuval', 2011, 33900, 'Ensayo');
INSERT INTO libros VALUES (102, 'Homodeus', 'Yuval', 2015, 57600, 'Historia');
INSERT INTO libros VALUES (103, '21 Lecciones para el siglo XXI', 'Yuval', 2018, 55200, 'Ensayo');
INSERT INTO libros VALUES (201, 'Funes el memorioso', 'Borges', 1944, 63200, 'Cuento');
INSERT INTO libros VALUES (202, 'Tlhon', 'Borges', 1940, 'null', 'Cuento');
INSERT INTO libros VALUES (301, 'Cien años de soledad', 'Márquez', 1967, 14400, 'Novela');
INSERT INTO libros VALUES (302, 'El coronel no tiene quien le escriba', 'Márquez', 1961, 31200, 'Novela');

/* Vizualizar la tabla */
SELECT * FROM libros;

/* Bucar en la tabla datos que contengan un mismo parametro */
/* Cuáles son los libros del autor Borges */
SELECT * FROM libros WHERE Autor= 'Borges';

/* Bucar en la tabla los datos que esten en medio de dos parametros */
/* Qué libros se publicaron entre el año 2000 y el año 2018 (incluyendo los dos años) */
SELECT * FROM libros WHERE Año >=2000 AND Año <=2018;

/* Qué libros cuestan más que $40000 y menos de 60000 (sin incluir los extremos) */
SELECT * FROM libros WHERE Valor >40000 AND Valor <60000;

/* Bucar en la tabla datos asociados a dos categorias dento de un mismo encabezado */
/* Libros que pertenescan al [Genero] Historia y Ensayo) */
SELECT * FROM libros WHERE Genero IN ('Cuento', 'Historia');

/* Bucar datos que cumplan una u otra condición */
/* Traer libros que sean del Autor Máquez o sean tipo Historia */
SELECT * FROM libros WHERE Autor = 'Márquez' OR Genero ='Historia';

/* Visualizar la tabla
   De forma ascendente respecto al Valor
   y Unicamente las dos primeras filas */
SELECT * FROM libros
ORDER BY Valor ASC
LIMIT 2;


/* Visualizar la tabla
	Tomando solamente los datos cuyo Valor sea inferior a 50000
	Ordenarlos por su Año de publicación ascendentemente 
	y Mostrar unicamente los 3 primeros*/
SELECT * FROM libros
WHERE Valor <50000
ORDER BY Año ASC
LIMIT 5;

/* Visualizar la tabla
	Tomando solamente los datos cuyo Valor sea superior a 50000
	Ordenarlos por su Año de publicación descendentemente 
	y Mostrar unicamente los 4 primeros*/
SELECT * FROM libros
WHERE Valor >50000
ORDER BY Año DESC
LIMIT 4;

/* Visualizar la tabla
	Tomando solamente los datos cuyo Valor sea superior a 50000 Y No tomar datos con Valor = null
	Ordenarlos por su Año de publicación descendentemente 
	y Mostrar unicamente los 4 primeros*/
SELECT * FROM libros
WHERE Valor >50000 AND Valor != 'null'
ORDER BY Año DESC
LIMIT 4;

/* Visualizar la tabla
	Ordenar descendentemente respecto al Año Y ascendentemente respecto al Valor 
	y Mostrar unicamente los 5 primeros
	Cobra más peso la primer orden, por ello se observa que los datos sigen la orden respecto al año, Y el Valor es secundario
	*/
SELECT * FROM libros
ORDER BY Año DESC, Valor ASC
LIMIT 5;
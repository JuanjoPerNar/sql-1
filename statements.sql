-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes;

# id_usuario	nombre	    apellido	  email	                           edad	      lenguaje
  1	            Juan	    Gomez	      juan.gomez@example.com	       28	      Java
  2	            Maria	    Lopez	      maria.lopez@example.com	       32	      JavaScript
  3	            Carlos	    Rodriguez	  carlos.rodriguez@example.com	   25	      Python
  4	            Laura	    Fernandez	  laura.fernandez@example.com	   30	      C++
  5	            Pedro	    Martinez	  pedro.martinez@example.com	   22	      Ruby
  6	            Ana	        Hernandez	  ana.hernandez@example.com	       35	      SQL
  7	            Miguel	    Perez	      miguel.perez@example.com	       28	      PHP
  8	            Sofia	    Garcia	      sofia.garcia@example.com	       26	      Swift
  9	            Javier	    Diaz	      javier.diaz@example.com	       31	      TypeScript
  10	        Luis	    Sanchez	      luis.sanchez@example.com	       27	      Go
  11	        Elena	    Moreno	      elena.moreno@example.com	       29	      C#
  12	        Daniel	    Romero	      daniel.romero@example.com	       33	      HTML
  13	        Paula	    Torres	      paula.torres@example.com	       24	      CSS
  14	        Alejandro	Ruiz	      alejandro.ruiz@example.com	   28	      R
  15	        Carmen	    Vega	      carmen.vega@example.com	       29	      Kotlin
  16	        Adrian	    Molina	      adrian.molina@example.com	       34	      Objective-C
  17	        Isabel	    Gutierrez	  isabel.gutierrez@example.com	   26	      Scala
  18	        Hector	    Ortega	      hector.ortega@example.com	       30	      Perl
  19	        Raquel	    Serrano	      raquel.serrano@example.com	   32	      Shell
  20	        Alberto	    Reyes	      alberto.reyes@example.com	       28	      VB.NET

-- Ejercicio 2: Contar cuántos usuarios hay en total.
-- Tu respuesta aquí
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes;

# total_usuarios
20

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

# id_usuario	nombre	    apellido	  email	                           edad       lenguaje
  2	            Maria	    Lopez	      maria.lopez@example.com	       32	      JavaScript
  6	            Ana	        Hernandez	  ana.hernandez@example.com	       35	      SQL
  9	            Javier	    Diaz	      javier.diaz@example.com	       31	      TypeScript
  12	        Daniel	    Romero	      daniel.romero@example.com	       33	      HTML
  16	        Adrian	    Molina	      adrian.molina@example.com	       34	      Objective-C
  19	        Raquel	    Serrano	      raquel.serrano@example.com	   32	      Shell

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';

# id_usuario	nombre	    apellido	  email	                           edad	      lenguaje
  2	            Maria	    Lopez	      maria.lopez@example.com	       32	      JavaScript


-- Ejercicio 5 OPCION 2: Seleccionar los usuarios que tienen 28 años. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad = 28;

# id_usuario	nombre	    apellido	email	                    edad	  lenguaje
  1	            Juan	    Gomez	    juan.gomez@example.com	    28	      Java
  7	            Miguel	    Perez	    miguel.perez@example.com	28	      PHP
  14	        Alejandro	Ruiz	    alejandro.ruiz@example.com	28	      R
  20	        Alberto	    Reyes	    alberto.reyes@example.com	28	      VB.NET

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE email LIKE 'juan.gomez@example.com';

# id_usuario	nombre	apellido	email	                edad	lenguaje
  1	            Juan	Gomez	    juan.gomez@example.com	28	    Java

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;

No hay usuarios que cumplan estas condiciones

-- Ejercicio 8 OPCION 2: Contar cuántos usuarios con edades diferentes saben el lenguaje 'Java'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java';

# id_usuario	nombre	apellido	email	                edad	lenguaje
  1	            Juan	Gomez	    juan.gomez@example.com	28	    Java

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje = '';

No hay usuarios que cumplan esta condición

-- Ejercicio 10: Encontrar el nombre y edad del usuario más joven.
-- Tu respuesta aquí
SELECT nombre, edad FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes);

# nombre	edad
  Pedro	    22

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes ORDER BY edad DESC;

# id_usuario	nombre	    apellido	   email	                     edad	lenguaje
  6	            Ana	        Hernandez	   ana.hernandez@example.com	 35	    SQL
  16	        Adrian	    Molina	       adrian.molina@example.com	 34	    Objective-C
  12	        Daniel	    Romero	       daniel.romero@example.com	 33	    HTML
  2	            Maria	    Lopez	       maria.lopez@example.com	     32	    JavaScript
  19	        Raquel	    Serrano	       raquel.serrano@example.com	 32	    Shell
  9	            Javier	    Diaz	       javier.diaz@example.com	     31	    TypeScript
  4	            Laura	    Fernandez	   laura.fernandez@example.com	 30	    C++
  18	        Hector	    Ortega	       hector.ortega@example.com	 30	    Perl
  11	        Elena	    Moreno	       elena.moreno@example.com	     29	    C#
  15	        Carmen	    Vega	       carmen.vega@example.com	     29	    Kotlin
  1	            Juan	    Gomez	       juan.gomez@example.com	     28	    Java
  7	            Miguel	    Perez	       miguel.perez@example.com	     28	    PHP
  14	        Alejandro	Ruiz	       alejandro.ruiz@example.com	 28	    R
  20	        Alberto	    Reyes	       alberto.reyes@example.com	 28	    VB.NET
  10	        Luis	    Sanchez	       luis.sanchez@example.com	     27	    Go
  8	            Sofia	    Garcia	       sofia.garcia@example.com	     26	    Swift
  17	        Isabel	    Gutierrez	   isabel.gutierrez@example.com	 26	    Scala
  3	            Carlos	    Rodriguez	   carlos.rodriguez@example.com	 25	    Python
  13	        Paula	    Torres	       paula.torres@example.com	     24	    CSS
  5	            Pedro	    Martinez	   pedro.martinez@example.com	 22	    Ruby


-- Ejercicio 12: Contar cuántos usuarios tienen más de 28 años.
-- Tu respuesta aquí
SELECT COUNT(edad) FROM usuarios_lenguajes WHERE edad > 28;

# COUNT(edad)
  10

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

# id_usuario	nombre	        apellido	email	                       edad	lenguaje
  4	            Laura	        Fernandez	laura.fernandez@example.com	   30	C++
  5	            Pedro	        Martinez	pedro.martinez@example.com	   22	Ruby
  6	            Ana	            Hernandez	ana.hernandez@example.com	   35	SQL
  8	            Sofia	        Garcia	    sofia.garcia@example.com	   26	Swift
  9	            Javier	        Diaz	    javier.diaz@example.com	       31	TypeScript
  10	        Luis	        Sanchez	    luis.sanchez@example.com	   27	Go
  15	        Carmen	        Vega	    carmen.vega@example.com	       29	Kotlin
  16	        Adrian	        Molina	    adrian.molina@example.com	   34	Objective-C
  18	        Hector	        Ortega	    hector.ortega@example.com	   30	Perl
  19	        Raquel	        Serrano	    raquel.serrano@example.com	   32	Shell

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
-- Tu respuesta aquí
SELECT lenguaje, COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje;

# lenguaje	total_usuarios
  Java	    1
  Python	1
  Ruby	    1
  PHP	    1
  Swift	    1
  Go	    1
  C#	    1
  CSS	    1
  R	        1
  Kotlin	1
  Scala	    1
  VB.NET	1

-- Ejercicio 15: Seleccionar el usuario  mayor de 25 y que sepa el lenguaje 'TypeScript'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 25 AND lenguaje = 'TypeScript';

# id_usuario	nombre	apellido	email	                 edad	lenguaje
  9	            Javier	Diaz	    javier.diaz@example.com	 31	    TypeScript

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
-- Tu respuesta aquí
SELECT COUNT(*) AS lenguaje_python FROM usuarios_lenguajes WHERE lenguaje = 'Python';

# lenguaje_python
  1

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, lenguaje FROM usuarios_lenguajes ORDER BY nombre;

# id_usuario	nombre	    apellido	  email	                           edad	      lenguaje
  16	        Adrian	    Molina	      adrian.molina@example.com	       34	      Objective-C
  20	        Alberto	    Reyes	      alberto.reyes@example.com	       28	      VB.NET
  14	        Alejandro	Ruiz	      alejandro.ruiz@example.com	   28	      R
  6	            Ana	        Hernandez	  ana.hernandez@example.com	       35	      SQL
  3	            Carlos	    Rodriguez	  carlos.rodriguez@example.com	   25	      Python
  15	        Carmen	    Vega	      carmen.vega@example.com	       29	      Kotlin
  12	        Daniel	    Romero	      daniel.romero@example.com	       33	      HTML
  11	        Elena	    Moreno	      elena.moreno@example.com	       29	      C#
  18	        Hector	    Ortega	      hector.ortega@example.com	       30	      Perl
  17	        Isabel	    Gutierrez	  isabel.gutierrez@example.com	   26	      Scala
  9	            Javier	    Diaz	      javier.diaz@example.com	       31	      TypeScript
  1	            Juan	    Gomez	      juan.gomez@example.com	       28	      Java
  4	            Laura	    Fernandez	  laura.fernandez@example.com	   30	      C++
  10	        Luis	    Sanchez	      luis.sanchez@example.com	       27	      Go
  2	            Maria	    Lopez	      maria.lopez@example.com	       32	      JavaScript
  7	            Miguel	    Perez	      miguel.perez@example.com	       28	      PHP
  13	        Paula	    Torres	      paula.torres@example.com	       24	      CSS
  5	            Pedro	    Martinez	  pedro.martinez@example.com	   22	      Ruby
  19	        Raquel	    Serrano	      raquel.serrano@example.com	   32	      Shell
  8	            Sofia	    Garcia	      sofia.garcia@example.com	       26	      Swift

-- Ejercicio 18: Encontrar los usuario con el email que contiene la palabra 'example'.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, email FROM usuarios_lenguajes WHERE email LIKE '%example%';

# id_usuario	nombre	    apellido	  email	                       
  1	            Juan	    Gomez	      juan.gomez@example.com	   
  2	            Maria	    Lopez	      maria.lopez@example.com	   
  3	            Carlos	    Rodriguez	  carlos.rodriguez@example.com
  4	            Laura	    Fernandez	  laura.fernandez@example.com
  5	            Pedro	    Martinez	  pedro.martinez@example.com
  6	            Ana	        Hernandez	  ana.hernandez@example.com	
  7	            Miguel	    Perez	      miguel.perez@example.com	
  8	            Sofia	    Garcia	      sofia.garcia@example.com	
  9	            Javier	    Diaz	      javier.diaz@example.com	
  10	        Luis	    Sanchez	      luis.sanchez@example.com	
  11	        Elena	    Moreno	      elena.moreno@example.com	
  12	        Daniel	    Romero	      daniel.romero@example.com	
  13	        Paula	    Torres	      paula.torres@example.com	
  14	        Alejandro	Ruiz	      alejandro.ruiz@example.com	   
  15	        Carmen	    Vega	      carmen.vega@example.com	
  16	        Adrian	    Molina	      adrian.molina@example.com	
  17	        Isabel	    Gutierrez	  isabel.gutierrez@example.com
  18	        Hector	    Ortega	      hector.ortega@example.com	  
  19	        Raquel	    Serrano	      raquel.serrano@example.com
  20	        Alberto	    Reyes	      alberto.reyes@example.com	

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, edad, lenguaje FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND lenguaje IS NOT NULL;

# id_usuario	nombre	    apellido	edad	lenguaje
  1	            Juan	    Gomez	    28	    Java
  2	            Maria	    Lopez	    32	    JavaScript
  3	            Carlos	    Rodriguez	25	    Python
  4	            Laura	    Fernandez	30	    C++
  6	            Ana	        Hernandez	35	    SQL
  7	            Miguel	    Perez	    28	    PHP
  8	            Sofia	    Garcia	    26	    Swift
  9	            Javier	    Diaz	    31	    TypeScript
  10        	Luis	    Sanchez	    27	    Go
  11        	Elena	    Moreno	    29	    C#
  12        	Daniel	    Romero	    33	    HTML
  14        	Alejandro	Ruiz	    28	    R
  15        	Carmen	    Vega	    29	    Kotlin
  16        	Adrian	    Molina	    34	    Objective-C
  17        	Isabel	    Gutierrez	26	    Scala
  18        	Hector	    Ortega	    30	    Perl
  19        	Raquel	    Serrano	    32	    Shell
  20        	Alberto	    Reyes	    28	    VB.NET

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
-- Tu respuesta aquí
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

# total_usuarios
  1

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, COUNT(lenguaje) AS total_lenguajes FROM usuarios_lenguajes GROUP BY id_usuario, nombre, apellido HAVING COUNT(lenguaje) >= 1;

# id_usuario	nombre	      apellido	     total_lenguajes
  1	            Juan	      Gomez	         1
  2	            Maria	      Lopez	         1
  3	            Carlos	      Rodriguez	     1
  4	            Laura	      Fernandez	     1
  5	            Pedro	      Martinez	     1
  6	            Ana	          Hernandez	     1
  7	            Miguel	      Perez	         1     
  8	            Sofia	      Garcia	     1
  9	            Javier	      Diaz	         1     
  10        	Luis	      Sanchez	     1
  11        	Elena	      Moreno	     1
  12        	Daniel	      Romero	     1
  13        	Paula	      Torres	     1
  14        	Alejandro	  Ruiz	         1     
  15        	Carmen	      Vega	         1     
  16        	Adrian	      Molina	     1
  17        	Isabel	      Gutierrez	     1
  18        	Hector	      Ortega	     1
  19        	Raquel	      Serrano	     1
  20        	Alberto	      Reyes	         1

-- Ejercicio 22: Encontrar el lenguaje con más caracteres.
-- Tu respuesta aquí
SELECT lenguaje, LENGTH(lenguaje) AS lenguaje_más_caracteres FROM usuarios_lenguajes ORDER BY lenguaje_más_caracteres DESC LIMIT 1;

# lenguaje	      lenguaje_más_caracteres
  Objective-C	  11

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
-- Tu respuesta aquí
SELECT id_usuario, CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;

# id_usuario	nombre_completo
  1	            Juan Gomez
  2	            Maria Lopez
  3	            Carlos Rodriguez
  4	            Laura Fernandez
  5	            Pedro Martinez
  6	            Ana Hernandez
  7	            Miguel Perez
  8	            Sofia Garcia
  9	            Javier Diaz
  10	        Luis Sanchez
  11	        Elena Moreno
  12	        Daniel Romero
  13	        Paula Torres
  14	        Alejandro Ruiz
  15	        Carmen Vega
  16	        Adrian Molina
  17	        Isabel Gutierrez
  18	        Hector Ortega
  19	        Raquel Serrano
  20	        Alberto Reyes

-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años. 
-- Tu respuesta aquí
SELECT COUNT(DISTINCT lenguaje) AS total_lenguajes FROM usuarios_lenguajes WHERE edad > 25;

# total_lenguajes
  17

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente la misma edad.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad IN (SELECT edad FROM usuarios_lenguajes GROUP BY edad HAVING COUNT(*) > 1) ORDER BY edad;

# id_usuario	nombre	    apellido	email	                        edad	lenguaje
  8	            Sofia	    Garcia	    sofia.garcia@example.com	    26	    Swift
  17            Isabel	    Gutierrez	isabel.gutierrez@example.com    26	    Scala
  1	            Juan	    Gomez	    juan.gomez@example.com	        28	    Java
  7	            Miguel	    Perez	    miguel.perez@example.com	    28	    PHP
  14            Alejandro	Ruiz	    alejandro.ruiz@example.com	    28	    R
  20            Alberto	    Reyes	    alberto.reyes@example.com	    28	    VB.NET
  11            Elena	    Moreno	    elena.moreno@example.com	    29	    C#
  15            Carmen	    Vega	    carmen.vega@example.com	        29	    Kotlin
  4	            Laura	    Fernandez	laura.fernandez@example.com	    30	    C++
  18            Hector	    Ortega	    hector.ortega@example.com	    30	    Perl
  2	            Maria	    Lopez	    maria.lopez@example.com	        32	    JavaScript
  19            Raquel	    Serrano	    raquel.serrano@example.com	    32	    Shell

-- Ejercicio 26: Encontrar el usuario con el lenguaje con mayor número de carácteres y que tenga una edad menor de 30 años. 
-- Tu respuesta aquí
SELECT nombre, apellido, email, edad, lenguaje, LENGTH(lenguaje) AS lenguaje_más_caracteres FROM usuarios_lenguajes WHERE edad < 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

# nombre	apellido	email	                    edad	lenguaje	lenguaje_más_caracteres
  Alberto	Reyes	    alberto.reyes@example.com	28	    VB.NET	    6

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
-- Tu respuesta aquí
SELECT email FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;

# email
  juan.gomez@example.com
  maria.lopez@example.com
  carlos.rodriguez@example.com
  laura.fernandez@example.com
  pedro.martinez@example.com
  ana.hernandez@example.com
  miguel.perez@example.com
  sofia.garcia@example.com
  javier.diaz@example.com
  luis.sanchez@example.com
  elena.moreno@example.com
  daniel.romero@example.com
  paula.torres@example.com
  alejandro.ruiz@example.com
  carmen.vega@example.com
  adrian.molina@example.com
  isabel.gutierrez@example.com
  hector.ortega@example.com
  raquel.serrano@example.com
  alberto.reyes@example.com

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
-- Tu respuesta aquí
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE apellido LIKE 'G%';

# total_usuarios
  3

-- Ejercicio 29: Seleccionar los usuarios que tienen lenguajes que empiecen por 'J' y mostrar solo el que tiene menos caracteres. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje LIKE 'J%' ORDER BY LENGTH(lenguaje) ASC LIMIT 1;

# id_usuario	nombre	apellido	email	                edad	lenguaje
  1	            Juan	Gomez	    juan.gomez@example.com	28	    Java

-- Ejercicio 30: Encontrar el usuario con edad mayor a 30 y que sabe el lenguaje con menos caracteres.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE edad > 30 ORDER BY LENGTH(lenguaje) ASC LIMIT 1;

# id_usuario	nombre	apellido	email	                    edad	lenguaje
  6	            Ana	    Hernandez	ana.hernandez@example.com	35	    SQL

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje. 
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL ORDER BY lenguaje ASC;

# id_usuario	nombre	    apellido	   email	                    edad	lenguaje
  11        	Elena	    Moreno	       elena.moreno@example.com	    29	    C#
  4	            Laura	    Fernandez	   laura.fernandez@example.com	30	    C++
  13        	Paula	    Torres	       paula.torres@example.com	    24	    CSS
  10        	Luis	    Sanchez	       luis.sanchez@example.com	    27	    Go
  12        	Daniel	    Romero	       daniel.romero@example.com	33	    HTML
  1	            Juan	    Gomez	       juan.gomez@example.com	    28	    Java
  2	            Maria	    Lopez	       maria.lopez@example.com	    32	    JavaScript
  15        	Carmen	    Vega	       carmen.vega@example.com	    29	    Kotlin
  16        	Adrian	    Molina	       adrian.molina@example.com	34	    Objective-C
  18        	Hector	    Ortega	       hector.ortega@example.com	30	    Perl
  7	            Miguel	    Perez	       miguel.perez@example.com	    28	    PHP
  3	            Carlos	    Rodriguez	   carlos.rodriguez@example.com	25	    Python
  14        	Alejandro	Ruiz	       alejandro.ruiz@example.com	28	    R
  5	            Pedro	    Martinez       pedro.martinez@example.com	22	    Ruby
  17        	Isabel	    Gutierrez	   isabel.gutierrez@example.com	26	    Scala
  19        	Raquel	    Serrano	       raquel.serrano@example.com	32	    Shell
  6	            Ana	        Hernandez	   ana.hernandez@example.com	35	    SQL
  8	            Sofia	    Garcia	       sofia.garcia@example.com	    26	    Swift
  9	            Javier	    Diaz	       javier.diaz@example.com	    31	    TypeScript
  20        	Alberto	    Reyes	       alberto.reyes@example.com	28	    VB.NET

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje. 
-- Tu respuesta aquí
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND lenguaje IS NOT NULL;

# total_usuarios
  3

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
-- Tu respuesta aquí
SELECT * FROM usuarios_lenguajes WHERE lenguaje <> 'SQL';

# id_usuario	nombre	    apellido	email	                        edad	lenguaje
  1	            Juan	    Gomez	    juan.gomez@example.com	        28	    Java
  2	            Maria	    Lopez	    maria.lopez@example.com	        32	    JavaScript
  3	            Carlos	    Rodriguez	carlos.rodriguez@example.com	25	    Python
  4	            Laura	    Fernandez	laura.fernandez@example.com	    30	    C++
  5	            Pedro	    Martinez    pedro.martinez@example.com	    22	    Ruby
  7	            Miguel	    Perez	    miguel.perez@example.com	    28	    PHP
  8	            Sofia	    Garcia	    sofia.garcia@example.com	    26	    Swift
  9	            Javier	    Diaz	    javier.diaz@example.com	        31	    TypeScript
  10          	Luis	    Sanchez	    luis.sanchez@example.com	    27	    Go
  11          	Elena	    Moreno	    elena.moreno@example.com	    29	    C#
  12          	Daniel	    Romero	    daniel.romero@example.com	    33	    HTML
  13          	Paula	    Torres	    paula.torres@example.com	    24	    CSS
  14          	Alejandro	Ruiz	    alejandro.ruiz@example.com	    28	    R
  15          	Carmen	    Vega	    carmen.vega@example.com	        29	    Kotlin
  16          	Adrian	    Molina	    adrian.molina@example.com	    34	    Objective-C
  17          	Isabel	    Gutierrez	isabel.gutierrez@example.com	26	    Scala
  18          	Hector	    Ortega	    hector.ortega@example.com	    30	    Perl
  19          	Raquel	    Serrano	    raquel.serrano@example.com	    32	    Shell
  20          	Alberto	    Reyes	    alberto.reyes@example.com	    28	    VB.NET

-- Ejercicio 34: Encontrar el lenguaje con más caracteres entre los usuarios que tienen al menos 30 años.
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes WHERE edad >= 30 ORDER BY LENGTH(lenguaje) DESC LIMIT 1;

# lenguaje
  Objective-C

-- Ejercicio 35: Seleccionar los usuarios y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios
-- Tu respuesta aquí
SELECT id_usuario, nombre, apellido, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) AS diferencia_edad FROM usuarios_lenguajes;
# id_usuario	nombre	       apellido	     edad	diferencia_edad
  1	            Juan	       Gomez	     28	    -0.8500
  2	            Maria	       Lopez	     32	    3.1500
  3	            Carlos	       Rodriguez     25	    -3.8500
  4	            Laura	       Fernandez     30	    1.1500
  5	            Pedro	       Martinez	     22	    -6.8500
  6	            Ana	           Hernandez	 35	    6.1500
  7	            Miguel	       Perez	     28	    -0.8500
  8	            Sofia	       Garcia	     26	    -2.8500
  9	            Javier	       Diaz	         31	    2.1500
  10        	Luis	       Sanchez	     27	    -1.8500
  11        	Elena	       Moreno	     29	    0.1500
  12        	Daniel	       Romero	     33	    4.1500
  13        	Paula	       Torres	     24	    -4.8500
  14        	Alejandro	   Ruiz	         28	    -0.8500
  15        	Carmen	       Vega	         29	    0.1500
  16        	Adrian	       Molina	     34	    5.1500
  17        	Isabel	       Gutierrez     26	    -2.8500
  18        	Hector	       Ortega	     30	    1.1500
  19        	Raquel	       Serrano	     32	    3.1500
  20        	Alberto	       Reyes	     28	    -0.8500


-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la palabra 'Script'.
-- Tu respuesta aquí
SELECT COUNT(*) AS usuario_script FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';

# usuario_script
  2

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre. 
-- Tu respuesta aquí
SELECT nombre, LENGTH(nombre) AS longitud_nombre FROM usuarios_lenguajes WHERE lenguaje IS NOT NULL;

# nombre	longitud_nombre
  Juan	    4
  Maria	    5
  Carlos	6
  Laura	    5
  Pedro	    5
  Ana	    3
  Miguel    6
  Sofia	    5
  Javier	6
  Luis	    4
  Elena	    5
  Daniel	6
  Paula	    5
  Alejandro	9
  Carmen	6
  Adrian	6
  Isabel	6
  Hector	6
  Raquel	6
  Alberto	7

-- Ejercicio 38: Encontrar el lenguaje del usuario creado más tarde. 
-- Tu respuesta aquí
SELECT lenguaje FROM usuarios_lenguajes ORDER BY id_usuario DESC LIMIT 1;

# lenguaje
  VB.NET

-- Ejercicio 39: Seleccionar los usuarios y mostrar la suma de sus edades. 
-- Tu respuesta aquí
SELECT SUM(edad) AS suma_edad FROM usuarios_lenguajes;

# suma_edad
  577

-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
-- Tu respuesta aquí
SELECT COUNT(*) AS total_usuarios FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;

# total_usuarios
1

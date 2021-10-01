# SSOO-tarea01
#Bastián Contreras Wasilkowski - bastian.contrerasw@alumnos.uv.cl
En este documento se explicará el diseño de solución y las funciones utilizadas para resolver la problemática
planteada en la pregunta F de la Tarea 1 de la asignatura de Sistemas Operativos.

A continuación, se explican algunas variables especiales de bash utilizadas:
-	‘$#’ = Muestra la cantidad de argumentos que se le pasaron al script en cuestión.
-	‘$*’ = Muestra la lista completa de argumentos pasados al script.
-	‘$$’ = Muestra el PID del script en el que se ejecuta.
-	‘$0’ = Muestra el nombre del script actual.
-	Con el carácter ‘#’ se pueden realizar comentarios en Bash.

Una vez explicado lo anterior:
linea 2: se imprime el nombre del script con $0.
linea 3: se imprime la cantidad de argumentos ingresados al script con $#.
linea 5-8: Se realiza un 'for' que recorra la lista de argumentos dada por '$*' y luego imprima cada uno de los
valores de dicha lista con '$i', siendo 'i' la variable que recorre la lista.
linea 9: se imprime el PID del script con $$.
linea 12: Utilizando el comando 'more' se lee el archivo del directorio '/proc/$$/status' y se hace un 'pipe'
para que solo enseñe las 10 primeras lineas.

#Bastián Contreras Wasilkowski - bastian.contrerasw@alumnos.uv.cl
En este documento se explicará el diseño de solución y las funciones utilizadas para resolver la problemática planteada en la pregunta BONUS de la Tarea 1 de la asignatura de Sistemas Operativos.
Primero que todo, he de mencionar que en las instrucciones del bonus de la tarea 01 se especificaba que se debia explicar en un archivo README.md la solución del problema, pero no puedo crear un repositorio con el mismo nombre, pues GitHub no lo permite, y tampoco quiero editar el README.md ya entregado puesto que cambiaria la fecha de modificación, por ende, me vi en la obligación de crear este READMEbonus.md para poder hacer la entrega de la resolución de este problema, cuya script de solución viene adjunto en la carpeta, con el nombre indicado (querydata.sh).

En el scipt, linea 3-11 lo que se realiza es una verificación de los parámetros ingresados según la forma de ingreso pedida:
  "./querydata.sh -f liv2020.csv -N 4"
Para ello, se valida que el primer parámetro sea igual a "-f", que el tercer parámetro sea igual a "-N" y que la cantidad total de parámetros sean exactamente 4. En caso contrario se envia un mensaje de error y se sale del programa.

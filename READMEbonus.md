#Bastián Contreras Wasilkowski - bastian.contrerasw@alumnos.uv.cl
En este documento se explicará el diseño de solución y las funciones utilizadas para resolver la problemática planteada en la pregunta BONUS de la Tarea 1 de la asignatura de Sistemas Operativos.
Primero que todo, he de mencionar que en las instrucciones del bonus de la tarea 01 se especificaba que se debia explicar en un archivo README.md la solución del problema, pero no puedo crear un repositorio con el mismo nombre, pues GitHub no lo permite, y tampoco quiero editar el README.md ya entregado puesto que cambiaria la fecha de modificación, por ende, me vi en la obligación de crear este READMEbonus.md para poder hacer la entrega de la resolución de este problema, cuya script de solución viene adjunto en la carpeta, con el nombre indicado (querydata.sh).

En el script, linea 3-11 lo que se realiza es una verificación de los parámetros ingresados según la forma de ingreso pedida:
  "./querydata.sh -f liv2020.csv -N 4"
Para ello, se valida que el primer parámetro sea igual a "-f", que el tercer parámetro sea igual a "-N" y que la cantidad total de parámetros sean exactamente 4. En caso contrario se envia un mensaje de error y se sale del programa.

Posteriormente se emplean tres comandos simultaneamente mediante "pipe", para editar el archivo CSV y dejarlo en óptimas condiciones para lograr el cometido. Los tres comandos son:
  - tail
  - sort
  - head
El comando tail permite eliminar la cabecera (nombre de las columnas) del archivo CSV, de la forma:
  tail -n +2 $2
Mediante el parámetro '-n' se selecciona la cantidad de lineas de output, al colocar '+2' hace que el comando expulse la totalidad del archivo a partir de la linea descrita, en este caso, la segunda.'$2' identifica el segundo parámetro entregado al script, es decir, el documento entregado.

El comando sort, toma el output de tail y lo ordena, de la forma:
  sort -k17 -n -r -t";"
Es decir, ordena la 'columna' 18(valor permiso), indicada con el parámetro '-k' del input dado, en forma numérica (menor a mayor) gracias al parámetro '-n', mediante el separador ';' indicado mediante el parámetro '-t y entrega el resultado del ordenamiento al revez, es decir, de mayor a menor, gracias al parámetro -r.

Por último, el comando head acorta las lineas del archivo según la cantidad de permisos a considerar, esto se hace mediante '$4' el cual contiene el último parámetro ingresado. Esto funciona dado que cada linea del documento posee los datos de un permiso:
  head -n $4 > "New_$2"
Además, como se puede ver, el resultado de todos esos comandos se guarda en un nuevo archivo llamado "New_$2", donde '$2' hace referencia al nombre del archivo CSV pasado como parámetro.

Para finalizar, y desplegar por pantalla el resultado, se recorre el archivo ordenando por columna sus datos, mediante un 'while IFS = ";" read'.
El 'while' hará que se repita la deteccion de un separador indicado por 'IFS[Input Field Separators]=";"' para todas las lineas que leera 'read', de forma que, 'read' separará en multitud de campos cada linea gracias al separador punto coma indicado. Los campos donde guardará los datos los definí como "columnas", por lo que, cada columna es llamada 'colN', siendo 'N' el número de la columna.
Ahora, teniendo los datos separados en columnas, se ordenan e imprimen mediante el comando 'echo', tal y como se puede observar entre las lineas 20-27.
El documento es entregado al 'while' en la linea 29.

Por último, he de mencionar dos detalles:
  1.- Para crear el título de cada auto se ocupa una variable incremental llamada 'i', a la cual se le incrementa el valor en la linea 28.
  2.- El argumento '-e' del comando 'echo' en las lineas 6 y 27 le permite detectar e interpretar los '\', 'slash invertido' o 'backslash'.

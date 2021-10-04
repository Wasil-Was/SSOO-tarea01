#!/bin/bash
#Este Script corresponde al bonus de la Tarea 1 de Sistemas Operativos.
#Verificación de parámetros:
if [[ "-f" == "$1" ]] && [[ "-N" == "$3"  ]];
then
	echo -e "Los parámetros ingresados son:\n Archivo: $2\n Cantidad de Permisos: $4\n"
#Si no se encuentran.
else
	echo "Los parámetros son incorrectos."
	exit
fi
#Quitar cabecera del CSV (primera linea), ordenar de más caro a más barato y leer las -N primeras lineas:
tail -n +2 $2 | sort -k17 -n -r -t";" | head -n $4 > "New_$2"

#Ordenar las columnas (separando por ;) y mostrarlas en pantalla:
i=1;
while IFS=';'
read col1 col2 col3 col4 col5 col6 col7 col8 col9 col10 col11 col12 col13 col14 col15 col16 col17 col18
do
echo "============Auto $i============"
echo "Marca: ${col4}"
echo "Modelo: ${col5}"
echo "Versión: ${col6}"
echo "Año: ${col2}"
echo "Tasación: ${col17}"
echo "Valor Permiso: ${col18}"
echo -e "\n"
((i=i+1))
done < "New_$2"
#Este script responde a la pregunta 'f' de la Tarea01.
echo "El nombre del Script es: "$0
echo "\nAl script llegaron "$#" argumentos."
echo "\nLos argumentos son: "
for i in $*
do
	echo $i
done
echo "\nEl PID de este Script es: "$$

echo "\nArchivo status: "
more /proc/$$/status | head -10
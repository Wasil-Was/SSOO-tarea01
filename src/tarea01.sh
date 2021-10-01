#Este script contiene los ejemplos utilizados a lo largo de la Tarea 1.
#Creación de directorio utilizado para los ejemplos:
mkdir test
#Creación de archivo de texto utilizado para los ejemplos:
echo test > test.txt
#Ejemplos:
ls -a -t -l
man ls | cat
chmod u=r test.txt’, sea u=user y r=read
ifconfig | grep netmask
cp test.txt .local/ -p
mv test.txt .local/
mv test.txt test2.txt
rm test.txt
rm test -r
echo This is a test.> test.txt
wc test.txt

ls /home/$USER/[!ex]*
ls /home/$USER/echo????????
echo \$USER
echo hola | grep h
echo hola > hola.txt
ls /home/$USER/[qxz]* && echo true

mkdir 2021-{01..12}-{01..31}/

ls /bin | grep i
ls /bin /usr/bin | grep r-x | wc -l

TEST=”test”
echo $TEST
bash
echo $TEST
exit
export TEST
bash
echo $TEST
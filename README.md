# IP-comparator

![image](https://user-images.githubusercontent.com/114626248/233187728-80c35b49-6224-4b31-987d-57a6f66dff01.png)

## ¿Para qué sirve la herramienta?
La herramienta "IP-Comparator" fué elaborada para uso interno del SOC, con el propósito de automatizar el proceso de realizar la comparacion de cada uno de los elementos de diferentes listas de segmentos IPv4 de un sensor de Global Cybersec, siendo útil al tener enormes listas de segmentos IPv4.

## Consideraciones a tener
Antes de iniciar la herramienta se debe de tener en cuenta que la misma comenzará su funcionaminto sí se llevan a cabo los siguientes puntos dentro del código fuente:

1. Al inicio del código fuente se encuentra un arreglo con sus respectivos elementos, se DEBERÁ de cambiar cada uno de sus elementos por los nombres CORRECTOS de los archivos que se desean analizar, y que estos existen en el directorio donde se encuentra alojada la herramienta.

IMPORTANTE: En este punto se deberán color los nombre de los archivos sin la extensión del mismo!.

![image](https://user-images.githubusercontent.com/114626248/233439723-63b93ee0-1cbb-4012-a241-279702e90762.png)

2. En el apartado de las variables se deberá de cambiar el valor de la variable "client" por el cliente del cual se extrajeron los múltiples segmentos IPv4.

![image](https://user-images.githubusercontent.com/114626248/233439820-b4402133-35f6-4b46-890c-4ab63cba0d4a.png)


De no cumplir con los puntos anteriores, la herramienta no se iniciará correctamente, y mandará un error, detectanto que no existe alguno(s) de los archivos.

![image](https://user-images.githubusercontent.com/114626248/233196698-a2958601-df93-4726-8bf7-78347b95ac76.png)

## ¿Como funciona?
Una vez completado el paso anterior, se iniciará correctamente la herramienta, mostrando los archivos cargados anteriormente:

![image](https://user-images.githubusercontent.com/114626248/233440248-a4da3679-319b-4e85-8700-b90a9ab238ad.png)

Se tendrá que especificar un archivo de las opciones alojadas.

![image](https://user-images.githubusercontent.com/114626248/233440400-0cd26274-9d9f-4d4c-a3bf-d326ab2f15db.png)

La herramienta comenzará a analizar el archivo, teniendo como primeros resultados los segmentos IPv4 que coinciden en cada uno de los archivos, así como la cantidad.

![image](https://user-images.githubusercontent.com/114626248/233443681-f20afcda-67c9-4c90-bd95-d39911ff12b2.png)

![image](https://user-images.githubusercontent.com/114626248/233443874-4d897847-f23a-43de-b7d5-301bc9d26c97.png)


Posteriormente arroja los resultados de los segmentos IPv4 que son únicos en el archivo, es decir, que no coinciden en los demás, así mismo, los redirije a un nuevo archivo con un "Identificador" entero, para evitar sobreescribir los mismos cada ves que el proceso se repita, ó cada vez que la herramienta se ejecute.

![image](https://user-images.githubusercontent.com/114626248/233238262-21832433-04a5-4265-9293-2dcee56b289a.png)

![image](https://user-images.githubusercontent.com/114626248/233238302-7c12960f-0fff-4e65-8f73-fc82699deda2.png)

La herramienta solicitará al usuario si desea volver a repetir el proceso con otro archivo, se tendrá que indicar S/N, sí se especifica "S", el proceso se volverá a repetir, sí se especifica "N", la herramienta finalizará su ejecución.

![image](https://user-images.githubusercontent.com/114626248/233238469-b6bb23ba-da7d-490d-b45d-9af5a10937c6.png)

![image](https://user-images.githubusercontent.com/114626248/233238523-d41b6328-ce62-4db7-8fcf-4bd21623484b.png)

Ahora, la herramienta crea un nuevo directorio, donde se guardaran los resultados obtenidos, al entrar a este directorio se observan los archivos nuevos.

![image](https://user-images.githubusercontent.com/114626248/233238805-78fd5cac-4c7d-4ced-a414-e1176d0aab88.png)








 

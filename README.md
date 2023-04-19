# IP-comparator

![image](https://user-images.githubusercontent.com/114626248/233187728-80c35b49-6224-4b31-987d-57a6f66dff01.png)

## ¿Para qué sirve la herramienta?
La herramienta "IP-Comparator" fué elaborada para uso interno del SOC, con el propósito de automatizar el proceso de realizar la comparacion de cada uno de los elementos de diferentes listas de segmentos IPv4 de un sensor de Global Cybersec, siendo útil al tener enormes listas de segmentos IPv4.

## Consideraciones a tener
Antes de iniciar la herramienta se debe de tener en cuenta que la misma comenzará su funcionaminto sí se llevan a cabo los siguientes puntos dentro del código fuente:

1. Al inicio del código fuente se encuentra un arreglo con sus respectivos elementos, se DEBERÁ de cambiar cada uno de sus elementos por los nombres CORRECTOS de los archivos que se desean analizar, y que estos existen en el directorio de trabajo actual.

IMPORTANTE: En este punto se deberán color los nombre de los archivos sin la extensión del mismo!.

![image](https://user-images.githubusercontent.com/114626248/233197741-9afa1988-0854-4919-94d3-d309bbb20bf3.png)

2. En el apartado de las variables se deberá de cambiar el valor de la variable "client" por el cliente del cual se extrajeron los múltiples segmentos IPv4.

![image](https://user-images.githubusercontent.com/114626248/233191881-d86fc37c-6524-4e5a-bb41-602b38046108.png) 

De no cumplir con los puntos anteriores, la herramienta no se iniciará correctamente, y mandará un error, detectanto que no existe alguno(s) de los archivos.

![image](https://user-images.githubusercontent.com/114626248/233196698-a2958601-df93-4726-8bf7-78347b95ac76.png)

## ¿Como funciona?
Una vez completado el paso anterior, se iniciará correctamente la herramienta, mostrando los archivos cargados anteriormente:

![image](https://user-images.githubusercontent.com/114626248/233196888-03f5dfcd-caf8-4ff3-ab49-967a68bff665.png)





 

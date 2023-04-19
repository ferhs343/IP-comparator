# IP-comparator

![image](https://user-images.githubusercontent.com/114626248/233187728-80c35b49-6224-4b31-987d-57a6f66dff01.png)

## ¿Para qué sirve la herramienta?
La herramienta "IP-Comparator" fué elaborada para uso interno del SOC, con el propósito de automatizar el proceso de realizar la comparacion de cada uno de los elementos de diferentes listas de segmentos IPv4 de un sensor de Global Cybersec, siendo útil al tener enormes listas de segmentos IPv4.

## ¿Como funciona?
Primero se debe de tener en cuenta que la herramienta comenzará su funcionaminto sí se llevan a cabo los siguientes puntos dentro del código fuente:

1. Al inicio del código fuente se encuentra un arreglo con sus respectivos elementos, se DEBERÁ de cambiar cada uno de sus elementos por los nombres CORRECTOS de los archivos que contienen los segmentos IPv4

![image](https://user-images.githubusercontent.com/114626248/233193433-e7af7408-f877-4879-ada4-621fb9a80d09.png)

2. En el apartado de las variables se deberá de cambiar el valor de la variable "client" por el cliente del cual se extrajeron los múltiples segmentos IPv4.

![image](https://user-images.githubusercontent.com/114626248/233191881-d86fc37c-6524-4e5a-bb41-602b38046108.png) 

De no cumplir con los puntos anteriores, la herramienta no se iniciará, y mandará un error, detectanto que no existe alguno(s) de los archivos.

![image](https://user-images.githubusercontent.com/114626248/233192139-b012a1be-b99c-4bb8-b502-50d5c35f540e.png)

 

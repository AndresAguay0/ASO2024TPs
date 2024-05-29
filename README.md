TRABAJO PRÁCTICO N3

1)
a) Pude notar que el archivo "conhilos" tiene un tiempo de ejecuciòn menor al del archivo "sinhilos" teniendo un al rededor de 4,05seg contra 5,35seg. Aunque siguen teniendo variaciones en cada ejecucion consigo mismos, lo que hace a los dos archivos impredecibles. Ademàs creo que tambièn varìan si se està usando la computadora con alguna otra funciòn.

b) No son iguales los tiempos de ejecuciòn.

c) Lo que pasa cuando se activan las lineas indicadas, es que el tiempo de la operaciòn aumenta significativamente, en mi caso unos 6 segundos. Lo que pasa es que el programa ya de por sí da un muy mínimo lugar a error, porque ambos hilos usan la misma variable global, lo cual los lleva a la zona crítica por generar un race condition. El tema es que cuando se sacan los comentarios, cada uno de los hilos ejecuta su función durante mas unidades de tiempo, lo que hace que ese minimo posible error de antes(race condition) se haga mas notorio y visible.

2)
![DiagramaNuevoHamburguesas](https://github.com/AndresAguay0/ASO2024TPs/assets/87208938/e200ab08-5621-4853-a65b-94f13e751674)


PARCIAL

Link del video:
https://youtu.be/hluFe3Tq5ps

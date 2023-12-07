# ProyectoRobotica
Proyecto robótica 2023-2s


## Integrantes del grupo
* Yuli Alpala
* Sara Cardona
* Nicolás Carvajal
* Juan Sebastián Daleman
* Andrés Hernández
* Giovanny Obregón


## Solución planteada

Para el desarrollo del proyecto se comenzó definiendo las geometrías a manipular, para esto se buscaron objetos que cumplieran las siguentes caracteristica: Cajas, tarros y tubos de pasta de dientes, por lo cual se seleccionaron los siguentes objetos a manipular.

![Objetos a manipular](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/9cb21aaa-551a-4a4a-a6d5-93aaa27773c3)

Se midieron las diferentes dimensiones de los objetos seleccionados para su modelado en CAD, obteniendo los siguentes modelos:

[Modelados en CAD](https://github.com/jcarvajalu/ProyectoRobotica/tree/main/Modelado)

Con las consideraciones de las geometrías a manipular y los elementos diponibles en el laboratorio se propuso el diseño de un gripper adaptable de dos dedos.

![GripperModelado](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/5a473340-9b60-46fa-82d7-2b01571fbdb4)
 
 Este gripper se planeó para funcionar con el cilindro de 3 dedos.

Por lo tanto se planearon la diferentes trayectorias que el robot debería llevar a cabo con la repisa y la banda transportadora.

![ModeloRobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/ee8c0696-da70-4ff4-8ec8-ab55996a6f39)

Una vez se tuvieron las rutinas planeadas, se procedió con el desarrollo de la interfaz gráfica para usar en el flexpendant y poder obtener los objetos ubicados en la repida y definir su posición en la zona de alistamiento.

![interfazRobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/0383ae40-93fd-48fe-a38d-67d12c906f77)

### Alistamiento del robot

Para el alistamiento se tuvo la repisa [BAGGEBO](https://www.ikea.com/co/es/p/baggebo-estanteria-metal-blanco-50481172/), la cual se situó en el área de trabajo del robot y se ubicaron los objetos a manipular en ésta, como se muestran a continuación.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/bf9c5e9e-a5d2-4b8e-ade9-5a2ccb729c2b)

Así mismo se hizo una calibracion de la ubicación de la estantería con respto al robot para que el gripper pudiera alcanzar los objetos.

### Herramientas necesarias

Para alistar el gripper en el robot y su utilización se necesitaron:

* Juego de llaves bristol para ajuste de tornillos.
* Juego de destornilladores de estrella (Gripper pedido prestado de otro grupo).

### Piezas utilizadas

De las piezas utilizadas fueron:
* 2 dedos de gripper
* 2 soportes de gripper
* 1 adaptador para usar el cilindro de 3 dedos como de 2
* Cilindro de 3 dedos
* Base de dapatación para Robot ABB y cilindro de 3 dedos
* Electroválvula 5/2

Al usar el gripper prestado por el otro grupo las piezas fueron:
* Gripper adaptable de otro grupo
* Cilindro de 2 dedos
* Electroválvula 5/2


## Diagrama de flujo de las acciones del robot

Teniendo en cuenta que la solución planteada consistía en indicar incialmente, a través de la interfaz implementada en el flexpendant, la ubicación del objeto a tomar en la repisa, y luego indicar la posición en que se quería depositar el objeto en la banda transportadora, se plantea el siguiente diagrama de flujo de las acciones que realizó el robot.

![Diagrama Flujo](https://github.com/jcarvajalu/ProyectoRobotica/assets/80609467/191a6618-c012-4257-aa5c-2247ca20e095)


## Interfaz

Inicialmente, como se sugería en el enunciado del proyecto, se descargó e instaló la última versión de la app de desarrollo FlexPendant SDK de la página oficial del fabricante ABB.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/4dad083a-00cc-4934-b466-30815f0aa5f3)

Luego, haciendo uso del software ABB y siguiendo las instrucciones del video recomendado en el enunciado del proyecto, se diseñó una interfaz preliminar considerando los requisitos del programa a través del desarrollador ScreenMaker.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/e653e4c4-3076-4f54-8633-a8a5bf7e516e)
![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/5a67f0cb-f850-4b7e-a06a-a4ba973dfe8f)

Después de algunas iteraciones en el diseño de la interfaz y teniendo en cuenta el funcionamiento general del programa, se obtuvo la siguiente interfaz para el flex pendant.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/197acaff-a9a4-49a5-ad88-bff20460e369)

Una vez programadas las rutinas de ejecución para el correcto funcionamiento del proyecto, se llevó a cabo la integración entre estas rutinas y la interfaz. Seguidamente, esto se implementó en el flex pendant físico del robot IRB140 de ABB en el LabSIR.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/6332d6e0-f9ac-45d8-939f-cded44581922)


## Diseño del gripper

Para el gripper se propuso un diseño que se pudiera adaptar al cilindro de 3 dedos para ser usado como uno de dos, para esto se creó la pieza de acople.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/2553c860-753c-4268-b090-20b95e5c0bcf)

[Acople](https://github.com/jcarvajalu/ProyectoRobotica/blob/main/Gripper/PlanBV2/acople.ipt)

Luego, se pensaron en unos soportes que pudieran adaptarse a los dedos del gripper fácilmente y pudieran atronillarse a los dedos del cilindro.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/9df9315d-730f-470d-b489-bd80770309bd)

[Base gripper](https://github.com/jcarvajalu/ProyectoRobotica/blob/main/Gripper/PlanBV2/Basegripper.ipt)

Estas pizas se hicieron para imprimirse en PLA para que tuvieran fortaleza y soportaran adecuadamente las cargas mecánicas.

Por último, se hizo un diseño de un dedo adaptable el cual pudiera deformarse para lograr agarrar las diferentes geometrías propuestas.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/2e5d4b36-d9c6-4200-9105-51ec5305b35e)

[Dedo gripper](https://github.com/jcarvajalu/ProyectoRobotica/tree/main/Gripper/PlanBV2)

Esta pieza se pensó para ser impresa en TPU con el fin que fuera flexible y tuviera el soporte suficiente.

Finalmente, acá se puede ver el diseño montado en el cilindro, el modelo y los dedos impresos.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/00e3aecb-c5ff-467c-9b94-97d1e82f9d80)

![Imagen de WhatsApp 2023-12-06 a las 20 51 54_9dfbd0f4](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/219448d5-4aec-4dbe-9a07-8eafdb723621)

Al hacer el montaje en el cilindro se evidenció un error en la impresion del adaptador, por esta razón no fue posible implementar los dedos en el cilindro de 3 dedos. En consecuencia, se planteó como solución usar uno de los cilindros de dos dedos que estaban en el laboratorio, pero al intentar accionarlo este cilindro no funcionaba correctamente [Prueba de error](https://drive.google.com/file/d/1k0lXSExx2qFFyQZFY9tKI-WzeHswhWyn/view?usp=drive_link). Es así como para terminar el desarrollo del proyecto se pidió un gripper prestado a otro grupo.

Adicionalmente se detectó un problema en el gripper, pues al ser el acabado superficial que deja el TPU en la pieza muy liso, los elementos tendían a resbalarse fácilmente. Para solucionar esto se propuso usar una lija de grano fino (lija 220) junto con cinta doble faz para que los elementos no se resbalaran de los dedos del gripper.


## Modelo en RobotStudio


## Código en Rapid


## Comparación de tiempo de alistamiento y operación


## Video de presentación

# ProyectoRobotica
Proyecto robótica 2023-2s

## Integrantes del grupo
* Giovanny Obregon
* Nicolas Carvajal
* Andres Hernandez
* Juan Sebastian Daleman
* Sara Cardona
* Yuli Alpala

## Solución planteada
Para el desarrollo del proyecto se comenzo definiendo las geometrias a manipular para esto se buscaron objetos que cumplieran las siguentes caracteristica: Cajas, tarros y tubos de pasta de dientes con los cuales se dejaron los siguentes objetos a manipular.

![Objetos a manipular](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/9cb21aaa-551a-4a4a-a6d5-93aaa27773c3)

Estos objetos se midieron sus diferentes dimenciones para su modelado en CAD obteniendo los siguentes modelos:

[Modelados en CAD](https://github.com/jcarvajalu/ProyectoRobotica/tree/main/Modelado)

Con las concideraciones de las geometrias a manipular y los elementos diponibles en el laboratorio se propuso el diseño de un gripper adaptable de dos dedos.

![GripperModelado](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/5a473340-9b60-46fa-82d7-2b01571fbdb4)
 
 Este gripper se planeo para funcionar con el cilindro de 3 dedos.

 Con esto se planearon la diferentes trayectorias que el robot deberia hacer con la repisa y la banda transportadora

 ![ModeloRobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/ee8c0696-da70-4ff4-8ec8-ab55996a6f39)


 una vez se tuvieron las rutinas planeadas se hizo el desarrollo de la interfaz grafica que se puede usar en el flexpendant

 ![interfazRobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/0383ae40-93fd-48fe-a38d-67d12c906f77)

Para poder manipular las posiciones de los objetos en donde estban en la repisa y su posion en la zona de alistamiento


### Alistamiento del robot

Para el alistamiento se tuvo a la repisa [BAGGEBO](https://www.ikea.com/co/es/p/baggebo-estanteria-metal-blanco-50481172/) la cual se puso en el area de trabajo del robot

### Herramientas necesarias

### Piezas utilizada

## Diagrama de flujo de las acciones del robot

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


## Diseño del grippper

## Modelo en RobotStudio

## Codigo en Rapid

## Comparacion de tiempo de alistamiento y operación

## Video de presentación

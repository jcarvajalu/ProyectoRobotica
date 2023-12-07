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

Una vez se tuvieron las rutinas planeadas, se procedió con el desarrollo de la interfaz gráfica para usar en el flexpendant y poder obtener los objetos ubicados en la repisa y definir su posición en la zona de alistamiento (banda transportadora) donde se dispondra.

![interfazRobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/0383ae40-93fd-48fe-a38d-67d12c906f77)

### Selección de prodcutos

Para la parte de selección de los productos se contó con una repisa [BAGGEBO](https://www.ikea.com/co/es/p/baggebo-estanteria-metal-blanco-50481172/), la cual se situó en el área de trabajo del robot y en la que se ubicaron los objetos a manipular, como se muestran a continuación.

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

Teniendo en cuenta que la solución planteada consistía en indicar incialmente, a través de la interfaz implementada en el flexpendant, la ubicación del objeto a tomar en la repisa, y luego indicar la posición en que se quería depositar el objeto en la banda transportadora, se planteó el siguiente diagrama de flujo de las acciones que realizó el robot.

![Diagrama Flujo](https://github.com/jcarvajalu/ProyectoRobotica/assets/80609467/191a6618-c012-4257-aa5c-2247ca20e095)


## Interfaz

Inicialmente, como se sugería en el enunciado del proyecto, se descargó e instaló la última versión de la app de desarrollo FlexPendant SDK de la página oficial del fabricante ABB.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/4dad083a-00cc-4934-b466-30815f0aa5f3)

Luego, haciendo uso del software de ABB y siguiendo las instrucciones del video recomendado en el enunciado del proyecto, se diseñó una interfaz preliminar considerando los requisitos del programa a través del desarrollador ScreenMaker, en cual se utilizaron botones, pulsadores y ledes.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/e653e4c4-3076-4f54-8633-a8a5bf7e516e)
![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/5a67f0cb-f850-4b7e-a06a-a4ba973dfe8f)

Después de algunas iteraciones en el diseño de la interfaz y teniendo en cuenta el funcionamiento general del programa, se obtuvo la siguiente interfaz para el flexpendant.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/197acaff-a9a4-49a5-ad88-bff20460e369)

Una vez programadas las rutinas de ejecución para el correcto funcionamiento del proyecto, se llevó a cabo la integración entre éstas y la interfaz. Seguidamente, esto se implementó en el flexpendant físico del robot IRB140 de ABB en el LabSIR.

![image](https://github.com/SaraC27/Laboratorios_Robotica/assets/80609467/6332d6e0-f9ac-45d8-939f-cded44581922)

Cabe resaltar que las posiciones indicadas en la interfaz del flexpendant corresponden a las posiciones definidas para los objetos tanto en la estantería como en la banda transportadora. Esto se puede evidenciar a continuación.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/80609467/53eeed0f-88ff-4cb2-a1a6-119ccdfa1bd3)
![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/80609467/6a6d1e39-d150-4f76-b2b5-f9177ce2ab3c)

Nota: El fondo de la palmera en las secciones de la interfaz se implementó como una prueba en el diseño preliminar, sin embargo, al equipo de trabajo le gustó, por lo tanto, se dejó en la interfaz final.


## Diseño del gripper

Para el gripper se propuso un diseño que se pudiera adaptar al cilindro de 3 dedos para ser usado como uno de dos, para esto se creó la pieza de acople.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/2553c860-753c-4268-b090-20b95e5c0bcf)

[Acople](https://github.com/jcarvajalu/ProyectoRobotica/blob/main/Gripper/PlanBV2/acople.ipt)

Luego, se pensaron unos soportes que pudieran adaptarse a los dedos del gripper fácilmente y pudieran atronillarse a los dedos del cilindro.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/9df9315d-730f-470d-b489-bd80770309bd)

[Base gripper](https://github.com/jcarvajalu/ProyectoRobotica/blob/main/Gripper/PlanBV2/Basegripper.ipt)

Estas pizas se hicieron para imprimirse en PLA para que tuvieran fortaleza y soportaran adecuadamente las cargas mecánicas.

Por último, se hizo un diseño de un dedo adaptable el cual pudiera deformarse para lograr agarrar las diferentes geometrías propuestas.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/2e5d4b36-d9c6-4200-9105-51ec5305b35e)

[Dedo gripper](https://github.com/jcarvajalu/ProyectoRobotica/tree/main/Gripper/PlanBV2)

Esta pieza se pensó para ser impresa en TPU con el fin que fuera flexible y tuviera el soporte suficiente.

Finalmente, a continuación se pueden ver el diseño del modelo y los dedos impresos.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/00e3aecb-c5ff-467c-9b94-97d1e82f9d80)

![Imagen de WhatsApp 2023-12-06 a las 20 51 54_9dfbd0f4](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/219448d5-4aec-4dbe-9a07-8eafdb723621)

Al hacer el montaje en el cilindro se evidenció un error en la impresion del adaptador, por esta razón no fue posible implementar los dedos en el cilindro de 3 dedos. En consecuencia, se planteó como solución usar uno de los cilindros de dos dedos que estaban en el laboratorio, pero al intentar accionarlo este cilindro no funcionaba correctamente [Prueba de error](https://drive.google.com/file/d/1k0lXSExx2qFFyQZFY9tKI-WzeHswhWyn/view?usp=drive_link) . Es así como para terminar el desarrollo del proyecto se pidió un gripper prestado a otro grupo.




[Error de cilindro de dos dedos](https://github.com/jcarvajalu/ProyectoRobotica/assets/70998067/454c9ccd-65c1-43b9-9ebc-0e9215a04871)




Adicionalmente se detectó un problema en el gripper, pues al ser el acabado superficial que deja el TPU en la pieza muy liso, los elementos tendían a resbalarse fácilmente. Para solucionar esto se propuso usar una lija de grano fino (lija 220) junto con cinta doble faz para que los elementos no se resbalaran de los dedos del gripper.

En el siguente link se puede ver los planos de las piezas: [Planos](https://github.com/jcarvajalu/ProyectoRobotica/blob/main/Gripper/Planos.pdf)


## Modelo en RobotStudio
En la primera fase del proceso, se procede a la carga de las geometrías de los objetos que serán manipulados en el entorno de Robot Studio. Este procedimiento incluye la importación de la representación geométrica de los objetos a ser movidos, así como la incorporación de la banda transportadora y el armario del cual se extraerán los mencionados objetos.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/ca22cb82-20cd-4672-b29e-4168cf024dbd)

Seguidamente, se efectúa la carga de la herramienta, la cual se posiciona estratégicamente con el punto de control de la herramienta (TCP) ubicado en el centro de las pinzas, tal como se ilustra en la imagen adjunta. Este paso garantiza una correcta alineación y disposición de la herramienta para llevar a cabo las tareas de manipulación con precisión y eficacia.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/52f0fa10-d7c4-44af-b4b7-b9ed3ac8a50e)

En la siguiente etapa, se implementa la física dinámica a cada objeto, transformándolos en componentes inteligentes. En este contexto, el bloque "source" facilita la generación de copias de dichos objetos en posiciones específicas.Para evaluar la proximidad del gripper a los distintos objetos, se emplea el bloque "compare", para reconocer el objeto al cual se va acercar el gripper. Por su parte, el bloque "attacher" se encarga de establecer la conexión entre el objeto y el gripper cuando se activa la señal digital 1, cuando se requiere disolver la conexión entre el objeto y el gripper, entra en juego el bloque "detacher", activado mediante la señal digital 2. Finalmente, para preparar el entorno para una nueva simulación, el bloque "sink" cumple la función de eliminar la copia creada, posibilitando así la reiteración del proceso en un nuevo ciclo. 

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/ba14c8aa-6cf7-4844-b449-03d29745b613)

Se establece la conexión entre el controlador y el componente inteligente que se ha configurado previamente. 

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/764439a4-02e6-4c39-9d35-c158c9639618)


## Código en Rapid


Dentro de la función principal (main) del código en RAPID, se implementa un bucle que aguarda la activación de la señal digital 3 para iniciar las operaciones. Una vez recibida la señal, el robot se desplaza a la posición de home para iniciar la ejecución de la función de agarrar y soltar. A continuación, se detallaran dichas funciones:

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/a4b84971-2226-4cd5-99e9-b5a62a6b019f)

En la función de agarre, se emplea una estructura de control tipo "switch" para evaluar la variable asociada a la interfaz. Esta variable indica la posición actual del objeto. Dependiendo de dicho valor, se ejecuta una trayectoria específica de aproximación hacia la ubicación del objeto. Finalizada la acción de agarre, el robot regresa a su posición de home.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/e23bf0ac-f633-46c8-a9ae-2a35836c2e5f)
En la función de dejar, se examina la variable vinculada a la interfaz de manera similar. Sin embargo, con la distinción de que la aproximación se realiza verticalmente.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/15b49bc6-6d4a-43af-bcae-4a0f26e09d08)

La función mov_offset se encarga de llevar a cabo aproximaciones, tomando como referencia el parámetro ingresado. Esta función presenta la capacidad de activar o desactivar el gripper según sea necesario. Posteriormente, se devuelve la distancia aproximada.

![image](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/1742c98e-8c02-4df4-96a6-dd2706fecf0e)


## Comparación de tiempo de alistamiento y operación

En la comparación entre el tiempo que requiere una persona para llevar a cabo el agarre y posicionamiento de los objetos y el tiempo de las rutinas ejecutadas por el robot, se evidenció que en este caso la persona se demoró menos tiempo, sin embargo, se debe tener en cuenta que en la solución planteada el robot demoraba 5 segundos en la selección del producto y 5 segundos en la zona de alistamiento, además el robot volvía a home después de posicionar un objeto en la banda.

Cabe resaltar que en un ámbito industrial la cantidad de objetos es bastante mayor y las estanterías se sitúan más alto. En consecuencia, la implementación de un robot que ejecute las rutinas resultaría en mayor productividad, pues este trabajo impactaría negativamente en la salud de los operarios si lo tienen que hacer de forma manual, lo que generaía un menor rendimiento.

En el siguiente enlace se encuentra el video con los tiempos que requiere una persona para realizar estas operaciones ya descritas:

https://drive.google.com/file/d/16F88L6AWLRP8eZ79AIGFzDYOq1SMPVl2/view?usp=sharing




## Video de presentación



La simulación de robotStudio se puede ver en el siguiente video en baja calidad, si quiere verlo en una mayor calidad dirijase a este link https://drive.google.com/drive/folders/1rsiYHvFrMIB10ePP7CXYzUYBzl0OuGI7.

[Simulacion en RobotStudio](https://github.com/jcarvajalu/ProyectoRobotica/assets/82681128/74c09434-fd29-4f74-bd98-2425a1764250)

En el siguiente enlace se encuentra el video presentacion del proyecto donde se muestra la implementación del codigo y la ejecución del mismo, junto con explicaciones detalladas del uso de la interfaz grafica, simulacion y demás.

https://drive.google.com/file/d/1Os9jHJsHlo4TioGitHLyIEitrfc0qajO/view?usp=sharing





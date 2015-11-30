# FinalProject

*/--------------------PROYECTO FINAL. Programación Orientada a Objetos--------------
		     

 */--------------------PROFESOR: Jean Pierre Charalambos------------------------

-NOMBRE DEL PROYECTO: GESTOR DE DATOS Y CITAS MÉDICAS

-AUTORES: David Reyes, Alejandro Ávila, Jennifer Zuluaga.

*/----------------------------------------------------------------------------------------

DESCRIPCIÓN: Éste es un proyecto enfocado a la gestión de citas médicas a partir de 

dispositivos portables, además permite el almacenamiento de datos de paciente, doctor y 

los respectivo datos representativos de cada usuario.

La aplicación se encuentra en su versión primaria con lo cual aún el proceso de 

comunicación entre dispositivos (usuarios) no ha sido implementada (se plantea para 

proyectos de alcance posterior).

*/-------------------------------------------------------------------------------------

CONTROLES.

El ingreso de datos de realiza a partir del teclado del computador de manera directa, el 

uso del mouse permite la selección de los botones que el usuario desee accionar dentro de 

la aplicación.

Dentro de la subcarpeta "Data" de "ClinicalSheet2_0", se encuentran los archivos .xlsx 

dentro de los cuales se registra la información de usuario y contraseña, tanto de paciente 

como de doctor. Para realizar la prueba de las funcionalidades es posible utilizar alguno 

de los usuarios allí contenidos.  También es posible agregar los datos de un usuario nuevo 

desde el botón "Registrar" de la ejecución del programa.

*/---------------------------------------------------------------------------------------

LIBRERIAS UTILIZADAS

ControlP5.* - La libreria ofrece una alta gama de herramientas para controlar eventos a travaez de graficas interactivas. 
El paquete Controlp5 permite la creación de bocetos y botones organizados, cada uno con fuentes personalidas y ajustables.


La libreria ControlP5 debe ser añadida a la carpeta librerias de processing. La libreria esta disponible en el 
repositorio del creador disponible en:https://github.com/sojamo/controlp5


java.io.*provee un argumento "null" para un sistma de flujo de datos de salida y entrada, ya sea para un 
constructor o método en cualquier clase


java.util.* - El paquete trae una serie de utilidades reunidades en clases e interfaces, permite teenr un conjuntos
de elementos ordenados, a sea una lista de usuario o fechas que pueden ser consultadas y localizadas e instanciadas.


Las librerias Java.io y java.util estan integradas en el modo java de processing. No hay necesidad de importarlas, solo hay que llamarlas.


-Aclaración: El paquete "org.apache.poi.ss.usermodel.Sheet", debe encontrarse dentro de la 

carpeta "Code" de la subcarpeta de "FinalProject-master": "ClinicalSheet2_0", de manera 

que sea posible exportar e importar adecuadamente los datos a archivos .xlsx, utilizados 

para el almacenamiento de datos.

*/-------------------------------------------------------------------------------------- 

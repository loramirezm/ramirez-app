import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        //Barra en la parte superior de la pantalla
        appBar: AppBar(
          //Color de fondo "#005293"
          //const Color (0xFF005293),
          //Equivalente RGB: R:0, G: 82. B: 147,
          backgroundColor:Color(0xFF7A72D1),
          //Ícono de navegación (menú hamburguesa a la izquierda)
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: (){},
            ),
        //title define el contenido que aparecerá dentro de la barra
          title: const Text(
            'Resultados de búsqueda',
            style: TextStyle(
              color: Colors.white,
            )
            ),
            //actions permite agregar elementos al lado derecho de la barra
            actions:[
              //PopupMenuButton crea un menú desplegable
              //ícono more_vert son los tres puntos verticales
              PopupMenuButton<String>(
                 //IconButton(
                icon: const Icon (
                  Icons.more_vert,
                  color: Colors.white,
                  ),
                  itemBuilder: (BuildContext context) => [

                  //Primera opción del menú- Perfil
                  const PopupMenuItem<String>(
                    value: 'perfil',
                    child: Row(
                      children: [
                        Icon(Icons.account_circle),
                        SizedBox(width: 10),
                        Text('Perfil'),
                      ],
                      ),
                    ),
 
                  //Segunda opción del menú - Configuración
                  const PopupMenuItem<String>(
                    value: 'configuración',
                    child: Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(width: 10),
                        Text('Configuración'),
                      ],
                      ),
                    ),
                  ],
                //onPressed: (){},
                // ) IconButton
                ),
            ],
        ),
 
        body: Column(

            children: [
              Container(
                height:60, //altura de 148 pixeles
                width: double.infinity, //ocupa todo el ancho
                color: const Color.fromARGB(255, 224, 224, 224), //color de fondo gris
                child: const Text('Filtro'), //texto primer container
              ),

              const SizedBox(height:12.0), //espacio de 12 pixeles entre containers
              Container(
                height: 250.0, //altura de 148 pixeles
                width: double.infinity, //ocupa todo el ancho
                color: const Color.fromARGB(255, 215, 216, 216), //color de fondo gris
                child: const Text('Tamaño item lista'), //texto primer container
              ),
            ],

        ),

        //bottomNavigationBar crea una barra de navegación en la parte inferior
        bottomNavigationBar: BottomNavigationBar(
          //items que contiene la
          items: const [
            //Ícono de la izquierda
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Mensajes',
              ),

            //Ícono del centro
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
              ),

              BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              ),
          ],
        ),
        ),
      );
  }
}
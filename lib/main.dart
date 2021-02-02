import 'package:aplicacion_web/src/bloc/provider.dart';
import 'package:aplicacion_web/src/pages/Datos_Generales.dart';
import 'package:aplicacion_web/src/pages/escritorio_page.dart';
import 'package:aplicacion_web/src/pages/homePage.dart';
import 'package:aplicacion_web/src/pages/login_page.dart';
import 'package:aplicacion_web/src/pages/registro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Provider(//en este provider esta implementado el inheritedWidget el cual maneja todos los datos y esta en o mas alto de la app
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'loginPage',
        routes: {

          'loginPage'         : (BuildContext context) => LoginPage(),
          'registroPage'      : (BuildContext context) => RegistroPage(),
          'homePage'          : (BuildContext context) => HomePage(),
          'escritorioPage'    : (BuildContext context) => EscritorioPage(),
          'datosGeneralesPage': (BuildContext context) => DatosGeneralesPage(),
        },
        theme: ThemeData(primaryColor: Colors.deepPurple),
      ),
    );
   }
}
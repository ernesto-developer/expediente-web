import 'package:aplicacion_web/src/pages/Datos_Generales.dart';
import 'package:aplicacion_web/src/pages/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'homePage',
      routes: {

        'homePage'          : (BuildContext context) => HomePage(),
        'datosGeneralesPage': (BuildContext context) => DatosGeneralesPage(),



      },

    );
  }
}
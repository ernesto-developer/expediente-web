import 'package:aplicacion_web/src/widgets/menuLateral.dart';
import 'package:aplicacion_web/src/widgets/resgistroPage.dart';
import 'package:flutter/material.dart';

class DatosGeneralesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Generales')
      ),
      drawer: MenuLateral(),
     body: RegistroPageDG(),
    );
  }
}
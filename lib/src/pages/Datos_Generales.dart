import 'package:flutter/material.dart';

import 'package:aplicacion_web/src/widgets/botones.dart';
import 'package:aplicacion_web/src/widgets/menuLateral.dart';
import 'package:aplicacion_web/src/widgets/resgistroPage.dart';

class DatosGeneralesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [botonDeGuardar(context),botonDeHome(context),],
        title: Text('Datos Generales')
      ),
      drawer: MenuLateral(),
     body: RegistroPageDG(),
    );
  }
}
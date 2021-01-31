import 'package:flutter/material.dart';

import 'package:aplicacion_web/src/widgets/botones.dart';
import 'package:aplicacion_web/src/widgets/menuLateral.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [botonDeHome(context)],
        title: Text('Expediente Clinico'),
          
      ),
      drawer: MenuLateral(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Paciente:'),
          Divider(),
          Text('No. de expediente'),
          Divider(),
          Text('fecha de registro'),
          Divider()
        ],
      ),
    );
  }
}


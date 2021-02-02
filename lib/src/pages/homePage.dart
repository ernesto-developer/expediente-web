import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:flutter/material.dart';

import 'package:aplicacion_web/src/widgets/botones.dart';
import 'package:aplicacion_web/src/widgets/menuLateral.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ExpedienteModel expediente = new ExpedienteModel();

  @override
  Widget build(BuildContext context) {

    final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente = expeData;
    }
    
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
          Text('Paciente: ${expediente.nombre}'),
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


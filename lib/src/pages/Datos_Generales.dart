import 'package:flutter/material.dart';

import 'package:aplicacion_web/src/widgets/botones.dart';
import 'package:aplicacion_web/src/widgets/menuLateral.dart';
import 'package:aplicacion_web/src/widgets/resgistroPage.dart';

class DatosGeneralesPage extends StatelessWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  final registroPage = RegistroPageDG();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: scaffoldKey,  ########### esto para usar el snackbar
      appBar: AppBar(
        centerTitle: true,
        actions: [botonDeHome(context),],
        title: Text('Datos Generales')
      ),
      drawer: MenuLateral(),
     body: RegistroPageDG(),
    );
  
  }
  
}
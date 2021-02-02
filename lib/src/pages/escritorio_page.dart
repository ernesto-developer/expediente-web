import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:flutter/material.dart';

class EscritorioPage extends StatefulWidget {

  @override
  _EscritorioPageState createState() => _EscritorioPageState();
}

class _EscritorioPageState extends State<EscritorioPage> {
  final expedientesProvider = new ExpedientesProvider();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [FlatButton(onPressed: (){ Navigator.pushNamed(context, 'homePage');}, child: Text('Nuevo Registro',style: TextStyle(color: Colors.white),))],
        centerTitle: true,
        title: Text('Escritorio')
      ),
     
     body:_crearListadoDeExp(),
     );
    
  }

  Widget _crearListadoDeExp(){

    return FutureBuilder(
      future: expedientesProvider.cargarExpedientes(),
      builder: (BuildContext context, AsyncSnapshot<List<ExpedienteModel>> snapshot) {
        if (snapshot.hasData){
          final expedientes = snapshot.data;
          return ListView.builder(
            itemCount: expedientes.length,
            itemBuilder: (context, i) => _crearItem(context, expedientes[i])
          );

        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );

  }

  Widget _crearItem(BuildContext context,ExpedienteModel expediente){
    return Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (direccion){
          expedientesProvider.borrarExpediente(expediente.id);
        },
          child: ListTile(
        title: Text(expediente.nombre),
       
        onTap: () => Navigator.pushNamed(context, "datosGeneralesPage",arguments: expediente),
      ),
    );
  }
}
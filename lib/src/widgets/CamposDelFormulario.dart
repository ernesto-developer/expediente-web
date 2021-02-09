import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:flutter/material.dart';
 
class CamposDelFormulario extends StatelessWidget{
  
  double ancho;
  Icon icono;
  Widget campoformulario;

  CamposDelFormulario({this.ancho,this.icono,this.campoformulario});
   ExpedienteModel expediente = new ExpedienteModel();

   final expedienteProvider = new ExpedientesProvider();

  @override
  Widget build(BuildContext context) {
    var expediente = new ExpedienteModel();
    print(expediente.nombre);
    final size = MediaQuery.of(context).size;
    return  Container(
            width: size.longestSide * ancho,
             height: size.longestSide * .041,                  
               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
                  child:  Padding(
                    padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
                     child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
                          BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
                                ]
                        ),
                              child: ListTile(
                              trailing:  Container( 
                                width: size.longestSide * .01,
                                height: size.longestSide * .01,
                                decoration: BoxDecoration(
                                  color: Colors.brown,
                                  boxShadow: [
                                      BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
                                    ],
                                  borderRadius: BorderRadius.circular(50),  
                                  ),
                                ),
                              minVerticalPadding: 0,
                              leading: icono,
                              title: campoformulario,                     
                            )
                     ),
                 )
        );
  } 
}
// import 'package:aplicacion_web/src/pages/Datos_Generales.dart'; ########### esto para usar el snackbar
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/utils/validacciones.dart';
import 'package:flutter/material.dart';

class RegistroPageDG extends StatefulWidget {
  
  _RegistroPageDGState createState() => _RegistroPageDGState();
}

class _RegistroPageDGState extends State<RegistroPageDG> {

  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  ExpedienteModel expediente     = new ExpedienteModel();
  bool _guardando = false;
 
  @override
  Widget build(BuildContext context) {
    
    final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente =expeData;
    }

    Size size = MediaQuery.of(context).size;
   
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        height: size.height,
        margin: EdgeInsets.all(40.0),
        child: Form(
          key: keyForm,
          child: formUI(context),
        ),
      ),
    );
  }
   
  formUI(context) {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
          child: Column(   
        children: [
              
                Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 50),
                     child: Container(
                       width:300 ,height: 100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                              initialValue: expediente.nombre,
                                decoration: InputDecoration(
                                  labelText: 'Nombre:',
                              ),
                                  onSaved: (value) => expediente.nombre = value,
                                  validator: validacionStrings,
                            )
                        )
                  ),
                   ),             
                 Padding(
                   padding: const EdgeInsets.only(right: 50),
                   child: Container(
                      width: 200 ,height:100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Edad:',
                              ),
                                  //validator: validateNombre,
                            )
                      ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 50),
                   child: Container(
                      width: 200 ,height:100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'FN:',
                              ),
                                  //validator: validateNombre,
                            )
                      ),
                   ),
                 ),
                 Padding(
                    padding: const EdgeInsets.only(right: 50),
                   child: Container(
                      width: 200 ,height:100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Genero:',
                              ),
                                  //validator: validateNombre,
                            )
                      ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 50),
                   child: Container(
                      width: 250 ,height:100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                               initialValue: expediente.telefono.toString(),
                                decoration: InputDecoration(
                                  labelText: 'Tel:',
                              ),
                                  onSaved: (value) => expediente.telefono = int.parse(value),
                                  validator: validacionTelefono,
                            )
                      ),
                   ),
                 ),     
              ],
            ),
         
                Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 50),
                     child: Container(
                       width:400 ,height: 100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Direccion',
                              ),
                                  //validator: validateNombre,
                            )
                        )
                     ),
                 ),       
                   Padding(
                     padding: const EdgeInsets.only(right: 50),
                     child: Container(
                       width:400 ,height: 100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                               initialValue: expediente.correo,
                                decoration: InputDecoration(
                                  labelText: 'Correo Electronico',
                              ),
                                  onSaved: (value) => expediente.correo = value,
                                  validator: validarEmail,
                            )
                        )
                     ),
                 ),       
                   Padding(
                     padding: const EdgeInsets.only(right: 50),
                     child: Container(
                       width:400 ,height: 100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Escolaridad',
                              ),
                                  //validator: validateNombre,
                            )
                        )
                     ),
                 ),       
              ]         
             ),

                Row(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepPurple),
                          width: 100,
                          height: 50,
                            child: FlatButton(
                              onPressed: (_guardando) ? null : submit,
                              child: Icon(Icons.save_sharp,color: Colors.white,),            
                          ) 
                      ),
                    ),
                  ],
                ),   
        ],
      ),
    );
  }
 
submit(){
   if (!keyForm.currentState.validate()) return;
   keyForm.currentState.save();
   
    
    setState(() { _guardando = true; });
  

   if (expediente.id == null){
     expedienteProvider.crearExpedinete(expediente);
  }else{
    expedienteProvider.editarExpedinete(expediente);
  }

  // setState(() { _guardando = false; }); ##### por si necesitamos activarlo otravez
 
  // mostrarSnackbar('Expediente Guardado'); ########### esto para usar el snackbar
  
 }
//  void mostrarSnackbar(String mensaje){   ########### esto para usar el snackbar
  
   
//     final datosGeneralesPage = DatosGeneralesPage();

//      datosGeneralesPage.scaffoldKey.currentState.showSnackBar( SnackBar(content: Text(mensaje),duration: Duration(milliseconds: 1500),
//      )
//   );
    

//  }  ########### esto para usar el snackbar
}

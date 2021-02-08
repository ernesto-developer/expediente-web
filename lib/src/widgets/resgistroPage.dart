// import 'package:aplicacion_web/src/pages/Datos_Generales.dart'; ########### esto para usar el snackbar
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/utils/validacciones.dart';

class RegistroPageDG extends StatefulWidget {
  
  _RegistroPageDGState createState() => _RegistroPageDGState();
}

class _RegistroPageDGState extends State<RegistroPageDG> {
 
  String opcionSeleccionada = 'Masculino';
  List genero = ['Masculino', 'Femenino'];
   
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  ExpedienteModel expediente = new ExpedienteModel();
   
  
  bool _guardando = false;
 
  @override
  Widget build(BuildContext context) {
    
    final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente = expeData;
    }

    Size size = MediaQuery.of(context).size;
   
    return Stack(
      children: [
    //########################################################################################## Container fondo de madera ####################    
         Container(
          
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill,
                  image: AssetImage('assets/madera_escritorio.jpg'),
          ),
          
        )
        ),
        
        Row(children: [
    //################################################################################# Container morado lateral #################
        Container(
          color: Color.fromRGBO(62, 66, 107, 0.3,),
          width: size.width * .25,
          height: size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                                          //########################## Container blanco con azul superior ###########
                BounceInDown(
                  duration: Duration(seconds: 2),
                  child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                   boxShadow: [
                       BoxShadow(color: Colors.black38,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 3.0)
                     ]
                  ),
                  
                  width: size.width * .245,
                  height: size.height * .25,
                  child:   Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Container(
                            padding: EdgeInsets.all(6),
                           decoration: BoxDecoration(
                             boxShadow: [
                              BoxShadow(color: Colors.black54,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: .5),
                            ], 
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                          ),
                            width: 1,
                            height: 1,
                            child: Column(
                              children: [
                                Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Expediente",style: TextStyle(color: Colors.white,fontSize: size.longestSide * .015))
                                ],
                                ),
                                SizedBox(height: size.longestSide *.01,),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: size.longestSide * .17,
                                      height: size.longestSide * .070,
                                      child: Column(
                                        
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [ 
                                          Text('Nombre: ${expediente.nombre}',style: TextStyle(fontSize: size.longestSide * .010)  ,),
                                          Divider(),
                                          Text('Telefono: ${expediente.telefono}'.toString(),style: TextStyle(fontSize: size.longestSide * .010)  ,),
                                          Divider(),
                                          Text('Correo: ${expediente.correo}',style: TextStyle(fontSize: size.longestSide * .010)  ,)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: size.longestSide *  .050,
                                      height: size.longestSide * .050,
                                      
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius: BorderRadius.all(Radius.circular(50))),
                                      child: FlatButton(
                                       onPressed: (_guardando) ? null : submit,
                                       child: Text(_textoDelBoton(),style: TextStyle(color: Colors.white,fontSize: size.longestSide * .01),)           
                                      ) ,

                                    )
                                  ],
                                )
                              ],
                            ),
                      ),
                    ) 
                  ),
                ),
                                          //########################## Containers de campos de seleccion  ###########
               camposDeSeleccion(context, 'Datos Generales'),
               camposDeSeleccion(context, 'Antropometrias'),
               camposDeSeleccion(context, 'Laboratorios'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Generales'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Familiares'),
               camposDeSeleccion(context, 'Antecedentes Personales no Patologicos'),
               camposDeSeleccion(context, 'Frecuencia alimentaria'),
               camposDeSeleccion(context,'Raciones Habituales'),
               camposDeSeleccion(context, 'Calculo de la ingesta habitual'),
               camposDeSeleccion(context, 'Plan nutricional'),
               camposDeSeleccion(context, 'Nota de evolucion'),
              

              ],
            ),
          ),
        ),
    //################################################################################### Container del escritorio ################
        
        Form(
          key: keyForm,
          child:  Container(
          
          width: size.width * .75,
          height: size.height,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ######################### Container izquierdo #########################  
            
            hojaDeTrabajo(context,  
             Column(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
        /*Nombre*/  Container(
                      width: size.longestSide * .25,
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
                                  leading: Icon(Icons.person),
                                  title: 
                                    TextFormField(  
                                      initialValue: expediente.nombre,
                                    decoration: InputDecoration(
                                    labelText: 'Nombre',
                                  ),
                                    onSaved: (value) => expediente.nombre = value,
                                    //  validator: validacion, 
                                )
                            )
                          ),
                       )
                  ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
        // /*Nombre*/  Container(
        //               width: size.longestSide * .25,
        //               height: size.longestSide * .041,                  
        //               decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
        //               child:  Padding(
        //                   padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
        //                   child: Container(
        //                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
        //                         BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
        //                       ]
        //                     ),
        //                       child: ListTile(
        //                        trailing:  Container( 
        //                           width: size.longestSide * .01,
        //                           height: size.longestSide * .01,
        //                           decoration: BoxDecoration(
        //                             color: Colors.brown,
        //                               boxShadow: [
        //                               BoxShadow(color: Colors.black45,blurRadius: 2.0,offset: Offset(0.0, 2.0),spreadRadius: 1.0)
        //                             ],
        //                               borderRadius: BorderRadius.circular(50),
        //                           ),
        //                         ),
       
        //                           minVerticalPadding: 0,
        //                           leading: Icon(Icons.person),
        //                           title: 
        //                             TextFormField(  
        //                               initialValue: expediente.nombre,
        //                             decoration: InputDecoration(
        //                             labelText: 'Nombre',
        //                           ),
        //                             onSaved: (value) => expediente.nombre = value,
        //                             //  validator: validacion, 
        //                         )
        //                     )
        //                   ),
        //                )
        //           ),
                   //etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                  // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre,)),
                  //  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [etiquetaCuerpoCorto(context, menuOpt(),.08),
                  //     etiquetaCuerpoCorto(context, contenidoDeEtiquetasNumeros(context, null, 'Telefono', expediente.telefono.toString(),expediente.telefono,validacionTelefono),.14), 
                  // ],),
                  //  etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.home), 'Direccion', expediente.direccion,validacionTextos)),
                  //  etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.alternate_email), 'Email', expediente.correo, validarEmail)),
                  //  etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.book_outlined), 'Escolaridad', expediente.escolaridad,validacionTextos)),
                  //  etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.build_outlined), 'Ocupacion', expediente.ocupacion,validacionTextos)), 
              ],
            ),
           ),  
               // ######################## Container derecho ###########################
            hojaDeTrabajo(context, 
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                      // etiquetaCuerpoGrande(context, contenidoDeEtiquetasTexto(context, Icon(Icons.person), 'Nombre', expediente.nombre)),
                  ],
                ),
              )
            ],
          ),
        ),
        ),
        
       


      ],
  ),
      ]
    );
   
  }
 

//######################################################################### Widget de Campos de seleccion   ##############
 Widget camposDeSeleccion(BuildContext context,String texto){
  final  size = MediaQuery.of(context).size;
  return  Row(
    children: [  
      Container(
       color: Colors.transparent,
        width: size.longestSide * .245,
        height: size.longestSide * .03,
         child: ListTile(
          leading: Icon( Icons.accessibility , color: Colors.deepPurple ),
           trailing:  Checkbox( activeColor: Colors.deepPurple ,value: expediente.checkDatosGn, onChanged: (value) => setState((){expediente.checkDatosGn = value;} )) ,
            title: Text(texto,style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.wavy,  )),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'datosGeneralesPage',arguments: expediente);
          }
        ),
      ),
    ],
  );
}
//###################################################################### Widget de hojas de trabajo ######################
Widget hojaDeTrabajo(BuildContext context,contenido){
  final size = MediaQuery.of(context).size;
  return  SlideInDown(
    duration: Duration(seconds: 1),
      child: Container( 
              width: size.longestSide  * .3,
              height: size.longestSide * .4,
              decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
                ],
                 color: Colors.white,
                 border: Border.all(
                   color: Colors.blue[300],
                   width: 4
                ),
                  borderRadius: BorderRadius.only(
                   topRight: Radius.circular(15),
                   bottomRight: Radius.circular(15),
                   topLeft: Radius.circular(15),
                   bottomLeft: Radius.circular(15),
                 )
             ),
               child: contenido
     ),
  );
}

//###################################################################### Widget de cuerpo de etiquetas grandes ##################
  Widget etiquetaCuerpoGrande(BuildContext context, contenido){
    final  size = MediaQuery.of(context).size;
    return Container(
                      width: size.longestSide * .25,
                      height: size.longestSide * .041,                  
                      decoration: BoxDecoration(color: Colors.blue[300], borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50))),
                      child:  Padding(
                          padding:  EdgeInsets.fromLTRB(6, 4, 6, 6),
                          child: Container(
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)), boxShadow: [
                                BoxShadow(color: Colors.black45,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 2.0)
                              ]
                            ),
                            child: contenido
                        ),
                      )
                    );
  }
// #################################################################### Widget de cuerpo de etiquetas pequenio ##################
Widget etiquetaCuerpoCorto(BuildContext context,contenido,double ancho){
  final  size = MediaQuery.of(context).size;
    return Container(
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
                            child: contenido
                        ),
                      )
                    );
}

//##################################################################### Widget de contenido de las etiquetas ########
  Widget contenidoDeEtiquetasTexto(BuildContext context,Widget icono,String labeltext, exp){
    
    final size = MediaQuery.of(context).size;
    return ListTile(
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
     title: 
      TextFormField(
        initialValue: exp,
        decoration: InputDecoration(
         labelText: labeltext,
        ),
           onSaved: (value) => exp = value,
     //  validator: validacion,
      )
   );
  }

//##################################################################### Widget de contenido de las etiquetas numericas ########
  Widget contenidoDeEtiquetasNumeros(BuildContext context,Widget icono,String labeltext, exp ){
    final size = MediaQuery.of(context).size;
    return ListTile(
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
     title: 
      TextFormField(
        initialValue: exp,
        decoration: InputDecoration(
         labelText: labeltext,
        ),
           onSaved: (value) => exp = int.parse(value),
       //validator: validacion, 
      )
   );
  }
//##################################################################### Widgets de menu de opciones ###################  
menuOpt(){
  final size = MediaQuery.of(context).size;
  return  Padding(
    padding: const EdgeInsets.all(4.0),
    child: DropdownButton(
              style: TextStyle( fontSize: size.longestSide * .01),
               value: opcionSeleccionada,
                items: getOpcionesDropdown(),
                onChanged: (opt) {
                  setState(() {
                    opcionSeleccionada = opt;
                    expediente.genero = opcionSeleccionada;
                  });
                },
                  
              ),
    );
  
}
 List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];
    genero.forEach((tipo) {
      lista.add(DropdownMenuItem(
        child: Text(tipo),
        value: tipo,
      ));
    });
    return lista;
  }



   _textoDelBoton(){
    if (expediente.id == null){
      return 'Guardar';
    }else{
      return 'Renovar';
    }
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


}









 /*SingleChildScrollView(
      child: Container(
        color: Colors.green[300],
        width: size.width,
        height: size.height,
        margin: EdgeInsets.all(40.0),
        child: Form(
          key: keyForm,
          child: formUI(context),
        ),
      ),
    );*/



  
  // formUI(context) {
  //   final size = MediaQuery.of(context).size;
  //   return SingleChildScrollView(
  //      scrollDirection: Axis.horizontal,
  //         child: Column(   
  //       children: [
              
  //               Row(
  //                children: [
  //                  Padding(
  //                    padding: const EdgeInsets.only(right: 50),
  //                    child: Container(
  //                      width:300 ,height: 100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                             initialValue: expediente.nombre,
  //                               decoration: InputDecoration(
  //                                 labelText: 'Nombre:',
  //                             ),
  //                                 onSaved: (value) => expediente.nombre = value,
  //                                 validator: validacionStrings,
  //                           )
  //                       )
  //                 ),
  //                  ),             
  //                Padding(
  //                  padding: const EdgeInsets.only(right: 50),
  //                  child: Container(
  //                     width: 200 ,height:100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                               decoration: InputDecoration(
  //                                 labelText: 'Edad:',
  //                             ),
  //                                 //validator: validateNombre,
  //                           )
  //                     ),
  //                  ),
  //                ),
  //                Padding(
  //                  padding: const EdgeInsets.only(right: 50),
  //                  child: Container(
  //                     width: 200 ,height:100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                               decoration: InputDecoration(
  //                                 labelText: 'FN:',
  //                             ),
  //                                 //validator: validateNombre,
  //                           )
  //                     ),
  //                  ),
  //                ),
  //                Padding(
  //                   padding: const EdgeInsets.only(right: 50),
  //                  child: Container(
  //                     width: 200 ,height:100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                               decoration: InputDecoration(
  //                                 labelText: 'Genero:',
  //                             ),
  //                                 //validator: validateNombre,
  //                           )
  //                     ),
  //                  ),
  //                ),
  //                Padding(
  //                  padding: const EdgeInsets.only(right: 50),
  //                  child: Container(
  //                     width: 250 ,height:100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                              initialValue: expediente.telefono.toString(),
  //                               decoration: InputDecoration(
  //                                 labelText: 'Tel:',
  //                             ),
  //                                 onSaved: (value) => expediente.telefono = int.parse(value),
  //                                 validator: validacionTelefono,
  //                           )
  //                     ),
  //                  ),
  //                ),     
  //             ],
  //           ),
         
  //               Row(
  //                children: [
  //                  Padding(
  //                    padding: const EdgeInsets.only(right: 50),
  //                    child: Container(
  //                      width:400 ,height: 100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                               decoration: InputDecoration(
  //                                 labelText: 'Direccion',
  //                             ),
  //                                 //validator: validateNombre,
  //                           )
  //                       )
  //                    ),
  //                ),       
  //                  Padding(
  //                    padding: const EdgeInsets.only(right: 50),
  //                    child: Container(
  //                      width:400 ,height: 100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                              initialValue: expediente.correo,
  //                               decoration: InputDecoration(
  //                                 labelText: 'Correo Electronico',
  //                             ),
  //                                 onSaved: (value) => expediente.correo = value,
  //                                 validator: validarEmail,
  //                           )
  //                       )
  //                    ),
  //                ),       
  //                  Padding(
  //                    padding: const EdgeInsets.only(right: 50),
  //                    child: Container(
  //                      width:400 ,height: 100,
  //                       child: ListTile(
  //                         leading: Icon(Icons.person),
  //                          title: 
  //                           TextFormField(
  //                               decoration: InputDecoration(
  //                                 labelText: 'Escolaridad',
  //                             ),
  //                                 //validator: validateNombre,
  //                           )
  //                       )
  //                    ),
  //                ),       
  //             ]         
  //            ),

  //               // Row(
  //               //   children: [
  //               //     Center(
  //               //       child: Container(
  //               //         decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.deepPurple),
  //               //           width: 100,
  //               //           height: 50,
  //               //             child: FlatButton(
  //               //               onPressed: (_guardando) ? null : submit,
  //               //               child: Text('Guardar',style: TextStyle(color: Colors.black,fontSize: size.longestSide * .2),)           
  //               //           ) 
  //               //       ),
  //               //     ),
  //               //   ],
  //               // ),   
  //       ],
  //     ),
  //   );
  // }
  
 
//  void mostrarSnackbar(String mensaje){   ########### esto para usar el snackbar
  
   
//     final datosGeneralesPage = DatosGeneralesPage();

//      datosGeneralesPage.scaffoldKey.currentState.showSnackBar( SnackBar(content: Text(mensaje),duration: Duration(milliseconds: 1500),
//      )
//   );
    

//  }  ########### esto para usar el snackbar




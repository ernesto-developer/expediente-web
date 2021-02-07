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

        
        Container(
          color: Color.fromRGBO(62, 66, 107, 0.6,),
          width: size.width * .25,
          height: size.height,
          child: Column(
            children: [

             BounceInDown(
              duration: Duration(seconds: 2) ,
              child:  Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
               boxShadow: [
                   BoxShadow(color: Colors.black26,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 3.0)
                 ]
              ),
              
              width: size.width * .245,
              height: size.height * .25,
              child:   Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Container(
                        padding: EdgeInsets.all(6),
                       decoration: BoxDecoration(
                         
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
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(50))),
                                )
                              ],
                            )
                          ],
                        ),
                  ),
                ) 
              ),
            
             )
            ],
          ),
        ),

        Container(
          
          width: size.width * .75,
          height: size.height,
          color: Colors.transparent,
        )


      ],
  ),
      ]
    );
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
                              child: Text(_textoDelBoton(),style: TextStyle(color: Colors.white),)           
                          ) 
                      ),
                    ),
                  ],
                ),   
        ],
      ),
    );
  }
  
  _textoDelBoton(){
    if (expediente.id == null){
      return 'Guardar';
    }else{
      return 'Actualizar';
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
//  void mostrarSnackbar(String mensaje){   ########### esto para usar el snackbar
  
   
//     final datosGeneralesPage = DatosGeneralesPage();

//      datosGeneralesPage.scaffoldKey.currentState.showSnackBar( SnackBar(content: Text(mensaje),duration: Duration(milliseconds: 1500),
//      )
//   );
    

//  }  ########### esto para usar el snackbar
}

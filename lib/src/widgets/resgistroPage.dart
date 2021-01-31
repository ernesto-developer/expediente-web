import 'package:flutter/material.dart';

class RegistroPageDG extends StatefulWidget {
  @override
  _RegistroPageDGState createState() => _RegistroPageDGState();
}

class _RegistroPageDGState extends State<RegistroPageDG> {

  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController nombreCtrl = new TextEditingController();
  TextEditingController edadCtrl = new TextEditingController();
  TextEditingController fnCtrl = new TextEditingController();
  TextEditingController direccionCtrl = new TextEditingController();
  TextEditingController telCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController escolaridadCtrl = new TextEditingController();//se puede poner con opciones en vez de escrito
  TextEditingController ocupacionCtrl = new TextEditingController();
  TextEditingController generoCtrl = new TextEditingController();




  @override
  Widget build(BuildContext context) {
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
    // Size size = MediaQuery.of(context).size;
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
                              controller: nombreCtrl,
                                decoration: InputDecoration(
                                  labelText: 'Nombre:',
                              ),
                                  //validator: validateNombre,
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
                              controller: edadCtrl,
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
                              controller: fnCtrl,
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
                              controller: generoCtrl,
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
                      width: 200 ,height:100,
                        child: ListTile(
                          leading: Icon(Icons.person),
                           title: 
                            TextFormField(
                              controller: telCtrl,
                                decoration: InputDecoration(
                                  labelText: 'Tel:',
                              ),
                                  //validator: validateNombre,
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
                              controller: direccionCtrl,
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
                              controller:emailCtrl ,
                                decoration: InputDecoration(
                                  labelText: 'Correo Electronico',
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
                              controller: escolaridadCtrl ,
                                decoration: InputDecoration(
                                  labelText: 'Escolaridad',
                              ),
                                  //validator: validateNombre,
                            )
                        )
                     ),
                 ),       
              ]         
             )
           
        ],
      ),
    );
  }
}
// import 'package:aplicacion_web/src/pages/Datos_Generales.dart'; ########### esto para usar el snackbar

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';

import 'CamposDelFormulario.dart';

class RegistroPageDG extends StatefulWidget {
  
  _RegistroPageDGState createState() => _RegistroPageDGState();
}

class _RegistroPageDGState extends State<RegistroPageDG> {
 
  List genero = ['Masculino', 'Femenino'];
   
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  ExpedienteModel expediente = new ExpedienteModel();
   
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
                                       onPressed: (){ submit();},
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
      
                  CamposDelFormulario(ancho: .25, icono: Icon(Icons.person), campoformulario:  TextFormField(initialValue: expediente.nombre,decoration: InputDecoration(labelText: 'Nombre'),
                   onSaved: (value) => expediente.nombre = value, /* validator: validacion,*/ )),

                Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [CamposDelFormulario(ancho: .13, campoformulario: TextFormField(initialValue: expediente.edad.toString(),decoration: InputDecoration(labelText: 'Edad'),
                   onSaved: (value) => expediente.edad = int.parse(value) ),), CamposDelFormulario(ancho: .13,campoformulario:  TextFormField(initialValue: expediente.fn.toString(),decoration: InputDecoration(labelText: 'Fn'),
                   onSaved: (value) => expediente.fn = int.parse(value) ))],),
                                      
                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [CamposDelFormulario(ancho: .13, campoformulario:  menuOpt(),), CamposDelFormulario(ancho: .13,campoformulario: Padding(padding: const EdgeInsets.only(bottom: 3.0), 
                   child: TextFormField(initialValue: expediente.telefono.toString(),style: TextStyle(fontSize:  size.longestSide * .01),decoration: InputDecoration(labelText: 'Telefono'),
                     onSaved: (value) => expediente.telefono= int.parse(value), /* validator: validacion,*/ )))]),

                  CamposDelFormulario(ancho: .25, icono: Icon(Icons.alternate_email_sharp), campoformulario:  TextFormField(initialValue: expediente.correo,decoration: InputDecoration(labelText: 'Email'),
                   onSaved: (value) => expediente.correo = value, /* validator: validacion,*/ )),

                  CamposDelFormulario(ancho: .25, icono: Icon(Icons.school_sharp),campoformulario:  TextFormField(initialValue: expediente.escolaridad,decoration: InputDecoration(labelText: 'Escolaridad'),
                   onSaved: (value) => expediente.escolaridad = value, /* validator: validacion,*/ )),

                  CamposDelFormulario(ancho: .25, icono: Icon(Icons.work), campoformulario:  TextFormField(initialValue: expediente.ocupacion,decoration: InputDecoration(labelText: 'Ocupacion'),
                   onSaved: (value) => expediente.ocupacion = value, /* validator: validacion,*/ )),             
              ],
            ),
           ),  
               // ######################## Container derecho ###########################
            hojaDeTrabajo(context, 
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.personasQueComen.toString(),decoration: InputDecoration(labelText: 'No. de personas que comen en casa'),
                   onSaved: (value) => expediente.personasQueComen = int.parse(value), /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.menoresDeEdad.toString(),decoration: InputDecoration(labelText: 'Menores de edad en casa'),
                   onSaved: (value) => expediente.menoresDeEdad = int.parse(value), /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.mayoresDeEdad.toString(),decoration: InputDecoration(labelText: 'Mayores de edad en casa'),
                   onSaved: (value) => expediente.mayoresDeEdad = int.parse(value), /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.gastosDeComida.toString(),decoration: InputDecoration(labelText: 'Gastos de comida en \$'),
                   onSaved: (value) => expediente.gastosDeComida = int.parse(value), /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.ganaPor,decoration: InputDecoration(labelText: 'Gana por ....?'),
                   onSaved: (value) => expediente.ganaPor = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.cantidad.toString(),decoration: InputDecoration(labelText: 'Sueldo en \$'),
                   onSaved: (value) => expediente.cantidad = int.parse(value), /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.cocinaCon,decoration: InputDecoration(labelText: 'cocina con...?'),
                   onSaved: (value) => expediente.cocinaCon = value, /* validator: validacion,*/ )),
                   
                     CamposDelFormulario(ancho: .25, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.tomaAguaDe,decoration: InputDecoration(labelText: 'Toma agua de ...?'),
                   onSaved: (value) => expediente.tomaAguaDe = value, /* validator: validacion,*/ )),
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

//##################################################################### Widgets de menu de opciones ###################  
menuOpt(){
  final size = MediaQuery.of(context).size;
  return  Padding(
    padding: const EdgeInsets.all(4.0),
    child: DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.genero,items: getOpcionesDropdown(),onChanged: (opt) {setState(() {expediente.genero = opt;});},),); 
}
 List<DropdownMenuItem<String>> getOpcionesDropdown() {
    List<DropdownMenuItem<String>> lista = [];
    genero.forEach((tipo) {lista.add(DropdownMenuItem(child: Text(tipo),value: tipo,));});
    return lista;
  }
   
 //################################################################## Widgets del boton de guardar ################### 
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
  
   if (expediente.id == null){
     expedienteProvider.crearExpedinete(expediente);
  }else{
    expedienteProvider.editarExpedinete(expediente);
  }

  // setState(() { _guardando = false; }); ##### por si necesitamos activarlo otravez
 
  // mostrarSnackbar('Expediente Guardado'); ########### esto para usar el snackbar
  
 }


}
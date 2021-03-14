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
 
  List genero     = ['Masculino', 'Femenino'];
  List ganaPor    = ['Dia', 'Semana', 'Quincena', 'Mes', 'Año                                                  '];
  List cocinaCon  = ['Gas', 'Parrilla electrica', 'Leña                                                '];
  List tomaAguaDe = ['Embotellada','Llave', 'Clorada', 'Noria', 'Lluvia                                              '];
   
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  ExpedienteModel expediente = new ExpedienteModel();
   
  @override
  Widget build(BuildContext context) {
    
    final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente = expeData;
      print(expediente.fechaNacimiento);
      print(expediente.birthday);
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
                                          Text('Nombre: ${expediente.nombre}',style: TextStyle(fontSize: size.longestSide * .008)  ,),
                                          Divider(),
                                          Text(decisionDefecha(),style: TextStyle(fontSize: size.longestSide * .008)  ,),
                                          Divider(),
                                          Text(decisionDxMed(),style: TextStyle(fontSize: size.longestSide * .008)  ,),
                                          Divider(),
                                          Text(decisionDxNut(),style: TextStyle(fontSize: size.longestSide * .008)  ,)
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
                                       onPressed: (){setState(() {
                                         submit();
                                       });},
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
               camposDeSeleccion(context, 'Datos Generales','datosGeneralesPage'),
               camposDeSeleccion(context, 'Antropometrias','antropometriasPage'),
               camposDeSeleccion(context, 'Laboratorios','laboratoriosPage'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Generales','antecedentesPersonalesPage'),
               camposDeSeleccion(context, '''Antecedentes Patologicos Familiares y antecedentes Personales no Patologicos''','antecedentesFamiliaresYNoPatologicos'),
               camposDeSeleccion(context, 'Frecuencia alimentaria','frecuenciaAlimentariaPage'),
               camposDeSeleccion(context,'Raciones Habituales','racionesHabitualesPage'),
               camposDeSeleccion(context, 'Calculo de la ingesta habitual','calculoDeLaIngestaPage'),
               camposDeSeleccion(context, 'Plan nutricional','planNutricionalpage'),
               camposDeSeleccion(context, 'Nota de evolucion','notaDeEvolucion'),
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
      
                  CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.person), campoformulario:  TextFormField(initialValue: expediente.nombre,decoration: InputDecoration(labelText: 'Nombre'),
                   onSaved: (value) => expediente.nombre = value, /* validator: validacion,*/ )),

                Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  CamposDelFormulario(ancho: .13,alto: .041, campoformulario: TextFormField(initialValue: expediente.edad.toString(),decoration: InputDecoration(labelText: 'Edad'),
                   onSaved: (value) => expediente.edad = value ),), 
                   
                  CamposDelFormulario(ancho: .13,alto: .041,campoformulario:  TextFormField(initialValue: expediente.birthday,decoration: InputDecoration(labelText: 'Fecha de Na.'),
                   onSaved: (value) => expediente.birthday = value ))],),
                                      
                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [CamposDelFormulario(ancho: .13,alto: .041, campoformulario:  menuOptGenero(),), CamposDelFormulario(ancho: .13,alto: .041,campoformulario: Padding(padding: const EdgeInsets.only(bottom: 3.0), 
                   child: TextFormField(initialValue: expediente.telefono.toString(),style: TextStyle(fontSize:  size.longestSide * .01),decoration: InputDecoration(labelText: 'Telefono'),
                     onSaved: (value) => expediente.telefono= value, /* validator: validacion,*/ )))]),

                  CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.local_hospital), campoformulario:  TextFormField(initialValue: expediente.dxMedCorto,decoration: InputDecoration(labelText: 'Dx medico'),
                   onSaved: (value) => expediente.dxMedCorto = value, /* validator: validacion,*/ )),
                 
                  CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.alternate_email_sharp), campoformulario:  TextFormField(initialValue: expediente.correo,decoration: InputDecoration(labelText: 'Email'),
                   onSaved: (value) => expediente.correo = value, /* validator: validacion,*/ )),

                  CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.school_sharp),campoformulario:  TextFormField(initialValue: expediente.escolaridad,decoration: InputDecoration(labelText: 'Escolaridad'),
                   onSaved: (value) => expediente.escolaridad = value, /* validator: validacion,*/ )),

                  CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.work), campoformulario:  TextFormField(initialValue: expediente.ocupacion,decoration: InputDecoration(labelText: 'Ocupacion'),
                   onSaved: (value) => expediente.ocupacion = value, /* validator: validacion,*/ )),             
              ],
            ),
           ),  
               // ######################## Container derecho ###########################
            hojaDeTrabajo(context, 
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.personasQueComen.toString(),decoration: InputDecoration(labelText: 'No. de personas que comen en casa'),
                   onSaved: (value) => expediente.personasQueComen = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.menoresDeEdad.toString(),decoration: InputDecoration(labelText: 'Menores de edad en casa'),
                   onSaved: (value) => expediente.menoresDeEdad = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.mayoresDeEdad.toString(),decoration: InputDecoration(labelText: 'Mayores de edad en casa'),
                   onSaved: (value) => expediente.mayoresDeEdad = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.gastosDeComida.toString(),decoration: InputDecoration(labelText: 'Gastos de comida semanal \$'),
                   onSaved: (value) => expediente.gastosDeComida = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario: menuOptGanaPor() ),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario:  TextFormField(initialValue: expediente.cantidad.toString(),decoration: InputDecoration(labelText: 'Sueldo en \$'),
                   onSaved: (value) => expediente.cantidad = value, /* validator: validacion,*/ )),

                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario: menuOptCocinaCon()),
                   
                     CamposDelFormulario(ancho: .25,alto: .041, icono: Icon(Icons.api), campoformulario: menuOptTomaAguaDe()),
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
 Widget camposDeSeleccion(BuildContext context,String texto,String ruta){
  final  size = MediaQuery.of(context).size;
  return  Row(
    children: [  
      Container(
       color: Colors.transparent,
        width: size.longestSide * .245,
        height: size.longestSide * .03,
         child: ListTile(
          leading: Icon( Icons.accessibility , color: Colors.deepPurple ),
          //  trailing:  Checkbox( activeColor: Colors.deepPurple ,value: expediente.checkDatosGn, onChanged: (value) => setState((){expediente.checkDatosGn = value;} )) ,
            title: Text(texto,style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.wavy,  )),
            onTap: (){
              Navigator.pushReplacementNamed(context, ruta,arguments: expediente);
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

//##################################################################### Widgets de menu de opciones GENERO ###################  
menuOptGenero(){
  final size = MediaQuery.of(context).size;
  return  DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.genero,items: getOpcionesGenero(),onChanged: (opt) {setState(() {expediente.genero = opt;});},); 
}
 List<DropdownMenuItem<String>> getOpcionesGenero() {
    List<DropdownMenuItem<String>> lista = [];
    genero.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Género:',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
   
//##################################################################### Widgets de menu de opciones GanaPor ###################  
menuOptGanaPor(){
  final size = MediaQuery.of(context).size;
  return  Padding(
    padding: const EdgeInsets.all(4.0),
    child: DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.ganaPor,items: getOpcionesGanaPor(),onChanged: (opt) {setState(() {expediente.ganaPor = opt;});},),); 
}
 List<DropdownMenuItem<String>> getOpcionesGanaPor() {
    List<DropdownMenuItem<String>> lista = [];
      ganaPor.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Gana por:',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
   
//##################################################################### Widgets de menu de opciones CocinaCon ###################  
menuOptCocinaCon(){
  final size = MediaQuery.of(context).size;
  return  Padding(
    padding: const EdgeInsets.all(4.0),
    child: DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.cocinaCon,items: getOpcionesCocinaCon(),onChanged: (opt) {setState(() {expediente.cocinaCon = opt;});},),); 
}
 List<DropdownMenuItem<String>> getOpcionesCocinaCon() {
    List<DropdownMenuItem<String>> lista = [];
      cocinaCon.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Cocina con:',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
//##################################################################### Widgets de menu de opciones TomaAguaDe ###################  
menuOptTomaAguaDe(){
  final size = MediaQuery.of(context).size;
  return  Padding(
    padding: const EdgeInsets.all(4.0),
    child: DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.tomaAguaDe,items: getOpcionesTomaAgua(),onChanged: (opt) {setState(() {expediente.tomaAguaDe = opt;});},),); 
}
 List<DropdownMenuItem<String>> getOpcionesTomaAgua() {
    List<DropdownMenuItem<String>> lista = [];
      tomaAguaDe.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Toma agua de:',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
   
 //################################################################## Widgets del boton de guardar ################### 
_textoDelBoton(){
    if (expediente.id == null ){
      return 'Guardar';
    }else{
      
      return 'Renovar';
    }
  }
submit(){
   if (!keyForm.currentState.validate()) return;
   
   keyForm.currentState.save();
  
   if (expediente.id == null ){
     expedienteProvider.crearExpedinete(expediente);
  }else{
    expedienteProvider.editarExpedinete(expediente);
  }

   Navigator.pushNamed(context, 'escritorioPage');

  // setState(() { _guardando = false; }); ##### por si necesitamos activarlo otravez
 
  // mostrarSnackbar('Expediente Guardado'); ########### esto para usar el snackbar
  
 }

 decisionDefecha(){
   if(expediente.fecha == null){
     return 'Primera Cita: 00/00/0000';
   }else{return 'Primera Cita ${expediente.fecha[0]}';}
 }
 decisionDxMed(){
   if(expediente.dxMedCorto == null){
     return 'DxMe:';
   }else{return 'DxMe: ${expediente.dxMedCorto}';}
 }
 decisionDxNut(){
   if(expediente.dxNutCorto == null){
     return 'DxNu:';
   }else{return 'DxNu: ${expediente.dxNutCorto}';}
 }


}
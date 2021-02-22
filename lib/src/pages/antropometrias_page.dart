import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class AntropomatriasPage extends StatefulWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  @override
  _AntropomatriasPageState createState() => _AntropomatriasPageState();
}

class _AntropomatriasPageState extends State<AntropomatriasPage> {
      

  List<String> elementos = ['fecha','peso','estatura','imc','grasa','cintura','cadera','pecho','edadMuscular','musculo','edadCorporal','metabolismoBasal'];
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  // ############################################################ instancias de las clases #####################
  ExpedienteModel expediente = new ExpedienteModel();
  Estatura estaturaClase = new Estatura();
  Peso pesoClase = new Peso();
  Imc imcClase = new Imc();
  Grasa grasaClase = new Grasa();
  Cintura cinturaClase = new Cintura();
  Cadera caderaClase = new Cadera();
  Pecho pechoClase = new Pecho();
  EdadMuscular edadMuscularClase = new EdadMuscular();
  EdadCorporal edadCorporalClase = new EdadCorporal();
  Musculo musculoClase = new Musculo();
  MetabolismoBasal metabolismoBasalClase = new MetabolismoBasal();



  @override
  Widget build(BuildContext context) {
  
    
    final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente = expeData;
    }

     
    
    Size size = MediaQuery.of(context).size;
   
   
    return Scaffold(
      // key: scaffoldKey,  ########### esto para usar el snackbar
      appBar: AppBar(
        centerTitle: true,
        actions: [botonDeHome(context),],
        title: Text('Antropometrias')
      ),
    
     body:  Stack(
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
               camposDeSeleccion(context, 'Datos Generales','datosGeneralesPage'),
               camposDeSeleccion(context, 'Antropometrias','antropometriasPage'),
               camposDeSeleccion(context, 'Laboratorios','datosGeneralesPage'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Generales','datosGeneralesPage'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Familiares','datosGeneralesPage'),
               camposDeSeleccion(context, 'Antecedentes Personales no Patologicos','datosGeneralesPage'),
               camposDeSeleccion(context, 'Frecuencia alimentaria','datosGeneralesPage'),
               camposDeSeleccion(context,'Raciones Habituales','datosGeneralesPage'),
               camposDeSeleccion(context, 'Calculo de la ingesta habitual','datosGeneralesPage'),
               camposDeSeleccion(context, 'Plan nutricional','datosGeneralesPage'),
               camposDeSeleccion(context, 'Nota de evolucion','datosGeneralesPage'),
              ],
            ),
          ),
        ),
    //  ############################################################### Containers de escritorio #########################################################
        Form(
          key: keyForm,
          child:
           hojaDeTrabajo(context,
          DataTable( columnSpacing: 13,columns: datosColumna(),
          rows: filas()

          
          
          
          
          
          
          ),
          
          
          
          ),
        )
      ],
    ),
      ]
      )
    );
  
  
  }
 
 
 
 
 
 
 
 
  //###################################################################### Widget de hojas de trabajo ######################
Widget hojaDeTrabajo(BuildContext context,contenido){
  final size = MediaQuery.of(context).size;
  return  SlideInDown(
    duration: Duration(seconds: 1),
      child: Container( 
              width: size.longestSide  * .745,
              height: size.longestSide * .45,
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
              Navigator.pushReplacementNamed(context,ruta,arguments: expediente);
          }
        ),
      ),
    ],
  );
}

//##################################################################### Widgets de menu de dataTable ###################  

List<DataColumn> datosColumna(){
  List<DataColumn> lista = [];
  elementos.forEach((element) {lista.add(DataColumn(label: Text(element)));});
  return lista;
}

List<DataRow> filas(){
// intento de optimizar el codigo
// List<dynamic> datosDeExpedientes = [expediente.fecha,expediente.peso,expediente.imc];
// datosDeExpedientes.forEach((element) {if(element is double){if (element == null){element = [0.0];}else if(element.contains(0)){}else{element.add(0.0);}}else if(element is String){if (expediente.fecha == null){expediente.fecha = ['00-00-0000'];}else if (expediente.fecha.contains('00-00-0000')){}else{expediente.fecha.add('00-00-0000');}}});

        

  if (expediente.fecha == null){expediente.fecha = ['00-00-0000'];}else if (expediente.fecha.contains('00-00-0000')){}else{expediente.fecha.add('00-00-0000');}
 
   
 

  
  if (expediente.estaturaLista == null){
    expediente.estaturaLista = [estaturaClase];    
  }else if(expediente.estaturaLista[0].estatura == 0.0){
  } else {
    expediente.estaturaLista.add(estaturaClase);
  }

  if (expediente.pesoLista == null){
    expediente.pesoLista = [pesoClase];    
  }else if(expediente.pesoLista[0].peso == 0.0){
  } else {
    expediente.pesoLista.add(pesoClase);
  }

  if (expediente.imcLista == null){
    expediente.imcLista = [imcClase];    
  }else if(expediente.imcLista[0].imc == 0.0){
  } else {
    expediente.imcLista.add(imcClase);
  }

  if (expediente.grasaLista == null){
    expediente.grasaLista = [grasaClase];
  }else if (expediente.grasaLista[0].grasa == 0.0){    
  }else{
    expediente.grasaLista.add(grasaClase);
  }
  
  if (expediente.cinturaLista == null){
    expediente.cinturaLista = [cinturaClase];
  }else if (expediente.cinturaLista[0].cintura == 0.0){    
  }else{
    expediente.cinturaLista.add(cinturaClase);
  }
  
  if (expediente.caderaLista == null){
    expediente.caderaLista = [caderaClase];
  }else if (expediente.caderaLista[0].cadera == 0.0){    
  }else{
    expediente.caderaLista.add(caderaClase);
  }
  
  if (expediente.pechoLista == null){
    expediente.pechoLista = [pechoClase];
  }else if (expediente.pechoLista[0].pecho == 0.0){    
  }else{
    expediente.pechoLista.add(pechoClase);
  }
  
  if (expediente.edadMuscularLista == null){
    expediente.edadMuscularLista = [edadMuscularClase];
  }else if (expediente.edadMuscularLista[0].edadMuscular == 0.0){    
  }else{
    expediente.edadMuscularLista.add(edadMuscularClase);
  }
  
  if (expediente.musculoLista == null){
    expediente.musculoLista = [musculoClase];
  }else if (expediente.musculoLista[0].musculo == 0.0){    
  }else{
    expediente.musculoLista.add(musculoClase);
  }
 
  if (expediente.edadCorporalLista == null){
    expediente.edadCorporalLista = [edadCorporalClase];
  }else if (expediente.edadCorporalLista[0].edadCorporal == 0.0){    
  }else{
    expediente.edadCorporalLista.add(edadCorporalClase);
  }
  
  if (expediente.metabolismoBasalLista == null){
    expediente.metabolismoBasalLista = [metabolismoBasalClase];
  }else if (expediente.metabolismoBasalLista[0].metabolismoBasal == 0.0){    
  }else{
    expediente.metabolismoBasalLista.add(metabolismoBasalClase);
  }

  
  List<DataRow> lista = [];
  for (var i = 0; i < expediente.fecha.length; i++){
    lista.add(DataRow(cells: celdas(i),));
  }
  return lista;
}

       


List<DataCell> celdas(index){
  // if (expediente.peso == null){expediente.peso = [0.0];}
  // expediente.peso = [0.0];
//  =>  element[index] = double.parse(value),
// List<dynamic> datosDeExpedientes = [
//                                     expediente.pesoLista[0].peso,
//                                     // expediente.fecha,
//                                      expediente.estatura[0],
//                                     // expediente.grasa,
//                                     // expediente.imc,
//                                     // expediente.cintura,
//                                     // expediente.cadera,
//                                     // expediente.pecho,
//                                     // expediente.edadMuscular,
//                                     // expediente.musculo,
//                                     // expediente.edadCorporal,
//                                     // expediente.metabolismoBasal
//                                     ];
  
   List<DataCell> listaDeCeldas = [
    
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.fecha[index].toString(),
           onSaved: (value) => expediente.fecha[index] = value
      ),
      onPressed: (){},    
    )),
    
    
    
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.pesoLista[index].peso.toString(),
           onSaved: (value) => expediente.pesoLista[index].peso = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.estaturaLista[index].estatura.toString(),
           onSaved: (value) => expediente.estaturaLista[index].estatura = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.imcLista[index].imc.toString(),
           onSaved: (value) => expediente.imcLista[index].imc = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.grasaLista[index].grasa.toString(),
           onSaved: (value) =>  expediente.grasaLista[index].grasa = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.cinturaLista[index].cintura.toString(),
           onSaved: (value) =>  expediente.cinturaLista[index].cintura = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.caderaLista[index].cadera.toString(),
           onSaved: (value) =>  expediente.caderaLista[index].cadera = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.pechoLista[index].pecho.toString(),
           onSaved: (value) =>  expediente.pechoLista[index].pecho = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.edadMuscularLista[index].edadMuscular.toString(),
           onSaved: (value) =>  expediente.edadMuscularLista[index].edadMuscular = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.musculoLista[index].musculo.toString(),
           onSaved: (value) =>  expediente.musculoLista[index].musculo = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.edadCorporalLista[index].edadCorporal.toString(),
           onSaved: (value) =>  expediente.edadCorporalLista[index].edadCorporal = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
     DataCell(
     TextButton(
      child: TextFormField(initialValue: expediente.metabolismoBasalLista[index].metabolismoBasal.toString(),
           onSaved: (value) =>  expediente.metabolismoBasalLista[index].metabolismoBasal = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
  
  ];



   

   

   return listaDeCeldas;
  
}
  
  
  
//    List<DataCell> listaDeCeldas = [];
//    datosDeExpedientes.forEach((element) {listaDeCeldas.add(DataCell(
//      TextButton(
//       child: TextFormField(initialValue: element.toString(),
//            onSaved: (value) => element = double.parse(value)
//       ),
//       onPressed: (){},    
//     )));});
    
//    return listaDeCeldas;
// }


//##################################################################### Widgets de menu de opciones ###################  
// menuOpt(){
//   final size = MediaQuery.of(context).size;
//   return  Padding(
//     padding: const EdgeInsets.all(4.0),
//     child: DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.genero,items: getOpcionesDropdown(),onChanged: (opt) {setState(() {expediente.genero = opt;});},),); 
// }
//  List<DropdownMenuItem<String>> getOpcionesDropdown() {
//     List<DropdownMenuItem<String>> lista = [];
//     genero.forEach((tipo) {lista.add(DropdownMenuItem(child: Text(tipo),value: tipo,));});
//     return lista;
//   }
   

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





//  columns: [
//               DataColumn(label: Text('peso')),
//             ],
//             rows: [
//               DataRow(cells: [
//                  DataCell(
//                    TextButton(child: TextFormField(initialValue: expediente.peso.toString(),
//                     onSaved: (value) => expediente.peso.add(double.parse(value))
//                     ),
//                        onPressed: (){},         
//                    )
//                  )
//               ]
//             )
//           ],


// DataCell(TextButton(child: TextFormField(initialValue: expediente.peso.toString(),
//                       // onSaved: (value) => expediente.peso.add(double.parse(value)) ), onPressed: (){}))




// {if(element[index] is double){return element[index] = double.parse(value);}else if(element[index] is String){return element[index] = value;}}
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class Laboratoriospage extends StatefulWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  @override
  _LaboratoriospageState createState() => _LaboratoriospageState();
}

class _LaboratoriospageState extends State<Laboratoriospage> {
      

  List<String> elementos = ['Hb g/dl','Htc %','Plaquetas','Glucosa','TGL','Colesterol','Ac.Urico',];
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  Color colorPeso = Colors.transparent;

  // ############################################################ instancias de las clases #####################
  ExpedienteModel expediente = new ExpedienteModel();
 Hb  hbClase = new Hb();
 Htc htcClase =new Htc();
 Plaquetas plaquetasClase = new Plaquetas();
 Glucosa glucosaClase = new Glucosa();
 Tgl tglClase = new Tgl();
 Colesterol colesterolClase = new Colesterol();
 AcidoUrico acidoUricoClase = new AcidoUrico();

  int indice;

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
        title: Text('Laboratorios')
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
               camposDeSeleccion(context, 'Laboratorios','laboratoriosPage'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Generales','antecedentesPersonalesPage'),
               camposDeSeleccion(context, '''Antecedentes Patologicos Familiares y antecedentes Personales no Patologicos''','antecedentesFamiliaresYNoPatologicos'),
               camposDeSeleccion(context, 'Frecuencia alimentaria','frecuenciaAlimentariaPage'),
               camposDeSeleccion(context,'Raciones Habituales','racionesHabitualesPage'),
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

  
  if (expediente.hbLista == null){
    expediente.hbLista = [hbClase];
  }else if (expediente.hbLista[0].hb == 0.0){    
  }
  else if ( expediente.hbLista.length < expediente.fecha.length ){
    expediente.hbLista.add(hbClase);
  }
  
  if (expediente.htcLista == null){
    expediente.htcLista = [htcClase];
  }else if (expediente.htcLista[0].htc == 0.0){    
  }
  else if ( expediente.htcLista.length < expediente.fecha.length ){
    expediente.htcLista.add(htcClase);
  }
  
  if (expediente.plaquetasLista == null){
    expediente.plaquetasLista = [plaquetasClase];
  }else if (expediente.plaquetasLista[0].plaquetas == 0.0){    
  }
  else if ( expediente.plaquetasLista.length < expediente.fecha.length ){
    expediente.plaquetasLista.add(plaquetasClase);
  }
  
  if (expediente.glucosaLista == null){
    expediente.glucosaLista = [glucosaClase];
  }else if (expediente.glucosaLista[0].glucosa == 0.0){    
  }
  else if ( expediente.glucosaLista.length < expediente.fecha.length ){
    expediente.glucosaLista.add(glucosaClase);
  }
  
  if (expediente.tglLista == null){
    expediente.tglLista = [tglClase];
  }else if (expediente.tglLista[0].tgl == 0.0){    
  }
  else if ( expediente.tglLista.length < expediente.fecha.length ){
    expediente.tglLista.add(tglClase);
  }
 
  if (expediente.colesterolLista == null){
    expediente.colesterolLista = [colesterolClase];
  }else if (expediente.colesterolLista[0].colesterol == 0.0){    
  }
  else if ( expediente.colesterolLista.length < expediente.fecha.length ){
    expediente.colesterolLista.add(colesterolClase);
  }
  
  if (expediente.acidoUricoLista == null){
    expediente.acidoUricoLista = [acidoUricoClase];
  }else if (expediente.acidoUricoLista[0].acidoUrico == 0.0){    
  }
  else if ( expediente.acidoUricoLista.length < expediente.fecha.length ){
    expediente.acidoUricoLista.add(acidoUricoClase);
  }

  
  List<DataRow> lista = [];
  for (var i = 0; i < expediente.hbLista.length; i++){
    lista.add(DataRow(cells: celdas(i),));
    indice = i;
  }
// print(indice);
  return lista;
}

       


List<DataCell> celdas(int index){
  
   List<DataCell> listaDeCeldas = [
    
    
     DataCell(
     TextButton(
         onLongPress: () { menuDeColores(expediente.hbLista);},
       child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.hbLista[index].color)), initialValue: expediente.hbLista[index].hb.toString(),
           onSaved: (value) =>  expediente.hbLista[index].hb = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
       onLongPress: () { menuDeColores(expediente.htcLista);},  
     child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.htcLista[index].color)), initialValue: expediente.htcLista[index].htc.toString(),
           onSaved: (value) =>  expediente.htcLista[index].htc = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
         onLongPress: () { menuDeColores(expediente.plaquetasLista);},
      child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.plaquetasLista[index].color)), initialValue: expediente.plaquetasLista[index].plaquetas.toString(),
           onSaved: (value) =>  expediente.plaquetasLista[index].plaquetas = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
         onLongPress: () { menuDeColores(expediente.glucosaLista);},
       child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.glucosaLista[index].color)), initialValue: expediente.glucosaLista[index].glucosa.toString(),
           onSaved: (value) =>  expediente.glucosaLista[index].glucosa = double.parse(value)
      ),
      onPressed: (){},    
    )),
     DataCell(
     TextButton(
        onLongPress: () { menuDeColores(expediente.tglLista);},    
      child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.tglLista[index].color)), initialValue: expediente.tglLista[index].tgl.toString(),
           onSaved: (value) =>  expediente.tglLista[index].tgl = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
     DataCell(
     TextButton(
         onLongPress: () { menuDeColores(expediente.colesterolLista);}, 
      child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.colesterolLista[index].color)), initialValue: expediente.colesterolLista[index].colesterol.toString(),
           onSaved: (value) =>  expediente.colesterolLista[index].colesterol = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
     DataCell(
     TextButton(
        onLongPress: () { menuDeColores(expediente.acidoUricoLista);}, 
      child: TextFormField( decoration: InputDecoration(filled: true,fillColor:  decicionDeColor(expediente.acidoUricoLista[index].color)), initialValue: expediente.acidoUricoLista[index].acidoUrico.toString(),
           onSaved: (value) =>  expediente.acidoUricoLista[index].acidoUrico = double.parse(value)
      ),
      onPressed: (){},    
    )),
  
  
  ];
   return listaDeCeldas;
  
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
  
 }


  menuDeColores(antropo){
    final List listaDeColores = [

      RaisedButton(color: Colors.white, onPressed      : (){setState((){antropo[indice].color = 0;});},),
      RaisedButton(color: Colors.green[300], onPressed : (){setState((){antropo[indice].color = 1;});},),
      RaisedButton(color: Colors.yellow[300], onPressed: (){setState((){antropo[indice].color = 2;});},child: Icon(Icons.arrow_downward)),
      RaisedButton(color: Colors.yellow, onPressed     : (){setState((){antropo[indice].color = 3;});},child: Icon(Icons.arrow_upward)),
      RaisedButton(color: Colors.red[300], onPressed   : (){setState((){antropo[indice].color = 4;});},child: Icon(Icons.arrow_downward)),
      RaisedButton(color: Colors.red, onPressed        : (){setState((){antropo[indice].color = 5;});},child: Icon(Icons.arrow_upward)),

    ];
    return showMenu(
      // initialValue:  decicionDeColor(expediente.estaturaLista[index].color),
      context: context,
      position: RelativeRect.fill,
      items: listaDeColores.map((listaDeColores){
        return PopupMenuItem(
          child: listaDeColores,
          value: listaDeColores,
        );
      }).toList()
    );
  }

  decicionDeColor(antropo){

    if      (antropo == 0){return Colors.transparent;}
    else if (antropo == 1){return Colors.green[300];}
    else if (antropo == 2){return Colors.yellow[300];}
    else if (antropo == 3){return Colors.yellow;}
    else if (antropo == 4){return Colors.red[300];}
    else if (antropo == 5){return Colors.red;}
     
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






import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class FrecuenciaAlimentariaPage extends StatefulWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  @override
  _FrecuenciaAlimentariaPageState createState() => _FrecuenciaAlimentariaPageState();
}

class _FrecuenciaAlimentariaPageState extends State<FrecuenciaAlimentariaPage> {
      

  List<String> elementosBebidas = ['tipos de bebidas','dias'];
  List<String> bebidasNombres = [

      'Agua Simple',          
      'Agua de frutas',       
      'Jugo de fruta',        
      'Refresco',             
      'Alcoholicas',          
      'Leche',                
      'Yogurt',               
      'Te',                   
      'cafe',                 
      'Concentrado en polvo', 
  
  
  ];
  
  final expedienteProvider = new ExpedientesProvider();
  final keyForm            = new GlobalKey<FormState>();
  
  Color colorPeso = Colors.transparent;

  // ############################################################ instancias de las clases #####################
  ExpedienteModel expediente = new ExpedienteModel();
 
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
        title: Text('Frecuencia Alimentaria')
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
               camposDeSeleccion(context, 'Laboratorios','FrecuenciaAlimentariaPage'),
               camposDeSeleccion(context, 'Antecedentes Patologicos Generales','antecedentesPersonalesPage'),
               camposDeSeleccion(context, '''Antecedentes Patologicos Familiares y antecedentes Personales no Patologicos''','antecedentesFamiliaresYNoPatologicos'),
               camposDeSeleccion(context, 'Frecuencia alimentaria','frecuenciaAlimentariaPage'),
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
          Container(
          
          width: size.width * .75,
          height: size.height,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  hojaDeTrabajo(context, "Bebidas",DataTable(dataRowHeight: 20,columnSpacing: 100,columns: datosColumna(elementosBebidas),rows: dataRowBebidas(),)),
                  hojaDeTrabajo(context, "Pan Y Tortilla",Text("hola mundo")),
                  hojaDeTrabajo(context, "De origen animal",Text("hola mundo"))
                 ]
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  hojaDeTrabajo(context, "Grasas",Text("hola mundo")),
                  hojaDeTrabajo(context, "Azucar",Text("hola mundo")),
                  hojaDeTrabajo(context, "Antojos",Text("hola mundo")),
                 ]
                ),
            ],
          )
          )
        )
        
      ],
    ),
      ]
      )
    );
  }
  
  
  //###################################################################### Widget de hojas de trabajo ######################
Widget hojaDeTrabajo(BuildContext context,titulo,contenido){
  final size = MediaQuery.of(context).size;
  return  SlideInDown(
    duration: Duration(seconds: 1),
      child: Container( 
              width: size.longestSide  * .24,
              height: size.longestSide * .22,
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
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   
                   children: [
                     Text(titulo,style: TextStyle(fontSize: size.longestSide * 0.015),),
                     Divider(),
                     contenido
              
                  ],
                   
              ),
               )
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

List<DataColumn> datosColumna(alimento){
  List<DataColumn> lista = [];
  alimento.forEach((element) {lista.add(DataColumn(label: Text(element)));});
  return lista;
}

dataRowBebidas(){

  List<DataRow> lista = [

    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[0],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.aguaSimple,onSaved        : (value) => expediente.aguaSimple = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[1],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.aguaDeFrutas,onSaved      : (value) => expediente.aguaDeFrutas = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[2],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.jugoDeFrutas,onSaved      : (value) => expediente.jugoDeFrutas = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[3],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.refresco,onSaved          : (value) => expediente.refresco = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[4],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.alcoholicas,onSaved       : (value) => expediente.alcoholicas = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[5],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche,onSaved             : (value) => expediente.leche = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[6],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.yogurt,onSaved            : (value) => expediente.yogurt = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[7],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.te,onSaved                : (value) => expediente.te = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[8],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cafe,onSaved              : (value) => expediente.cafe = value)),]),
    DataRow(cells: [  DataCell(TextButton(child: Text(bebidasNombres[9],textAlign: TextAlign.center,), onPressed: (){})), DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.concentradoEnPolvo,onSaved: (value) => expediente.concentradoEnPolvo = value)),]),

  ];
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








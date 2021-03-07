import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class RacionesHabitualesPage extends StatefulWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  @override
  _RacionesHabitualesPageState createState() => _RacionesHabitualesPageState();
}

class _RacionesHabitualesPageState extends State<RacionesHabitualesPage> {
      

  List<String> elementos = ['','Carne','Leche','Leguminosa','Cereal','Verdura','Fruta','Azucar','Grasa'];
  List<String> comidas = [
    'Desayuno',
   'Colacion',
    'Comida',
    'Colacion',
    'Cena',
    'Colacion'
  ];



  Carne1 carneClase1 = new Carne1();
  Carne2 carneClase2 = new Carne2();
  Carne3 carneClase3 = new Carne3();
  Carne4 carneClase4 = new Carne4();
  Leche1 lecheClase1 = new Leche1();
  Leche2 lecheClase2 = new Leche2();
  Leche3 lecheClase3 = new Leche3();
  Leche4 lecheClase4 = new Leche4();
  Leguminosa1 leguminosaClase1 = new Leguminosa1();
  Leguminosa2 leguminosaClase2 = new Leguminosa2();
  Leguminosa3 leguminosaClase3 = new Leguminosa3();
  Leguminosa4 leguminosaClase4 = new Leguminosa4();
  Cereal1 ceralClase1 = new Cereal1();
  Cereal2 ceralClase2 = new Cereal2();
  Cereal3 ceralClase3 = new Cereal3();
  Cereal4 ceralClase4 = new Cereal4();
  Verdura1 verduraClase1 =new Verdura1();
  Verdura2 verduraClase2 =new Verdura2();
  Verdura3 verduraClase3 =new Verdura3();
  Verdura4 verduraClase4 =new Verdura4();
  Fruta1 frutaClase1 =new Fruta1();
  Fruta2 frutaClase2 =new Fruta2();
  Fruta3 frutaClase3 =new Fruta3();
  Fruta4 frutaClase4 =new Fruta4();
  Azucar1 azucarClase1 = new Azucar1();
  Azucar2 azucarClase2 = new Azucar2();
  Azucar3 azucarClase3 = new Azucar3();
  Azucar4 azucarClase4 = new Azucar4();
  Grasa1 grasaClase1 = new Grasa1();
  Grasa2 grasaClase2 = new Grasa2();
  Grasa3 grasaClase3 = new Grasa3();
  Grasa4 grasaClase4 = new Grasa4();








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
        title: Text('Raciones Habituales')
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
               camposDeSeleccion(context, 'Laboratorios','RacionesHabitualesPage'),
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
                  hojaDeTrabajo(context,DataTable( dataTextStyle: TextStyle(fontSize: 5),dataRowHeight: 21,headingRowHeight: 25,columns: datosColumna(elementos), rows: dataRowComidas1())),
                 
                 ]
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   hojaDeTrabajo(context,DataTable( dataTextStyle: TextStyle(fontSize: 5),dataRowHeight: 21,headingRowHeight: 25,columns: datosColumna(elementos), rows: dataRowComidas2())),
                 
                 ]
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  hojaDeTrabajo(context,DataTable( dataTextStyle: TextStyle(fontSize: 5),dataRowHeight: 21,headingRowHeight: 25,columns: datosColumna(elementos), rows: dataRowComidas3())),
                 
                 ]
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   hojaDeTrabajo(context,DataTable( dataTextStyle: TextStyle(fontSize: 5),dataRowHeight: 21,headingRowHeight: 25,columns: datosColumna(elementos), rows: dataRowComidas4())),
                 
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
Widget hojaDeTrabajo(BuildContext context,contenido){
  final size = MediaQuery.of(context).size;
  return  SlideInDown(
    duration: Duration(seconds: 1),
      child: Container( 
              width: size.longestSide  * .70,
              height: size.longestSide * .105,
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

List<DataColumn> datosColumna(alimento){
  List<DataColumn> lista = [];
  alimento.forEach((element) {lista.add(DataColumn(label: Text(element)));});
  return lista;
}

dataRowComidas1(){

  if (expediente.carne1 == null){expediente.carne1 = [carneClase1];}else if (expediente.carne1[0].desayunoHab == '' ){}
  if (expediente.carne2 == null){expediente.carne2 = [carneClase2];}else if (expediente.carne2[0].desayunoHab == '' ){}
  if (expediente.carne3 == null){expediente.carne3 = [carneClase3];}else if (expediente.carne3[0].desayunoHab == '' ){}
  if (expediente.carne4 == null){expediente.carne4 = [carneClase4];}else if (expediente.carne4[0].desayunoHab == '' ){}
  if (expediente.leche1 == null){expediente.leche1 = [lecheClase1];}else if (expediente.leche1[0].desayunoHab == '' ){}
  if (expediente.leche2 == null){expediente.leche2 = [lecheClase2];}else if (expediente.leche2[0].desayunoHab == '' ){}
  if (expediente.leche3 == null){expediente.leche3 = [lecheClase3];}else if (expediente.leche3[0].desayunoHab == '' ){}
  if (expediente.leche4 == null){expediente.leche4 = [lecheClase4];}else if (expediente.leche4[0].desayunoHab == '' ){}
  if (expediente.leguminosa1 == null){expediente.leguminosa1 = [leguminosaClase1];}else if (expediente.leguminosa1[0].desayunoHab == '' ){}
  if (expediente.leguminosa2 == null){expediente.leguminosa2 = [leguminosaClase2];}else if (expediente.leguminosa2[0].desayunoHab == '' ){}
  if (expediente.leguminosa3 == null){expediente.leguminosa3 = [leguminosaClase3];}else if (expediente.leguminosa3[0].desayunoHab == '' ){}
  if (expediente.leguminosa4 == null){expediente.leguminosa4 = [leguminosaClase4];}else if (expediente.leguminosa4[0].desayunoHab == '' ){}
  if (expediente.cereal1 == null){expediente.cereal1 = [ceralClase1];}else if (expediente.cereal1[0].desayunoHab == ''){}
  if (expediente.cereal2 == null){expediente.cereal2 = [ceralClase2];}else if (expediente.cereal2[0].desayunoHab == ''){}
  if (expediente.cereal3 == null){expediente.cereal3 = [ceralClase3];}else if (expediente.cereal3[0].desayunoHab == ''){}
  if (expediente.cereal4 == null){expediente.cereal4 = [ceralClase4];}else if (expediente.cereal4[0].desayunoHab == ''){}
  if (expediente.verdura1 == null){expediente.verdura1 = [verduraClase1];}else if (expediente.verdura1[0].desayunoHab == '' ){}
  if (expediente.verdura2 == null){expediente.verdura2 = [verduraClase2];}else if (expediente.verdura2[0].desayunoHab == '' ){}
  if (expediente.verdura3 == null){expediente.verdura3 = [verduraClase3];}else if (expediente.verdura3[0].desayunoHab == '' ){}
  if (expediente.verdura4 == null){expediente.verdura4 = [verduraClase4];}else if (expediente.verdura4[0].desayunoHab == '' ){}
  if (expediente.fruta1 == null){expediente.fruta1 = [frutaClase1];}else if (expediente.fruta1[0].desayunoHab == '' ){}
  if (expediente.fruta2 == null){expediente.fruta2 = [frutaClase2];}else if (expediente.fruta2[0].desayunoHab == '' ){}
  if (expediente.fruta3 == null){expediente.fruta3 = [frutaClase3];}else if (expediente.fruta3[0].desayunoHab == '' ){}
  if (expediente.fruta4 == null){expediente.fruta4 = [frutaClase4];}else if (expediente.fruta4[0].desayunoHab == '' ){}
  if (expediente.azucar1 == null){expediente.azucar1 = [azucarClase1];}else if (expediente.azucar1[0].desayunoHab == '' ){}
  if (expediente.azucar2 == null){expediente.azucar2 = [azucarClase2];}else if (expediente.azucar2[0].desayunoHab == '' ){}
  if (expediente.azucar3 == null){expediente.azucar3 = [azucarClase3];}else if (expediente.azucar3[0].desayunoHab == '' ){}
  if (expediente.azucar4 == null){expediente.azucar4 = [azucarClase4];}else if (expediente.azucar4[0].desayunoHab == '' ){}
  if (expediente.grasa1 == null){expediente.grasa1 = [grasaClase1];}else if (expediente.grasa1[0].desayunoHab == '' ){}
  if (expediente.grasa2 == null){expediente.grasa2 = [grasaClase2];}else if (expediente.grasa2[0].desayunoHab == '' ){}
  if (expediente.grasa3 == null){expediente.grasa3 = [grasaClase3];}else if (expediente.grasa3[0].desayunoHab == '' ){}
  if (expediente.grasa4 == null){expediente.grasa4 = [grasaClase4];}else if (expediente.grasa4[0].desayunoHab == '' ){}
  

  List<DataRow> lista = [

    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[0],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .desayunoHab,onSaved: (value) => expediente.carne1[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .desayunoHab,onSaved: (value) => expediente.leche1[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].desayunoHab,onSaved: (value) => expediente.leguminosa1[0].desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .desayunoHab,onSaved: (value) => expediente.cereal1[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .desayunoHab,onSaved: (value) => expediente.verdura1[0]   .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .desayunoHab,onSaved: (value) => expediente.fruta1[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .desayunoHab,onSaved: (value) => expediente.azucar1[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .desayunoHab,onSaved: (value) => expediente.grasa1[0]     .desayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[1],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .colDesayunoHab,onSaved: (value) => expediente.carne1[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .colDesayunoHab,onSaved: (value) => expediente.leche1[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].colDesayunoHab,onSaved: (value) => expediente.leguminosa1[0].colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .colDesayunoHab,onSaved: (value) => expediente.cereal1[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .colDesayunoHab,onSaved: (value) => expediente.verdura1[0]   .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .colDesayunoHab,onSaved: (value) => expediente.fruta1[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .colDesayunoHab,onSaved: (value) => expediente.azucar1[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .colDesayunoHab,onSaved: (value) => expediente.grasa1[0]     .colDesayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[2],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .comidaHab,onSaved: (value) => expediente.carne1[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .comidaHab,onSaved: (value) => expediente.leche1[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].comidaHab,onSaved: (value) => expediente.leguminosa1[0].comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .comidaHab,onSaved: (value) => expediente.cereal1[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .comidaHab,onSaved: (value) => expediente.verdura1[0]   .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .comidaHab,onSaved: (value) => expediente.fruta1[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .comidaHab,onSaved: (value) => expediente.azucar1[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .comidaHab,onSaved: (value) => expediente.grasa1[0]     .comidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[3],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .colComidaHab,onSaved: (value) => expediente.carne1[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .colComidaHab,onSaved: (value) => expediente.leche1[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].colComidaHab,onSaved: (value) => expediente.leguminosa1[0].colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .colComidaHab,onSaved: (value) => expediente.cereal1[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .colComidaHab,onSaved: (value) => expediente.verdura1[0]   .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .colComidaHab,onSaved: (value) => expediente.fruta1[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .colComidaHab,onSaved: (value) => expediente.azucar1[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .colComidaHab,onSaved: (value) => expediente.grasa1[0]     .colComidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[4],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .cenaHab,onSaved: (value) => expediente.carne1[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .cenaHab,onSaved: (value) => expediente.leche1[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].cenaHab,onSaved: (value) => expediente.leguminosa1[0].cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .cenaHab,onSaved: (value) => expediente.cereal1[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .cenaHab,onSaved: (value) => expediente.verdura1[0]   .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .cenaHab,onSaved: (value) => expediente.fruta1[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .cenaHab,onSaved: (value) => expediente.azucar1[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .cenaHab,onSaved: (value) => expediente.grasa1[0]     .cenaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[5],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne1[0]     .colCenaHab,onSaved: (value) => expediente.carne1[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche1[0]     .colCenaHab,onSaved: (value) => expediente.leche1[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa1[0].colCenaHab,onSaved: (value) => expediente.leguminosa1[0].colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal1[0]    .colCenaHab,onSaved: (value) => expediente.cereal1[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura1[0]   .colCenaHab,onSaved: (value) => expediente.verdura1[0]   .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta1[0]     .colCenaHab,onSaved: (value) => expediente.fruta1[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar1[0]    .colCenaHab,onSaved: (value) => expediente.azucar1[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa1[0]     .colCenaHab,onSaved: (value) => expediente.grasa1[0]     .colCenaHab = value)),
       
    ]),
  

  ];
  return lista;
}
dataRowComidas2(){


  List<DataRow> lista = [

    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[0],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .desayunoHab,onSaved: (value) => expediente.carne2[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .desayunoHab,onSaved: (value) => expediente.leche2[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].desayunoHab,onSaved: (value) => expediente.leguminosa2[0].desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .desayunoHab,onSaved: (value) => expediente.cereal2[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .desayunoHab,onSaved: (value) => expediente.verdura2[0]   .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .desayunoHab,onSaved: (value) => expediente.fruta2[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .desayunoHab,onSaved: (value) => expediente.azucar2[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .desayunoHab,onSaved: (value) => expediente.grasa2[0]     .desayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[1],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .colDesayunoHab,onSaved: (value) => expediente.carne2[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .colDesayunoHab,onSaved: (value) => expediente.leche2[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].colDesayunoHab,onSaved: (value) => expediente.leguminosa2[0].colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .colDesayunoHab,onSaved: (value) => expediente.cereal2[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .colDesayunoHab,onSaved: (value) => expediente.verdura2[0]   .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .colDesayunoHab,onSaved: (value) => expediente.fruta2[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .colDesayunoHab,onSaved: (value) => expediente.azucar2[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .colDesayunoHab,onSaved: (value) => expediente.grasa2[0]     .colDesayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[2],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .comidaHab,onSaved: (value) => expediente.carne2[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .comidaHab,onSaved: (value) => expediente.leche2[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].comidaHab,onSaved: (value) => expediente.leguminosa2[0].comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .comidaHab,onSaved: (value) => expediente.cereal2[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .comidaHab,onSaved: (value) => expediente.verdura2[0]   .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .comidaHab,onSaved: (value) => expediente.fruta2[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .comidaHab,onSaved: (value) => expediente.azucar2[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .comidaHab,onSaved: (value) => expediente.grasa2[0]     .comidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[3],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .colComidaHab,onSaved: (value) => expediente.carne2[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .colComidaHab,onSaved: (value) => expediente.leche2[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].colComidaHab,onSaved: (value) => expediente.leguminosa2[0].colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .colComidaHab,onSaved: (value) => expediente.cereal2[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .colComidaHab,onSaved: (value) => expediente.verdura2[0]   .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .colComidaHab,onSaved: (value) => expediente.fruta2[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .colComidaHab,onSaved: (value) => expediente.azucar2[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .colComidaHab,onSaved: (value) => expediente.grasa2[0]     .colComidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[4],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .cenaHab,onSaved: (value) => expediente.carne2[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .cenaHab,onSaved: (value) => expediente.leche2[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].cenaHab,onSaved: (value) => expediente.leguminosa2[0].cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .cenaHab,onSaved: (value) => expediente.cereal2[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .cenaHab,onSaved: (value) => expediente.verdura2[0]   .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .cenaHab,onSaved: (value) => expediente.fruta2[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .cenaHab,onSaved: (value) => expediente.azucar2[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .cenaHab,onSaved: (value) => expediente.grasa2[0]     .cenaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[5],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne2[0]     .colCenaHab,onSaved: (value) => expediente.carne2[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche2[0]     .colCenaHab,onSaved: (value) => expediente.leche2[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa2[0].colCenaHab,onSaved: (value) => expediente.leguminosa2[0].colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal2[0]    .colCenaHab,onSaved: (value) => expediente.cereal2[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura2[0]   .colCenaHab,onSaved: (value) => expediente.verdura2[0]   .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta2[0]     .colCenaHab,onSaved: (value) => expediente.fruta2[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar2[0]    .colCenaHab,onSaved: (value) => expediente.azucar2[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa2[0]     .colCenaHab,onSaved: (value) => expediente.grasa2[0]     .colCenaHab = value)),
       
    ]),
  

  ];
  return lista;
}
dataRowComidas3(){

 

  List<DataRow> lista = [

    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[0],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .desayunoHab,onSaved: (value) => expediente.carne3[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .desayunoHab,onSaved: (value) => expediente.leche3[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].desayunoHab,onSaved: (value) => expediente.leguminosa3[0].desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .desayunoHab,onSaved: (value) => expediente.cereal3[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .desayunoHab,onSaved: (value) => expediente.verdura3[0]   .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .desayunoHab,onSaved: (value) => expediente.fruta3[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .desayunoHab,onSaved: (value) => expediente.azucar3[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .desayunoHab,onSaved: (value) => expediente.grasa3[0]     .desayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[1],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .colDesayunoHab,onSaved: (value) => expediente.leche3[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .colDesayunoHab,onSaved: (value) => expediente.carne3[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].colDesayunoHab,onSaved: (value) => expediente.leguminosa3[0].colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .colDesayunoHab,onSaved: (value) => expediente.cereal3[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .colDesayunoHab,onSaved: (value) => expediente.verdura3[0]   .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .colDesayunoHab,onSaved: (value) => expediente.fruta3[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .colDesayunoHab,onSaved: (value) => expediente.azucar3[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .colDesayunoHab,onSaved: (value) => expediente.grasa3[0]     .colDesayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[2],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .comidaHab,onSaved: (value) => expediente.carne3[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .comidaHab,onSaved: (value) => expediente.leche3[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].comidaHab,onSaved: (value) => expediente.leguminosa3[0].comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .comidaHab,onSaved: (value) => expediente.cereal3[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .comidaHab,onSaved: (value) => expediente.verdura3[0]   .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .comidaHab,onSaved: (value) => expediente.fruta3[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .comidaHab,onSaved: (value) => expediente.azucar3[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .comidaHab,onSaved: (value) => expediente.grasa3[0]     .comidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[3],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .colComidaHab,onSaved: (value) => expediente.carne3[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .colComidaHab,onSaved: (value) => expediente.leche3[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].colComidaHab,onSaved: (value) => expediente.leguminosa3[0].colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .colComidaHab,onSaved: (value) => expediente.cereal3[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .colComidaHab,onSaved: (value) => expediente.verdura3[0]   .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .colComidaHab,onSaved: (value) => expediente.fruta3[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .colComidaHab,onSaved: (value) => expediente.azucar3[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .colComidaHab,onSaved: (value) => expediente.grasa3[0]     .colComidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[4],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .cenaHab,onSaved: (value) => expediente.carne3[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .cenaHab,onSaved: (value) => expediente.leche3[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].cenaHab,onSaved: (value) => expediente.leguminosa3[0].cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .cenaHab,onSaved: (value) => expediente.cereal3[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .cenaHab,onSaved: (value) => expediente.verdura3[0]   .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .cenaHab,onSaved: (value) => expediente.fruta3[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .cenaHab,onSaved: (value) => expediente.azucar3[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .cenaHab,onSaved: (value) => expediente.grasa3[0]     .cenaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[5],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne3[0]     .colCenaHab,onSaved: (value) => expediente.carne3[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche3[0]     .colCenaHab,onSaved: (value) => expediente.leche3[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa3[0].colCenaHab,onSaved: (value) => expediente.leguminosa3[0].colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal3[0]    .colCenaHab,onSaved: (value) => expediente.cereal3[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura3[0]   .colCenaHab,onSaved: (value) => expediente.verdura3[0]   .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta3[0]     .colCenaHab,onSaved: (value) => expediente.fruta3[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar3[0]    .colCenaHab,onSaved: (value) => expediente.azucar3[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa3[0]     .colCenaHab,onSaved: (value) => expediente.grasa3[0]     .colCenaHab = value)),
       
    ]),
  

  ];
  return lista;
}
dataRowComidas4(){

  

  List<DataRow> lista = [

    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[0],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .desayunoHab,onSaved: (value) => expediente.carne4[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .desayunoHab,onSaved: (value) => expediente.leche4[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].desayunoHab,onSaved: (value) => expediente.leguminosa4[0].desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .desayunoHab,onSaved: (value) => expediente.cereal4[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .desayunoHab,onSaved: (value) => expediente.verdura4[0]   .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .desayunoHab,onSaved: (value) => expediente.fruta4[0]     .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .desayunoHab,onSaved: (value) => expediente.azucar4[0]    .desayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .desayunoHab,onSaved: (value) => expediente.grasa4[0]     .desayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[1],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .colDesayunoHab,onSaved: (value) => expediente.carne4[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .colDesayunoHab,onSaved: (value) => expediente.leche4[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].colDesayunoHab,onSaved: (value) => expediente.leguminosa4[0].colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .colDesayunoHab,onSaved: (value) => expediente.cereal4[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .colDesayunoHab,onSaved: (value) => expediente.verdura4[0]   .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .colDesayunoHab,onSaved: (value) => expediente.fruta4[0]     .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .colDesayunoHab,onSaved: (value) => expediente.azucar4[0]    .colDesayunoHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .colDesayunoHab,onSaved: (value) => expediente.grasa4[0]     .colDesayunoHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[2],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .comidaHab,onSaved: (value) => expediente.carne4[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .comidaHab,onSaved: (value) => expediente.leche4[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].comidaHab,onSaved: (value) => expediente.leguminosa4[0].comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .comidaHab,onSaved: (value) => expediente.cereal4[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .comidaHab,onSaved: (value) => expediente.verdura4[0]   .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .comidaHab,onSaved: (value) => expediente.fruta4[0]     .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .comidaHab,onSaved: (value) => expediente.azucar4[0]    .comidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .comidaHab,onSaved: (value) => expediente.grasa4[0]     .comidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[3],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .colComidaHab,onSaved: (value) => expediente.carne4[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .colComidaHab,onSaved: (value) => expediente.leche4[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].colComidaHab,onSaved: (value) => expediente.leguminosa4[0].colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .colComidaHab,onSaved: (value) => expediente.cereal4[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .colComidaHab,onSaved: (value) => expediente.verdura4[0]   .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .colComidaHab,onSaved: (value) => expediente.fruta4[0]     .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .colComidaHab,onSaved: (value) => expediente.azucar4[0]    .colComidaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .colComidaHab,onSaved: (value) => expediente.grasa4[0]     .colComidaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[4],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .cenaHab,onSaved: (value) => expediente.carne4[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .cenaHab,onSaved: (value) => expediente.leche4[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].cenaHab,onSaved: (value) => expediente.leguminosa4[0].cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .cenaHab,onSaved: (value) => expediente.cereal4[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .cenaHab,onSaved: (value) => expediente.verdura4[0]   .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .cenaHab,onSaved: (value) => expediente.fruta4[0]     .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .cenaHab,onSaved: (value) => expediente.azucar4[0]    .cenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .cenaHab,onSaved: (value) => expediente.grasa4[0]     .cenaHab = value)),
       
    ]),
    DataRow(cells: [ 
       DataCell(TextButton(child: Text(comidas[5],textAlign: TextAlign.center,), onPressed: (){})), 
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.carne4[0]     .colCenaHab,onSaved: (value) => expediente.carne4[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leche4[0]     .colCenaHab,onSaved: (value) => expediente.leche4[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.leguminosa4[0].colCenaHab,onSaved: (value) => expediente.leguminosa4[0].colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.cereal4[0]    .colCenaHab,onSaved: (value) => expediente.cereal4[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.verdura4[0]   .colCenaHab,onSaved: (value) => expediente.verdura4[0]   .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.fruta4[0]     .colCenaHab,onSaved: (value) => expediente.fruta4[0]     .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.azucar4[0]    .colCenaHab,onSaved: (value) => expediente.azucar4[0]    .colCenaHab = value)),
       DataCell(TextFormField(textAlign: TextAlign.center,textAlignVertical: TextAlignVertical.center,initialValue: expediente.grasa4[0]     .colCenaHab,onSaved: (value) => expediente.grasa4[0]     .colCenaHab = value)),
       
    ]),
  

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






import 'package:aplicacion_web/src/widgets/CamposDelFormulario.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class AntecedentesPersonalesPage extends StatefulWidget {
    // final scaffoldKey  = new GlobalKey<ScaffoldState>(); ########### esto para usar el snackbar

  @override
  _AntecedentesPersonalesPageState createState() => _AntecedentesPersonalesPageState();
}

class _AntecedentesPersonalesPageState extends State<AntecedentesPersonalesPage> {
      

  List<String> elementos = ['Hb g/dl','Htc %','Plaquetas','Glucosa','TGL','Colesterol','Ac.Urico',];
  List tipoDeDentadura = ['Normal','Implantes fijos               ','Sobre Puestos', 'Ninguna',];
  List molestias = ['no','si'];
  List vomito = ['no','si'];
  List nauseas = ['no','si'];
  List agruras = ['no','si'];
  List molestiaAlEvacuar = ['no','si'];
  
  
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
        title: Text('Antecedentes Patologicos Generales')
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
      
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                  CamposDelFormulario(ancho: .17,alto: .047, campoformulario: TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.cirugias,decoration: InputDecoration(labelText: 'Cirugias:'),
                   onSaved: (value) => expediente.cirugias = value ),), 
                   
                  CamposDelFormulario(ancho: .17,alto: .047,campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3, initialValue: expediente.fracturas,decoration: InputDecoration(labelText: 'Fracturas:'),
                   onSaved: (value) => expediente.fracturas = value ))
                ],),
                  
                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 2,initialValue: expediente.alergias,decoration: InputDecoration(labelText: 'Alergias'),
                   onSaved: (value) => expediente.alergias = value, /* validator: validacion,*/ )),

                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.medicamentos,decoration: InputDecoration(labelText: 'Medicamentos'),
                   onSaved: (value) => expediente.medicamentos = value, /* validator: validacion,*/ )),
                
                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.intolerancias,decoration: InputDecoration(labelText: 'Intolerancias'),
                   onSaved: (value) => expediente.intolerancias = value, /* validator: validacion,*/ )),
                                      
                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.toxicomanias,decoration: InputDecoration(labelText: 'Toxicomanias'),
                   onSaved: (value) => expediente.toxicomanias = value, /* validator: validacion,*/ )),
                 

                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.aversiones,decoration: InputDecoration(labelText: 'Aversiones'),
                   onSaved: (value) => expediente.aversiones = value, /* validator: validacion,*/ )),             
                 
                  CamposDelFormulario(ancho: .35,alto: .047, campoformulario:  TextFormField(style: TextStyle(fontSize: size.longestSide * .0095),maxLines: 3,initialValue: expediente.enfermedades,decoration: InputDecoration(labelText: 'Enfermedades'),
                   onSaved: (value) => expediente.enfermedades = value, /* validator: validacion,*/ )),             
                 
              

                 

              ],
            ),
           ),  
               // ######################## Container derecho ###########################
            hojaDeTrabajo(context, 
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    CamposDelFormulario(ancho: .34,alto: .040, campoformulario: menuOptTipoDeDentadura()),

                     CamposDelFormulario(ancho: .34,alto: .051, campoformulario:  Column(
                       children: [
                         Text('Durante la ultima semana ha presentado....'),
                         menuOptTipoDeMalestares()
                         
                       ],
                     )),
                     CamposDelFormulario(ancho: .34,alto: .1, campoformulario:  Column(
                       children: [
                         Text('Valoracion de Evacuaciones'),
                         menuOptTipoDeEvacuaciones(),
                         menuOptTipoDeEvacuaciones2(),

                         
                       ],
                     )),
                       
                      
                    

                     CamposDelFormulario(ancho: .34,alto: .15,  campoformulario:  TextFormField(maxLines: 10,initialValue: expediente.nota.toString(),decoration: InputDecoration(labelText: 'Notas:'),
                   onSaved: (value) => expediente.nota = value,)),
                    
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
      )
    );
  }
  
  
  //###################################################################### Widget de hojas de trabajo ######################
Widget hojaDeTrabajo(BuildContext context,contenido){
  final size = MediaQuery.of(context).size;
  return  SlideInDown(
    duration: Duration(seconds: 1),
      child: Container( 
              width: size.longestSide  * .36,
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

//##################################################################### Widgets de menu de opciones Dentadura ###################  
menuOptTipoDeDentadura(){
  final size = MediaQuery.of(context).size;
  return  Row(
    children: [
     
      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.tipoDeDentadura,items: getOpcionesDentadura(),onChanged: (opt) {setState(() {expediente.tipoDeDentadura = opt;});},),
      SizedBox(width: size.longestSide * .09),

      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.molesta,items: getOpcionesMolestia(),onChanged: (opt) {setState(() {expediente.molesta = opt;});},),
    ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesDentadura() {
    List<DropdownMenuItem<String>> lista = [];
    tipoDeDentadura.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Tipo de dentadura:',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
 List<DropdownMenuItem<String>> getOpcionesMolestia() {
    List<DropdownMenuItem<String>> lista = [];
    molestias.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Molesta',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }

//##################################################################### Widgets de menu de opciones malestares ###################  
menuOptTipoDeMalestares(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.vomito,items: getOpcionesVomito(),onChanged: (opt) {setState(() {expediente.vomito = opt;});},),

      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.nauseas,items: getOpcionesNauseas(),onChanged: (opt) {setState(() {expediente.nauseas = opt;});},),
     
      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.agruras,items: getOpcionesAgruras(),onChanged: (opt) {setState(() {expediente.agruras = opt;});},),
    ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesVomito() {
    List<DropdownMenuItem<String>> lista = [];
    vomito.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Vomito',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
 List<DropdownMenuItem<String>> getOpcionesNauseas() {
    List<DropdownMenuItem<String>> lista = [];
    nauseas.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Nauseas',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
 List<DropdownMenuItem<String>> getOpcionesAgruras() {
    List<DropdownMenuItem<String>> lista = [];
    agruras.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Agruras',style: TextStyle(fontSize: 14,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
//##################################################################### Widgets de menu de opciones Evacuaciones ###################  
menuOptTipoDeEvacuaciones(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
    Container(height: size.longestSide * 0.030,width: size.longestSide * .07,
      child: TextFormField(initialValue: expediente.evacuacionesDia.toString(),decoration: InputDecoration(labelText: 'Evac. al dia'),
                     onSaved: (value) => expediente.evacuacionesDia = value, /* validator: validacion,*/ ),
    ),
    
    Container(height: size.longestSide * 0.030,width: size.longestSide * .10,
      child:  TextFormField(initialValue: expediente.evacuacionesSemana.toString(),decoration: InputDecoration(labelText: 'Evac. por semana'),
                   onSaved: (value) => expediente.evacuacionesSemana = value, /* validator: validacion,*/ )),

      DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.molestiaAlEvacuar,items: getOpcionesMolestiaAlEvacuar(),onChanged: (opt) {setState(() {expediente.molestiaAlEvacuar = opt;});},),
     
      // DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.agruras,items: getOpcionesAgruras(),onChanged: (opt) {setState(() {expediente.agruras = opt;});},),
    ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesMolestiaAlEvacuar() {
    List<DropdownMenuItem<String>> lista = [];
    molestiaAlEvacuar.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Molestia al evacuar',style: TextStyle(fontSize: 12,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }
//##################################################################### Widgets de menu de opciones Evacuaciones 2 ###################  
menuOptTipoDeEvacuaciones2(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
    Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
      child: TextFormField(maxLines: 2 ,initialValue: expediente.consistencia.toString(),decoration: InputDecoration(labelText: 'Consistencia'),
                     onSaved: (value) => expediente.consistencia = value, /* validator: validacion,*/ ),
    ),
    
    Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
      child:  TextFormField(maxLines: 2, initialValue: expediente.coloracion.toString(),decoration: InputDecoration(labelText: 'Coloracion'),
                   onSaved: (value) => expediente.coloracion = value /* validator: validacion,*/ )),

     
    ],
  ); 
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
//############################################################## Widgets del conatiner Expediente
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






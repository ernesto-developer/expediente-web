import 'package:aplicacion_web/src/widgets/CamposDelFormulario.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:aplicacion_web/src/providers/expedientes_provider.dart';
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:aplicacion_web/src/widgets/botones.dart';


class AntecedentesFamiliaresYNoPatologicos extends StatefulWidget {

  @override
  _AntecedentesFamiliaresYNoPatologicosState createState() => _AntecedentesFamiliaresYNoPatologicosState();
}

class _AntecedentesFamiliaresYNoPatologicosState extends State<AntecedentesFamiliaresYNoPatologicos> {
      

  
  List actividadesFisicas = ['no','si'];
  List ingestaDeAguaDia = ['si','no'];
  List ingestaDeAguaNoche = ['si','no'];
  
  
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
        title: Text('Antecedentes Patologicos Familiares y No patologicos')
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

                   Text('Antecedentes Patologicos Familiares',style: TextStyle(fontSize: size.longestSide * .015),),
      
              CamposDelFormulario(ancho: .34,alto: .14, campoformulario:  Column(
                       children: [
                         Text('Paternos'),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child: TextFormField(maxLines: 2 ,initialValue: expediente.abuelosPaternos.toString(),decoration: InputDecoration(labelText: 'Abuelos Paternos'),
                                           onSaved: (value) => expediente.abuelosPaternos = value, ),
                          ),
                          
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child:  TextFormField(maxLines: 2, initialValue: expediente.padre.toString(),decoration: InputDecoration(labelText: 'Padre'),
                                         onSaved: (value) => expediente.padre= value  )),
                      
                           
                          ],
                        ), 

                        SizedBox(height: 20,),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child: TextFormField(maxLines: 2 ,initialValue: expediente.tiosPaternos.toString(),decoration: InputDecoration(labelText: 'Tios Paternos'),
                                           onSaved: (value) => expediente.tiosPaternos = value, ),
                          ),
                          
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child:  TextFormField(maxLines: 2, initialValue: expediente.otrosPaternos.toString(),decoration: InputDecoration(labelText: 'Otros'),
                                         onSaved: (value) => expediente.otrosPaternos= value  )),
                      
                           
                          ],
                        ), 
                         
                       ],
                     )),
                 CamposDelFormulario(ancho: .34,alto: .14, campoformulario:  Column(
                       children: [
                        Text('Maternos'),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child: TextFormField(maxLines: 2 ,initialValue: expediente.abuelosmaternos.toString(),decoration: InputDecoration(labelText: 'Abuelos Maternos'),
                                           onSaved: (value) => expediente.abuelosmaternos = value, ),
                          ),
                          
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child:  TextFormField(maxLines: 2, initialValue: expediente.madre.toString(),decoration: InputDecoration(labelText: 'Madre'),
                                         onSaved: (value) => expediente.madre= value  )),
                      
                           
                          ],
                        ), 

                        SizedBox(height: 20,),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child: TextFormField(maxLines: 2 ,initialValue: expediente.tiosMaternos.toString(),decoration: InputDecoration(labelText: 'Tios Maternos'),
                                           onSaved: (value) => expediente.tiosMaternos = value, ),
                          ),
                          
                          Container(height: size.longestSide * 0.045,width: size.longestSide * .14,
                            child:  TextFormField(maxLines: 2, initialValue: expediente.otrosMaternos.toString(),decoration: InputDecoration(labelText: 'Otros'),
                                         onSaved: (value) => expediente.otrosMaternos= value  )),
                      
                           
                          ],
                        ), 
                       ],
                     )),

                  
              

                 

              ],
            ),
           ),  
               // ######################## Container derecho ###########################
            hojaDeTrabajo(context, 
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text('Antecedentes Personales No Patologicos',style: TextStyle(fontSize: size.longestSide * .015),),

                     CamposDelFormulario(ancho: .34,alto: .1, campoformulario:  Column(
                       children: [
                         Text('Actividades Fisicas'),

                        menuOptTipoDeActividadesFisicas(),

                         Container(height: size.longestSide * 0.030,width: size.longestSide * .14,
                           child:  TextFormField(initialValue: expediente.cuantoTiempo.toString(),decoration: InputDecoration(labelText: 'Por cuanto tiempo?'),
                           onSaved: (value) => expediente.cuantoTiempo = value)),

                       

                         
                       ],
                     )),

                        CamposDelFormulario(ancho: .34,alto: .1, campoformulario:  Column(
                       children: [
                         Text('Ingesta de Agua'),

                        menuOptTipoDeIngestadeAguaDia(),
                        menuOptTipoDeIngestadeAguaNoche(),

                      
                       ],)),

                     CamposDelFormulario(ancho: .34,alto: .13, campoformulario:  Column(
                       children: [
                         Text('Horarios de comida'),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             
                            
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.desayuno.toString(),decoration: InputDecoration(labelText: 'Desayuno'),
                                             onSaved: (value) => expediente.desayuno = value, ),
                            ),
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.colDesayuno.toString(),decoration: InputDecoration(labelText: 'colacion'),
                                             onSaved: (value) => expediente.colDesayuno = value, ),
                            ),
                        
                            ],
                          ), 
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             
                            
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.comida.toString(),decoration: InputDecoration(labelText: 'Comida'),
                                             onSaved: (value) => expediente.comida = value, ),
                            ),
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.colComida.toString(),decoration: InputDecoration(labelText: 'colacion'),
                                             onSaved: (value) => expediente.colComida = value, ),
                            ),
                          ],
                        ), 
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             
                            
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.cena.toString(),decoration: InputDecoration(labelText: 'Cena'),
                                             onSaved: (value) => expediente.cena = value, ),
                            ),
                            Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
                              child: TextFormField(initialValue: expediente.colCena.toString(),decoration: InputDecoration(labelText: 'colacion'),
                                             onSaved: (value) => expediente.colCena = value, ),
                            ),
                            
                           
                             
                              // DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.agruras,items: getOpcionesAgruras(),onChanged: (opt) {setState(() {expediente.agruras = opt;});},),
                            ],
                          ), 
                         
                       ],
                     )),             
                      
                    

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




//##################################################################### Widgets de menu de opciones actividades fisicas ###################  
menuOptTipoDeActividadesFisicas(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
    DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.actividadFisica,items: getOpcionesActividadesFisicas(),onChanged: (opt) {setState(() {expediente.actividadFisica = opt;});},),
    
    Container(height: size.longestSide * 0.030,width: size.longestSide * .12,
      child: TextFormField(initialValue: expediente.cualActividad.toString(),decoration: InputDecoration(labelText: 'Cual?'),
                     onSaved: (value) => expediente.cualActividad = value, ),
    ),
   
   ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesActividadesFisicas() {
    List<DropdownMenuItem<String>> lista = [];
    actividadesFisicas.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text('Practicas alguna actividad fisica?',style: TextStyle(fontSize: 12,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }

//##################################################################### Widgets de menu de opciones ingesta de agua de dia ###################  
menuOptTipoDeIngestadeAguaDia(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
    DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.aguaGusta,items: getOpcionesIngestaDeAguaDia(),onChanged: (opt) {setState(() {expediente.aguaGusta = opt;});},),

      Container(height: size.longestSide * 0.030,width: size.longestSide * .14,
                           child:  TextFormField(initialValue: expediente.cantidadAguaDia.toString(),decoration: InputDecoration(labelText: 'Que cantidad? (Vasos,Litros)'),
                           onSaved: (value) => expediente.cantidadAguaDia = value)),
  
   ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesIngestaDeAguaDia() {
    List<DropdownMenuItem<String>> lista = [];
    ingestaDeAguaDia.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text("Tomas Agua natural?",style: TextStyle(fontSize: 12,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
    return lista;
  }

//##################################################################### Widgets de menu de opciones ingesta de agua de noche ###################  
menuOptTipoDeIngestadeAguaNoche(){
  final size = MediaQuery.of(context).size;
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
    DropdownButton(style: TextStyle( fontSize: size.longestSide * .01),value: expediente.aguaDeNoche,items: getOpcionesIngestaDeAguaNoche(),onChanged: (opt) {setState(() {expediente.aguaDeNoche = opt;});},),

      Container(height: size.longestSide * 0.030,width: size.longestSide * .14,
                           child:  TextFormField(initialValue: expediente.cantidadAguaNoche.toString(),decoration: InputDecoration(labelText: 'Que cantidad? (Vasos,Litros)'),
                           onSaved: (value) => expediente.cantidadAguaNoche = value)),
  
   ],
  ); 
}
 List<DropdownMenuItem<String>> getOpcionesIngestaDeAguaNoche() {
    List<DropdownMenuItem<String>> lista = [];
    ingestaDeAguaNoche.forEach((tipo) {lista.add(DropdownMenuItem(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5,),
        Text("Tomas agua de noche?",style: TextStyle(fontSize: 12,color: Colors.black54),),
        Text(tipo),
      ],
    ),value: tipo,));});
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






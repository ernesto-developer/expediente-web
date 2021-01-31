import 'package:flutter/material.dart';


Widget botonDeHome(BuildContext context){
  return RaisedButton(
    color: Colors.deepPurple,
    onPressed: (){
      Navigator.pushReplacementNamed(context, 'escritorioPage');
    },
    child: Icon(Icons.home,color: Colors.white,),  
  
  );
    
    
}
Widget botonDeGuardar(BuildContext context){
  return RaisedButton(
    color: Colors.deepPurple,
    onPressed: (){
      //TODO: DEBE DE GUARDAR TODA LA INFORAMACION O ACTUALIZARLA
    },
    child: Icon(Icons.save_sharp,color: Colors.white,),  
  
  );
    
    
}
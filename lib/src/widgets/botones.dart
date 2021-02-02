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
 
import 'package:flutter/material.dart';

String validacionStrings(String value){
  String pattern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0){
    return "El nombre es necesario";
  }else if (!regExp.hasMatch(value)){
    return "El campo nombre debe de ser de a-z y A-Z";
  }else{
    return null;
  }
}

String validacionTelefono(String value){
  String pattern = r'(^[0-9 \-]*$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0){
    return "El telefono es necesario";
  }else if(!regExp.hasMatch(value)){
    return "El telfono debe de ser 0-9";
  }else{
    return null;
  }
}

String validarEmail(String value){
   Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
   RegExp regExp = new RegExp(pattern);
   if (value.length == 0){
     return "El correo es necesario";
   }else if (!regExp.hasMatch(value)){
     return "Correo invalido";
   }else {
     return null;
   }
}


void mostrarAlerta(BuildContext context, String mensaje){

showDialog(
  context: context,
  builder: (context){
    return AlertDialog(
      title: Text('Informacion Incorrecta'),
      content: Text(mensaje),
      actions: [
        FlatButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('ok'),
        )
      ],
    );
  }  
);

}

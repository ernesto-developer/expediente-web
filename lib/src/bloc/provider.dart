import 'package:flutter/material.dart';
import 'package:aplicacion_web/src/bloc/login_bloc.dart';
/*Aqui se implementa el inheritedWidget el cual se encarga de distribuir la informacion contenida por toda la aplicacion */
class Provider extends InheritedWidget {

  //esta es la instancia del loginbloc para poderlo usar en esta clase, se pueden agregar las instancias necesarias.
  final loginBloc = LoginBloc();
 
 //desde aqui esta toda la estructura del inheritred 
  Provider({Key key, Widget child})
  : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true; 
  
  static LoginBloc of (BuildContext context){
   return context.dependOnInheritedWidgetOfExactType<Provider>().loginBloc;

  }
}
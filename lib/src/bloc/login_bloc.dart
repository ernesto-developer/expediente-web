import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:aplicacion_web/src/bloc/validators.dart';
/*aqui esta todos los geters respectivos para manejar los streams de toda la aplicaion
en este bloc esta el stream. */
class LoginBloc with Validators {

   final _emailController   = BehaviorSubject <String>();
   final _passwordController = BehaviorSubject<String>();
   
 
 /*estos StreamController ya no se ocupan cuando se implementa el rxdart ahora son behaviorSubject */
  // final _emailController = StreamController<String>.broadcast();
  // final _passwordController = StreamController<String>.broadcast();

    //reccuperar los datos del stream

   Stream<String> get emailStream    => _emailController.stream.transform(validarEmail);
   Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);
   
   Stream<bool> get formValidStream => 
      Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);



   
    // insertar valores al stream

    Function(String) get changeEmail    => _emailController.sink.add;
    Function(String) get changePassword => _passwordController.sink.add;


    //obtener el ultimo valor ingresado a los straeams

    String get email    => _emailController.value;
    String get password => _passwordController.value;

    dispose(){
      _emailController?.close();
      _passwordController?.close();
    }

}
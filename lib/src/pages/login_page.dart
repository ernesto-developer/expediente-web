import 'package:aplicacion_web/src/providers/usuarioProvider.dart';
import 'package:aplicacion_web/src/utils/validacciones.dart';
import 'package:flutter/material.dart';

import 'package:aplicacion_web/src/bloc/login_bloc.dart';
import 'package:aplicacion_web/src/bloc/provider.dart';

class LoginPage extends StatelessWidget {

  final ususarioProvider = new UsusarioProvider();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
          _loginForm(context),
        ],
      ),
      
    );
  }

  _crearFondo(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    
    final fondoMorado =  SingleChildScrollView(
      
    child: Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0)
      ])),
    ));
    
    final circulo = Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.0),
      color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
    
    
    return Stack(
      children: [
        fondoMorado,
        Positioned (top: 100.0,left: 30.0,  child: circulo),
        Positioned (top: -80.0,left: 350.0,  child: circulo),
        Positioned (top: 200.0,left: 300.0,  child: circulo),
        Positioned (top:50.0,left: 600.0,  child: circulo),
        Positioned (top: 120.0,left: 1000.0,  child: circulo),
        Positioned (top:  -80.0,left: 850.0,  child: circulo),
        Positioned (top:  50.0,left: 1300.0,  child: circulo),
        Positioned (top:  200.0,left: 1600.0,  child: circulo),
      
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(children: [
              Icon(Icons.person_pin_circle,color: Colors.white,size: 150.0,),
              SizedBox(height: 10.0,),
              Text('Usuario',style: TextStyle(color: Colors.white,fontSize: 45.0),), 
            ],),

          ),
        )
      
      ],
    );

  }

  _loginForm(BuildContext context) {
    
    final bloc = Provider.of(context);
   
   
    
    return SingleChildScrollView(
      child: Column(
        children: [

          SafeArea(child: Container(height: 250,)),

          Container(
            width: 600,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 50.0),
            decoration: BoxDecoration(
              color: Colors.white,
               borderRadius: BorderRadius.circular(5.0),
               boxShadow: [
                 BoxShadow(color: Colors.black26,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 3.0)
               ]
            ),
            child: Column(
              children: [
               Text('Ingreso',style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 60.0,),
               _crearEmail(bloc),
                SizedBox(height: 30.0,),
               _crearPassword(bloc),
                 SizedBox(height: 30.0,),
                 _crearBoton(bloc)
             ],
            ),
          ),
            FlatButton(
              child: Text("Crear una nueva cuenta"),
              onPressed: () => Navigator.pushReplacementNamed(context, "registroPage"), 
          ),

          SizedBox(height: 100,)

        ],
      ),
    );
  }

  _crearEmail(LoginBloc bloc) {


    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
       return Container(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(
                Icons.alternate_email,
                color: Colors.deepPurple,
                ),
              hintText: 'ejemplo@hotmail.com',
              labelText: 'Correo electronico',
              counterText: snapshot.data,
              errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail,
            
          
          ),
        );
      },
    );





   
  }
  _crearPassword(LoginBloc bloc) {
    
    return StreamBuilder(
    stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
         return Container(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(
                Icons.lock_outline,
                color: Colors.deepPurple,
                ),
              labelText: 'Contrasenia',
              counterText: snapshot.data,
               errorText: snapshot.error
            ),
            onChanged: bloc.changePassword,
          
          ),
        );
      },
    );
    
    
    
    
   
  }
  _crearBoton(LoginBloc bloc){


    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
       return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0 , vertical: 15.0),
          child: Text('Ingresar'),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Colors.deepPurple,
        textColor: Colors.white,
        onPressed: snapshot.hasData ? () =>_loginBloc(bloc, context) : null,
        
        );
      },
    ); 
  }
  _loginBloc(LoginBloc bloc,  context)async{

   Map info = await ususarioProvider.login(bloc.email, bloc.password);

    if (info['ok']){
      Navigator.pushReplacementNamed(context, 'escritorioPage');
    }else{
      mostrarAlerta(context, info['mensaje']);
    }

    // Navigator.pushReplacementNamed(context, 'escritorioPage');


  }
}
import 'dart:ui';

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
    
     final data = MediaQuery.of(context);
     final escala = data.size.longestSide;
    final fondoMorado =  SingleChildScrollView(
      
    child: Container(
      height: data.size.longestSide * .25,
      width: data.size.longestSide * 1,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0)
      ])),
    ));
    
    final circulo = Container(
      width: data.size.longestSide * .15,
      height: data.size.longestSide * .15,
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
              Icon(Icons.person_pin_circle,color: Colors.white,size: data.size.longestSide * .1,),
            
              Text('Carola Williams',style: TextStyle(color: Colors.white,fontSize: escala * .03),), 
            ],),

          ),
        )
      
      ],
    );

  }

  _loginForm(BuildContext context) {
    
    final bloc = Provider.of(context);
     final data = MediaQuery.of(context);
     final escala = data.size.longestSide;
   
   
    
    return SingleChildScrollView(
      child: Column(
        children: [

          SafeArea(child: Container(height: escala * .15,)),

          Container(
          width: escala * .3,
          
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
               borderRadius: BorderRadius.circular(5.0),
               boxShadow: [
                 BoxShadow(color: Colors.black26,blurRadius: 3.0,offset: Offset(0.0, 5.0),spreadRadius: 3.0)
               ]
            ),
            child: Column(
              children: [
               Text('Ingreso',style: TextStyle(fontSize: escala * .02),),
                SizedBox(height: escala * .015,),
               _crearEmail(bloc, context),
               
               _crearPassword(bloc,context),
                //SizedBox(height: 30.0,),
              _crearBoton(bloc,context)
             ],
            ),
          ),
            FlatButton(
              child: Text("Crear una nueva cuenta",style: TextStyle(fontSize: escala * .015,),),
              onPressed: () => Navigator.pushReplacementNamed(context, "registroPage"), 
          ),

          SizedBox(height: 100,)

        ],
      ),
    );
  }

  _crearEmail(LoginBloc bloc, context) {

    final data = MediaQuery.of(context);
    final escala = data.size.longestSide;

    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
       return Container(
         
          width: escala * 0.2,
          height: escala * 0.06,
          child: TextField(
            
            style: TextStyle(fontSize: escala * .011),
            
            
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
             
               hintStyle: TextStyle(fontSize: escala * .01),
              labelStyle: TextStyle(fontSize: escala * .015),
              errorStyle: TextStyle(fontSize: escala * .01),
              icon: Icon(
                Icons.alternate_email,
                size: escala * 0.02,
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
  _crearPassword(LoginBloc bloc, context) {

    final data = MediaQuery.of(context);
    final escala = data.size.longestSide;
    
    return StreamBuilder(
    stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
         return Container(
           width: escala * 0.2,
          height: escala * 0.06,
         
          child: TextField(
             style: TextStyle(fontSize: escala * .012),
            obscureText: true,
            decoration: InputDecoration(
              
              labelStyle: TextStyle(fontSize: escala * .015),
              errorStyle: TextStyle(fontSize: escala * .01),
              icon: Icon(
                Icons.lock_outline,
                size: escala * 0.02,
                color: Colors.deepPurple,
                ),
              labelText: 'Contraseña',
              counterText: snapshot.data,
               errorText: snapshot.error
            ),
            onChanged: bloc.changePassword,
          
          ),
        );
      },
    );
   
  }
  _crearBoton(LoginBloc bloc, context){

    final data = MediaQuery.of(context);
    final escala = data.size.longestSide;


    return StreamBuilder(
      stream: bloc.formValidStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
       return RaisedButton(
        child: Container(
          width: escala * .13,
          height: escala * .04,
          //padding: EdgeInsets.symmetric(horizontal: 80.0 , vertical: 15.0),
          child: Center(child: Text('Ingresar',style: TextStyle(fontSize: escala * .015),)),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
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
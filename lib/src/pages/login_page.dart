
import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _crearFondo(context),
        ],
      ),
      
    );
  }

  _crearFondo(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    
    
    final fondoMorado = Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1.0),
        Color.fromRGBO(90, 70, 178, 1.0)
      ])),
    );
    
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
      
        Container(
          child: Column(children: [
            Icon(Icons.person_pin_circle,color: Colors.white,size: 100.0,),
            SizedBox(height: 10.0,),
            Text('Carola Williams',style: TextStyle(color: Colors.white,fontSize: 25.0),), 
          ],),

        )
      
      ],
    );

  }
}
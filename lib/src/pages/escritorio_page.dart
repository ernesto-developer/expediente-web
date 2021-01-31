import 'package:flutter/material.dart';

class EscritorioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Escritorio')
      ),
     
     body: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
        child: Container(
          width : size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: 200,),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'homePage');
                },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(50),
                    color: Colors.deepPurple   
                  ),
                   width: 200,
                   height: 80,
                   child: Center(child: Text('Crear registro',style: TextStyle(color: Colors.white,fontSize: 20),)), 
                 ),
              )

            ]
          ),
         
       ),
     )
    );
  }
}
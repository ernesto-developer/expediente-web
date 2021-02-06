
import 'package:aplicacion_web/src/source/expediente.model.dart';
import 'package:flutter/material.dart';



class MenuLateral extends StatefulWidget {
  @override
  _MenuLateralState createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {

  ExpedienteModel expediente = new ExpedienteModel();
  @override
  Widget build(BuildContext context) {

     final ExpedienteModel expeData = ModalRoute.of(context).settings.arguments;
    if (expeData != null){
      expediente = expeData;
    }

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.pages, color: Colors.deepPurple ),
            title: Text('Expediente'),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'homePage',arguments: expediente);
            }
          ),
        
              ListTile(
                leading: Icon( Icons.pages, color: Colors.deepPurple ),
                trailing:  Checkbox( activeColor: Colors.deepPurple ,value: expediente.checkDatosGN, onChanged: (value) => setState((){expediente.checkDatosGN = value;} )) ,
                title: Text('Datos Generales 2021'),
                onTap: (){
                  Navigator.pushReplacementNamed(context, 'datosGeneralesPage',arguments: expediente);
                }
              ),

          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.deepPurple ),
            title: Text('Antropometrías'),
            onTap: (){ },
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.deepPurple ),
            title: Text('Laboratorios'),
            onTap: (){ },
          ),

          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Antecedentes Patologicos Generales'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Antecedentes Patologicos Familiares'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Antecedentes Personales No Patologicos'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Frecuencia Alimentaria'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Raciones Habituales'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Calculo de la ingesta habitual'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Plan nutricional'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.deepPurple ),
            title: Text('Nota de evolucion'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),

        ],
      ),
    );
  }
}
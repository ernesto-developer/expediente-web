
import 'package:flutter/material.dart';



class MenuLateral extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue ),
            title: Text('Expediente'),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'homePage');
            }
          ),
          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue ),
            title: Text('Datos Generales 2021'),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'datosGeneralesPage');
            }
          ),

          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue ),
            title: Text('Antropometrías'),
            onTap: (){ },
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.blue ),
            title: Text('Laboratorios'),
            onTap: (){ },
          ),

          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Antecedentes Patologicos Generales'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Antecedentes Patologicos Familiares'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Antecedentes Personales No Patologicos'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Frecuencia Alimentaria'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Raciones Habituales'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Calculo de la ingesta habitual'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
            title: Text('Plan nutricional'),
            onTap: (){
              // Navigator.pop(context)
            }
          ),
          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue ),
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
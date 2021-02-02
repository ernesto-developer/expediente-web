import 'dart:convert';

import 'package:http/http.dart' as http;


class UsusarioProvider{

final _firebaseToken = 'AIzaSyB9BrfIxSDFPMmSvoWNfqfgQndxlxaw20k';

 Future nuevoUsuario(String email, String password )async{

    final authData = {
      "email"   : email,
      "password": password,
      "returnSecureToken": true
    };

    final resp = await http.post( 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken', 
    body: json.encode(authData));


  Map<String, dynamic> decodeResp = json.decode(resp.body);
  print(decodeResp);
  }




}
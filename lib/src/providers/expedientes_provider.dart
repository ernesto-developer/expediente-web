import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:aplicacion_web/src/source/expediente.model.dart';

class ExpedientesProvider{

  final String _url = 'https://expediente-web-default-rtdb.firebaseio.com';


Future<bool> crearExpedinete(ExpedienteModel expediente) async{

    final url = '$_url/expedientes.json';
    final resp = await http.post(url, body: expedienteModelToJson(expediente));
    final decodeData = json.decode(resp.body);

    print(decodeData);
    return true;

}
Future<bool> editarExpedinete(ExpedienteModel expediente) async{

    final url = '$_url/expedientes/${expediente.id}.json';
    final resp = await http.put(url, body: expedienteModelToJson(expediente));
    final decodeData = json.decode(resp.body);

    print(decodeData);
    return true;

}

Future<List<ExpedienteModel>> cargarExpedientes() async {

  final url  = '$_url/expedientes.json';
  final resp = await http.get(url);

  final Map<String, dynamic>decodeData = json.decode(resp.body);
  final List<ExpedienteModel> expedientes = [];

  if (decodeData == null) return [];

  decodeData.forEach((id, exp){

    final expedientetemp = ExpedienteModel.fromJson(exp);
    expedientetemp.id = id;

    expedientes.add(expedientetemp);
   });

    print(expedientes);

  return expedientes;

}

Future<int> borrarExpediente(String id) async {
  final url = '$_url/expedientes/$id.json';
  final resp = await http.delete(url);
  print(resp.body);
  return 1;
}

}
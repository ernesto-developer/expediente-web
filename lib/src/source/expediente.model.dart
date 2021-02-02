// To parse this JSON data, do
//
//     final expedienteModel = expedienteModelFromJson(jsonString);

import 'dart:convert';

ExpedienteModel expedienteModelFromJson(String str) => ExpedienteModel.fromJson(json.decode(str));

String expedienteModelToJson(ExpedienteModel data) => json.encode(data.toJson());

class ExpedienteModel {
    ExpedienteModel({
        this.id,
        this.nombre = '',
        this.correo = '',
        this.telefono = 0,
        this.checkDatosGN = false
    });

    String id;
    String nombre;
    String correo;
    int telefono;
    bool checkDatosGN;

    factory ExpedienteModel.fromJson(Map<String, dynamic> json) => ExpedienteModel(
        id      : json["id"],
        nombre  : json["nombre"],
        correo  : json["correo"],
        telefono: json["telefono"],
         
    );

    Map<String, dynamic> toJson() => {
        // "id"      : id, si se necesita el id avillitar este elemento
        "nombre"  : nombre,
        "correo"  : correo,
        "telefono": telefono,
    };
}

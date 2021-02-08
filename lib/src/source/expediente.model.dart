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
        this.edad,
        this.genero,
        this.direccion = '',
        this.escolaridad = '',
        this.ocupacion = '',
        this.personasQueComen,
        this.menoresDeEdad,
        this.mayoresDeEdad,
        this.gastosDeComida,
        this.ganaPor,
        this.cantidad,
        this.cocinaCon,
        this.tomaAguaDe,
        this.checkDatosGn = false,
    });

    String id;
    String nombre;
    String correo;
    int telefono;
    int edad;
    String genero;
    String direccion;
    String escolaridad;
    String ocupacion;
    int personasQueComen;
    int menoresDeEdad;
    int mayoresDeEdad;
    int gastosDeComida;
    String ganaPor;
    int cantidad;
    String cocinaCon;
    String tomaAguaDe;
    bool checkDatosGn;

    factory ExpedienteModel.fromJson(Map<String, dynamic> json) => ExpedienteModel(
        id: json["id"],
        nombre: json["nombre"],
        correo: json["correo"],
        telefono: json["telefono"],
        edad: json["edad"],
        genero: json["genero"],
        direccion: json["direccion"],
        escolaridad: json["escolaridad"],
        ocupacion: json["ocupacion"],
        personasQueComen: json["personasQueComen"],
        menoresDeEdad: json["menoresDeEdad"],
        mayoresDeEdad: json["mayoresDeEdad"],
        gastosDeComida: json["gastosDeComida"],
        ganaPor: json["ganaPor"],
        cantidad: json["cantidad"],
        cocinaCon: json["cocinaCon"],
        tomaAguaDe: json["tomaAguaDe"],
        checkDatosGn: json["checkDatosGN"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "correo": correo,
        "telefono": telefono,
        "edad": edad,
        "genero": genero,
        "direccion": direccion,
        "escolaridad": escolaridad,
        "ocupacion": ocupacion,
        "personasQueComen": personasQueComen,
        "menoresDeEdad": menoresDeEdad,
        "mayoresDeEdad": mayoresDeEdad,
        "gastosDeComida": gastosDeComida,
        "ganaPor": ganaPor,
        "cantidad": cantidad,
        "cocinaCon": cocinaCon,
        "tomaAguaDe": tomaAguaDe,
        "checkDatosGN": checkDatosGn,
    };
}

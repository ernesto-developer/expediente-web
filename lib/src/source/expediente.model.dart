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
        this.edad = 0,
        this.genero = 'Masculino',
        this.direccion = '',
        this.escolaridad = '',
        this.ocupacion = '',
        this.personasQueComen = 0,
        this.menoresDeEdad = 0,
        this.mayoresDeEdad = 0,
        this.gastosDeComida = 0,
        this.ganaPor = '',
        this.cantidad = 0,
        this.cocinaCon = '',
        this.tomaAguaDe = '',
        this.checkDatosGn = false,
        this.fn = '',
         this.fecha,
        this.estatura,
        this.peso,
        this.imc,
        this.grasa,
        this.cintura,
        this.cadera,
        this.pecho,
        this.edadMuscular,
        this.musculo,
        this.edadCorporal,
        this.metabolismoBasal,
       
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
    String fn;
    List<String> fecha;
    List<double> estatura;
    List<double> peso;
    List<double> imc;
    List<double> grasa;
    List<double> cintura;
    List<double> cadera;
    List<double> pecho;
    List<double> edadMuscular;
    List<double> musculo;
    List<double> edadCorporal;
    List<double> metabolismoBasal;
    

    factory ExpedienteModel.fromJson(Map<String, dynamic> json) => _expedienteModelFromjson(json);
       

    Map<String, dynamic> toJson() => {
        "id"              : id,
        "nombre"          : nombre,
        "correo"          : correo,
        "telefono"        : telefono,
        "edad"            : edad,
        "genero"          : genero,
        "direccion "      : direccion,
        "escolaridad "    : escolaridad,
        "ocupacion "      : ocupacion,
        "personasQueComen": personasQueComen,
        "menoresDeEdad"   : menoresDeEdad,
        "mayoresDeEdad"   : mayoresDeEdad,
        "gastosDeComida"  : gastosDeComida,
        "ganaPor "        : ganaPor,
        "cantidad"        : cantidad,
        "cocinaCon "      : cocinaCon,
        "tomaAguaDe "     : tomaAguaDe,
        "checkDatosGn "   : checkDatosGn,
        "fn "             : fn,
        "fecha"           : fecha,
        "estatura"        : estatura,
        "peso"            : peso,
        "imc"             : imc,
        "grasa"           : grasa,
        "cintura"         : cintura,
        "cadera"          : cadera,
        "pecho"           : pecho,
        "edadMuscular"    : edadMuscular,
        "musculo"         : musculo,
        "edadCorporal"    : edadCorporal,
        "metabolismoBasal": metabolismoBasal,
        
    };
}


 ExpedienteModel _expedienteModelFromjson(Map<String, dynamic> json){
    
      var fechaJson = json['fecha'];
     List<String> fecha = fechaJson != null ? new List.from(fechaJson) : null;
     var grasaJson = json['grasa'];
     List<double> grasa = grasaJson != null ? new List.from(grasaJson) : null;
     var estaturaJson = json['estatura'];
     List<double> estatura = estaturaJson != null ? new List.from(estaturaJson) : null;    
     var pesoJson = json['peso'];
     List<double> peso = pesoJson != null ? new List.from(pesoJson) : null;
     var imcJson = json['imc'];
     List<double> imc = imcJson != null ? new List.from(imcJson) : null;
     var cinturaJson = json['cintura'];
     List<double> cintura = cinturaJson != null ? new List.from(cinturaJson) : null;
     var caderaJson = json['cadera'];
     List<double>  cadera = caderaJson != null ? new List.from(caderaJson) : null;
     var pechoJson = json['pecho'];
     List<double>  pecho = pechoJson != null ? new List.from(pechoJson) : null;
     var edadMuscularJson = json['edadMuscular'];
     List<double>  edadMuscular = edadMuscularJson != null ? new List.from(edadMuscularJson) : null;
     var musculoJson = json['musculo'];
     List<double>  musculo = musculoJson != null ? new List.from(musculoJson) : null;
     var edadCorporalJson = json['edadCorporal'];
     List<double>  edadCorporal = edadCorporalJson != null ? new List.from(edadCorporalJson) : null;
     var metabolismoBasalJson = json['metabolismoBasal'];
     List<double>  metabolismoBasal = metabolismoBasalJson != null ? new List.from(metabolismoBasalJson) : null;
    

   return ExpedienteModel(
        //############################################## Datos generales ######
        id              : json["id"],
        nombre          : json["nombre"],
        correo          : json["correo"],
        telefono        : json["telefono"],
        edad            : json["edad"],
        genero          : json["genero"],
        direccion       : json["direccion "],
        escolaridad     : json["escolaridad "],
        ocupacion       : json["ocupacion "],
        personasQueComen: json["personasQueComen"],
        menoresDeEdad   : json["menoresDeEdad"],
        mayoresDeEdad   : json["mayoresDeEdad"],
        gastosDeComida  : json["gastosDeComida"],
        ganaPor         : json["ganaPor "],
        cantidad        : json["cantidad"],
        cocinaCon       : json["cocinaCon "],
        tomaAguaDe      : json["tomaAguaDe "],
        checkDatosGn    : json["checkDatosGn "],
        fn              : json["fn "],
        //############################################# Antropometrias ########
        
        estatura        : estatura,
        peso            : peso,
        imc             : imc,
        grasa           : grasa,
        cintura         : cintura,
        cadera          : cadera ,
        pecho           :  pecho,
        edadMuscular    : edadMuscular,
        musculo         : musculo,
        edadCorporal    : edadCorporal,
        metabolismoBasal: metabolismoBasal,
        fecha           : fecha,
    


   );


   
 }

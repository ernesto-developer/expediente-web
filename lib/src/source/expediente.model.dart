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
        this.estaturaLista,
        this.pesoLista,
        this.imcLista,
        this.grasaLista,
        this.cinturaLista,
        this.caderaLista,
        this.pechoLista,
        this.edadMuscularLista,
        this.musculoLista,
        this.edadCorporalLista,
      
        this.metabolismoBasalLista,
       
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
    List<Estatura> estaturaLista;
    List<Peso> pesoLista;
    List<Imc> imcLista;
    List<Grasa> grasaLista;
    List<Cintura> cinturaLista;
    List<Cadera> caderaLista;
    List<Pecho> pechoLista;
    List<EdadMuscular> edadMuscularLista;
    List<Musculo> musculoLista;
    List<EdadCorporal> edadCorporalLista;
    List<MetabolismoBasal> metabolismoBasalLista;
    
    

    factory ExpedienteModel.fromJson(Map<String, dynamic> json) => _expedienteModelFromjson(json);
    Map<String, dynamic> toJson() => _expedienteModelToJson(this);
       
//################################################################################  ToJson  ##########################
     Map<String, dynamic> _expedienteModelToJson(ExpedienteModel instance) {

      List<Map<String, dynamic>> estaturaLista = instance.estaturaLista != null
      ? instance.estaturaLista.map((i) => i.toJson()).toList()
      : null;
     

      List<Map<String, dynamic>> pesoLista = instance.pesoLista != null
      ? instance.pesoLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> imcLista = instance.imcLista != null
      ? instance.imcLista.map((i) => i.toJson()) .toList()
      : null;
     
      List<Map<String, dynamic>> grasaLista = instance.grasaLista != null
      ? instance.grasaLista.map((i) => i.toJson()).toList()
      : null;
      
      List<Map<String, dynamic>> cinturaLista = instance.cinturaLista != null
      ? instance.cinturaLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> caderaLista = instance.caderaLista != null
      ? instance.caderaLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> pechoLista = instance.pechoLista != null
      ? instance.pechoLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> edadMuscularLista = instance.edadMuscularLista != null
      ? instance.edadMuscularLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> musculoLista = instance.musculoLista != null
      ? instance.musculoLista.map((i) => i.toJson()).toList()
      : null;
     
      List<Map<String, dynamic>> edadCorporalLista = instance.edadCorporalLista != null
      ? instance.edadCorporalLista.map((i) => i.toJson()).toList()
      : null;

       List<Map<String, dynamic>> metabolismoBasalLista = instance.metabolismoBasalLista != null
      ? instance.metabolismoBasalLista.map((i) => i.toJson()).toList()
      : null;
     
     



    return <String, dynamic>{
        "id"               : instance.id,
        "nombre"           : instance.nombre,
        "correo"           : instance.correo,
        "telefono"         : instance.telefono,
        "edad"             : instance.edad,
        "genero"           : instance.genero,
        "direccion "       : instance.direccion,
        "escolaridad "     : instance.escolaridad,
        "ocupacion "       : instance.ocupacion,
        "personasQueComen" : instance.personasQueComen,
        "menoresDeEdad"    : instance.menoresDeEdad,
        "mayoresDeEdad"    : instance.mayoresDeEdad,
        "gastosDeComida"   : instance.gastosDeComida,
        "ganaPor "         : instance.ganaPor,
        "cantidad"         : instance.cantidad,
        "cocinaCon "       : instance.cocinaCon,
        "tomaAguaDe "      : instance.tomaAguaDe,
        "checkDatosGn "    : instance.checkDatosGn,
        "fn "              : instance.fn,
        "fecha"            : instance.fecha,
        
        "estaturaLista"    : estaturaLista,
        "pesoLista"        : pesoLista,
        "imcLista"         : imcLista,
        "grasaLista"       : grasaLista,
        "cinturaLista"     : cinturaLista,
        "caderaLista"      : caderaLista,
        "pechoLista"       : pechoLista,
        "edadMuscularLista": edadMuscularLista,
        "musculoLista"     : musculoLista,
        "edadCorporalLista": edadCorporalLista,
        "metabolismoBasalLista" : metabolismoBasalLista,
       
    };
  }
}

 

//################################################################################  FromJson  ##########################
 ExpedienteModel _expedienteModelFromjson(Map<String, dynamic> json){
    
      var fechaJson = json['fecha'];
     List<String> fecha = fechaJson != null ? new List.from(fechaJson) : null;
    
       var estaturaListaJson = json['estaturaLista'] as List;
    List<Estatura> estaturaLista = estaturaListaJson != null
        ? estaturaListaJson.map((i) => Estatura.fromJson(i)).toList()
        : null; 
    
    var pesoListaJson = json['pesoLista'] as List;
    List<Peso> pesoLista = pesoListaJson != null
        ? pesoListaJson.map((i) => Peso.fromJson(i)).toList()
        : null;
    
    var imcListaJson = json['imcLista'] as List;
    List<Imc> imcLista = imcListaJson != null
        ? imcListaJson.map((i) => Imc.fromJson(i)).toList()
        : null;

    var grasaListaJson = json['grasaLista'] as List;
    List<Grasa> grasaLista = grasaListaJson != null
        ? grasaListaJson.map((i) => Grasa.fromJson(i)).toList()
        : null;
    
    var cinturaListaJson = json['cinturaLista'] as List;
    List<Cintura> cinturaLista = cinturaListaJson != null
        ? cinturaListaJson.map((i) => Cintura.fromJson(i)).toList()
        : null;
    
    var caderaListaJson = json['caderaLista'] as List;
    List<Cadera> caderaLista = caderaListaJson != null
        ? caderaListaJson.map((i) => Cadera.fromJson(i)).toList()
        : null;
    
    var pechoListaJson = json['pechoLista'] as List;
    List<Pecho> pechoLista = pechoListaJson != null
        ? pechoListaJson.map((i) => Pecho.fromJson(i)).toList()
        : null;
   
    var edadMuscularListaJson = json['edadMuscularLista'] as List;
    List<EdadMuscular> edadMuscularLista = edadMuscularListaJson != null
        ? edadMuscularListaJson.map((i) => EdadMuscular.fromJson(i)).toList()
        : null;
   
    var musculoListaJson = json['musculoLista'] as List;
    List<Musculo> musculoLista = musculoListaJson != null
        ? musculoListaJson.map((i) => Musculo.fromJson(i)).toList()
        : null;
    
    var edadCorporalListaJson = json['edadCorporalLista'] as List;
    List<EdadCorporal> edadCorporalLista = edadCorporalListaJson != null
        ? edadCorporalListaJson.map((i) => EdadCorporal.fromJson(i)).toList()
        : null;
    
     var metabolismoBasalListaJson = json['metabolismoBasalLista'] as List;
    List<MetabolismoBasal> metabolismoBasalLista = metabolismoBasalListaJson != null
        ? metabolismoBasalListaJson.map((i) => MetabolismoBasal.fromJson(i)).toList()
        : null;
    
  
    
    
    
    
    
    

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
        fn              : json["fn"],
        //############################################# Antropometrias ########
        
       
        fecha           : fecha,
        estaturaLista   : estaturaLista,
        pesoLista       : pesoLista ,
        imcLista        : imcLista ,
        grasaLista      : grasaLista,
        cinturaLista    : cinturaLista,
        caderaLista     : caderaLista ,
        pechoLista      : pechoLista,
       edadMuscularLista: edadMuscularLista,
        musculoLista    : musculoLista  ,
        edadCorporalLista: edadCorporalLista,
        metabolismoBasalLista: metabolismoBasalLista,

   );


   
 }

 //################################################################  CLASES DE ANTROPOMETRIAS  ################################################

////###########  ESTATURA   ##################
 class Estatura {
    double estatura;
    int color;
 
    Estatura({this.estatura = 0.0, this.color = 0});
    factory Estatura.fromJson(Map<String, dynamic> json) => _estaturaFromJson(json);
    
     Map<String, dynamic> toJson() => _estaturaToJson(this);
  }
 
  Estatura _estaturaFromJson(Map<String, dynamic> json) => Estatura(
    estatura: json['estatura'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _estaturaToJson(Estatura instance) => <String, dynamic>{
    'estatura': instance.estatura,
    'color': instance.color,
  };

//############# PESO ###############
 class Peso {
    double peso;
    int color;
 
    Peso({this.peso = 0.0, this.color = 0});
    factory Peso.fromJson(Map<String, dynamic> json) => _pesoFromJson(json);
    
     Map<String, dynamic> toJson() => _pesoToJson(this);
  }
 
  Peso _pesoFromJson(Map<String, dynamic> json) => Peso(
    peso: json['peso'] as double,
    color: json['color'] as int,
  );

   Map<String, dynamic> _pesoToJson(Peso instance) => <String, dynamic>{
    'peso': instance.peso,
    'color': instance.color,
  };
//###########  IMC ##################
 class Imc {
    double imc;
    int color;
 
    Imc({this.imc = 0.0, this.color = 0});
    factory Imc.fromJson(Map<String, dynamic> json) => _imcFromJson(json);
    
     Map<String, dynamic> toJson() => _imcToJson(this);
  }
 
  Imc _imcFromJson(Map<String, dynamic> json) => Imc(
    imc: json['imc'] as double,
    color: json['color'] as int,
  );

   Map<String, dynamic> _imcToJson(Imc instance) => <String, dynamic>{
    'imc': instance.imc,
    'color': instance.color,
  };
 ////###########  GRASA  ##################
 class Grasa {
    double grasa;
    int color;
 
    Grasa({this.grasa = 0.0, this.color = 0});
    factory Grasa.fromJson(Map<String, dynamic> json) => _grasaFromJson(json);
    
     Map<String, dynamic> toJson() => _grasaToJson(this);
  }
 
  Grasa _grasaFromJson(Map<String, dynamic> json) => Grasa(
    grasa: json['grasa'] as double,
    color: json['color'] as int,
  );

   Map<String, dynamic> _grasaToJson(Grasa instance) => <String, dynamic>{
    'grasa': instance.grasa,
    'color': instance.color,
  };
 ////###########  CINTURA  ##################
 class Cintura {
    double cintura;
    int color;
 
    Cintura({this.cintura = 0.0, this.color = 0});
    factory Cintura.fromJson(Map<String, dynamic> json) => _cinturaFromJson(json);
    
     Map<String, dynamic> toJson() => _cinturaToJson(this);
  }
 
  Cintura _cinturaFromJson(Map<String, dynamic> json) => Cintura(
    cintura: json['cintura'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _cinturaToJson(Cintura instance) => <String, dynamic>{
    'cintura': instance.cintura,
    'color': instance.color,
  };

 ////###########  CADERA  ##################
 class Cadera {
    double cadera;
    int color;
 
    Cadera({this.cadera = 0.0, this.color = 0});
    factory Cadera.fromJson(Map<String, dynamic> json) => _caderaFromJson(json);
    
     Map<String, dynamic> toJson() => _caderaToJson(this);
  }
 
  Cadera _caderaFromJson(Map<String, dynamic> json) => Cadera(
    cadera: json['cadera'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _caderaToJson(Cadera instance) => <String, dynamic>{
    'cadera': instance.cadera,
    'color': instance.color,
  };

 ////###########  PECHO  ##################
 class Pecho {
    double pecho;
    int color;
 
    Pecho({this.pecho = 0.0, this.color = 0});
    factory Pecho.fromJson(Map<String, dynamic> json) => _pechoFromJson(json);
    
     Map<String, dynamic> toJson() => _pechoToJson(this);
  }
 
  Pecho _pechoFromJson(Map<String, dynamic> json) => Pecho(
    pecho: json['pecho'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _pechoToJson(Pecho instance) => <String, dynamic>{
    'pecho': instance.pecho,
    'color': instance.color,
  };
 
 ////###########  EDAD MUSCULAR  ##################
 class EdadMuscular {
    double edadMuscular;
    int color;
 
    EdadMuscular({this.edadMuscular = 0.0, this.color = 0});
    factory EdadMuscular.fromJson(Map<String, dynamic> json) => _edadMuscularFromJson(json);
    
     Map<String, dynamic> toJson() => _edadMuscularToJson(this);
  }
 
  EdadMuscular _edadMuscularFromJson(Map<String, dynamic> json) => EdadMuscular(
    edadMuscular: json['edadMuscular'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _edadMuscularToJson(EdadMuscular instance) => <String, dynamic>{
    'edadMuscular': instance.edadMuscular,
    'color': instance.color,
  };
 
 ////###########  MUSCULO  ##################
 class Musculo {
    double musculo;
    int color;
 
    Musculo({this.musculo = 0.0, this.color = 0});
    factory Musculo.fromJson(Map<String, dynamic> json) => _musculoFromJson(json);
    
     Map<String, dynamic> toJson() => _musculoToJson(this);
  }
 
  Musculo _musculoFromJson(Map<String, dynamic> json) => Musculo(
    musculo: json['musculo'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _musculoToJson(Musculo instance) => <String, dynamic>{
    'musculo': instance.musculo,
    'color': instance.color,
  };
 
 ////###########  EDAD CORPORAL  ##################
 class EdadCorporal {
    double edadCorporal;
    int color;
 
    EdadCorporal({this.edadCorporal = 0.0, this.color = 0});
    factory EdadCorporal.fromJson(Map<String, dynamic> json) => _edadCorporalFromJson(json);
    
     Map<String, dynamic> toJson() => _edadCorporalToJson(this);
  }
 
  EdadCorporal _edadCorporalFromJson(Map<String, dynamic> json) => EdadCorporal(
    edadCorporal: json['edadCorporal'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _edadCorporalToJson(EdadCorporal instance) => <String, dynamic>{
    'edadCorporal': instance.edadCorporal,
    'color': instance.color,
  };

   ////###########  METABOLISMO BASAL  ##################
 class MetabolismoBasal {
    double metabolismoBasal;
    int color;
 
    MetabolismoBasal({this.metabolismoBasal = 0.0, this.color = 0});
    factory MetabolismoBasal.fromJson(Map<String, dynamic> json) => _metabolismoBasalFromJson(json);
    
     Map<String, dynamic> toJson() => _metabolismoBasalToJson(this);
  }
 
  MetabolismoBasal _metabolismoBasalFromJson(Map<String, dynamic> json) => MetabolismoBasal(
    metabolismoBasal: json['metabolismoBasal'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _metabolismoBasalToJson(MetabolismoBasal instance) => <String, dynamic>{
    'metabolismoBasal': instance.metabolismoBasal,
    'color': instance.color,
  };
 
 
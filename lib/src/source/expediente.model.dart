// To parse this JSON data, do
//
//     final expedienteModel = expedienteModelFromJson(jsonString);

import 'dart:convert';


ExpedienteModel expedienteModelFromJson(String str) => ExpedienteModel.fromJson(json.decode(str));

String expedienteModelToJson(ExpedienteModel data) => json.encode(data.toJson());

class ExpedienteModel {
    ExpedienteModel({
      // ################################################## Datos Generales ######################
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
        this.ganaPor = 'Dia',
        this.cantidad = 0,
        this.cocinaCon = 'Gas',
        this.tomaAguaDe = 'Llave',
        this.checkDatosGn = false,
        this.fechaNacimiento = '0000000',
        this.birthday = '',
        this.dxMedCorto = '',
        this.dxNutCorto = '',
        //################################################# Antropometrias ###################### 
      
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
        // ############################################## Laboratorios ##########################
        this.hbLista,
        this.htcLista,
        this.plaquetasLista,
        this.glucosaLista,
        this.tglLista,
        this.colesterolLista,
        this.acidoUricoLista,
        // ############################################## Antecedentes Patologicos Personales #######
        this.cirugias = '',
        this.fracturas = '',
        this.alergias = '',
        this.medicamentos = '',
        this.intolerancias = '',
        this.toxicomanias = '',
        this.aversiones = '',
        this.enfermedades = '',
        this.tipoDeDentadura = 'Normal',
        this.molestiasactuales = '',
        this.evacuacionesDia = 0,
        this.evacuacionesSemana = 0,
        this.molestiaAlEvacuar = 'no',
        this.consistencia = '',
        this.coloracion = '',
        this.nota = '',
        this.molesta = 'no',
        this.vomito = 'no',
        this.nauseas = 'no',
        this.agruras = 'no',
        //############################################ Antecedentes Patologicos familiares y no Patologicos ##############

        this.abuelosPaternos = '',
        this.padre = '',
        this.tiosPaternos = '',
        this.otrosPaternos = '',
        this.abuelosmaternos = '',
        this.madre = '',
        this.tiosMaternos = '',
        this.otrosMaternos = '',
        this.actividadFisica = 'no',
        this.cualActividad = '',
        this.cuantoTiempo = '',
        this.aguaGusta = 'si',
        this.cantidadAguaDia = '',
        this.cantidadAguaNoche = '',
        this.aguaDeNoche = 'no',
        this.desayuno = '',
        this.colDesayuno = '',
        this.comida = '',
        this.colComida = '',
        this.cena = '',
        this.colCena = '',

        // ##########################################  Frecuencia alimentaria #############################

        this.aguaSimple = '',
        this.aguaDeFrutas = '',
        this.jugoDeFrutas = '',
        this.refresco = '',
        this.alcoholicas = '',
        this.leche = '',
        this.yogurt = '',
        this.concentradoEnPolvo = '',
        this.te = '',
        this.cafe = '',
        this.panDulce = '',
        this.panIntegral = '',
        this.panBlanco = '',
        this.deCebada = '',
        this.deCenteno = '',
        this.tortillasBlancas = '',
        this.trotillasInrtegrales = '',
        this.tortillasDeMaiz = '',
        this.embutidos = '',
        this.carneDeRes = '',
        this.carneDePuerco = '',
        this.pollo = '',
        this.pescado = '',
        this.atun = '',
        this.queso = '',
        this.huevo = '',
        this.mayonesa = '',
        this.margarina = '',
        this.mantequilla = '',
        this.manteca = '',
        this.aceite = '',
        this.aguacate = '',
        this.semillas = '',
        this.nieve = '',
        this.nieveDeYogurt = '',
        this.tejuino = '',
        this.jericaya = '',
        this.raspados = '',
        this.miel = '',
        this.chocolate = '',
        this.tacos = '',
        this.hotDog = '',
        this.hamaburgesas = '',
        this.pizza = '',
        this.nachos = '',
        this.menudo = '',
       



    });
     // ################################################## Datos Generales ######################

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
    String fechaNacimiento;
    String birthday;
    String dxMedCorto;
    String dxNutCorto;
     //################################################# Antropometrias ###################### 

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
    // ############################################## Laboratorios ##########################

    List<Hb>hbLista;
    List<Htc>htcLista;
    List<Plaquetas>plaquetasLista;
    List<Glucosa>glucosaLista;
    List<Tgl>tglLista;
    List<Colesterol>colesterolLista;
    List<AcidoUrico>acidoUricoLista;

    // ############################################## Antecedentes Patologicos Personales #######
    String cirugias;
    String fracturas;
    String alergias;
    String medicamentos;
    String intolerancias;
    String toxicomanias;
    String aversiones;
    String enfermedades;
    String tipoDeDentadura;
    String molestiasactuales;
    int    evacuacionesDia;
    int    evacuacionesSemana;
    String molestiaAlEvacuar;
    String consistencia;
    String coloracion;
    String nota;
    String molesta;
    String vomito;
    String nauseas;
    String agruras;
    //############################################ Antecedentes Patologicos Familiares y No Patologicos ##########

    String abuelosPaternos;
    String padre;
    String tiosPaternos;
    String otrosPaternos;
    String abuelosmaternos;
    String madre;
    String tiosMaternos;
    String otrosMaternos;
    String actividadFisica;
    String cualActividad;
    String cuantoTiempo;
    String aguaGusta;
    String cantidadAguaDia;
    String cantidadAguaNoche;
    String aguaDeNoche;
    String desayuno;
    String colDesayuno;
    String comida;
    String colComida;
    String cena;
    String colCena;

   //############################################ Frecua=encia alimentaria #############################

    String aguaSimple;
    String aguaDeFrutas;
    String jugoDeFrutas;
    String refresco;
    String alcoholicas;
    String leche;
    String yogurt;
    String concentradoEnPolvo;
    String te;
    String cafe;
    String panDulce;
    String panIntegral;
    String panBlanco;
    String deCebada;
    String deCenteno;
    String tortillasBlancas;
    String trotillasInrtegrales;
    String tortillasDeMaiz;
    String embutidos;
    String carneDeRes;
    String carneDePuerco;
    String pollo;
    String pescado;
    String atun;
    String queso;
    String huevo;
    String mayonesa;
    String margarina;
    String mantequilla;
    String manteca;
    String aceite;
    String aguacate;
    String semillas;

    String nieve;
    String nieveDeYogurt;
    String tejuino;
    String jericaya;
    String raspados;
    String miel;
    String chocolate;
    String tacos;
    String hotDog;
    String hamaburgesas;
    String pizza;
    String nachos;
    String menudo;
    
    

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
      
       List<Map<String, dynamic>> hbLista = instance.hbLista != null
      ? instance.hbLista.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, dynamic>> htcLista = instance.htcLista != null
      ? instance.htcLista.map((i) => i.toJson()).toList()
      : null;
     
       List<Map<String, dynamic>> plaquetasLista = instance.plaquetasLista != null
      ? instance.plaquetasLista.map((i) => i.toJson()).toList()
      : null;
     
       List<Map<String, dynamic>> glucosaLista = instance.glucosaLista != null
      ? instance.glucosaLista.map((i) => i.toJson()).toList()
      : null;
     
       List<Map<String, dynamic>> tglLista = instance.tglLista != null
      ? instance.tglLista.map((i) => i.toJson()).toList()
      : null;
     
       List<Map<String, dynamic>> colesterolLista = instance.colesterolLista != null
      ? instance.colesterolLista.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, dynamic>> acidoUricoLista = instance.acidoUricoLista != null
      ? instance.acidoUricoLista.map((i) => i.toJson()).toList()
      : null;
     
     



    return <String, dynamic>{
        "id"                    : instance.id,
        "nombre"                : instance.nombre,
        "correo"                : instance.correo,
        "telefono"              : instance.telefono,
        "edad"                  : instance.edad,
        "genero"                : instance.genero,
        "direccion "            : instance.direccion,
        "escolaridad "          : instance.escolaridad,
        "ocupacion "            : instance.ocupacion,
        "personasQueComen"      : instance.personasQueComen,
        "menoresDeEdad"         : instance.menoresDeEdad,
        "mayoresDeEdad"         : instance.mayoresDeEdad,
        "gastosDeComida"        : instance.gastosDeComida,
        "ganaPor "              : instance.ganaPor,
        "cantidad"              : instance.cantidad,
        "cocinaCon "            : instance.cocinaCon,
        "tomaAguaDe "           : instance.tomaAguaDe,
        "checkDatosGn "         : instance.checkDatosGn,
        "fechaNacimiento "      : instance.fechaNacimiento,
        "fecha"                 : instance.fecha,
        "birthday"              : instance.birthday,
        "dxMedCorto"            : instance.dxMedCorto,
        "dxNutCorto"            : instance.dxNutCorto,
             
        "estaturaLista"         : estaturaLista,
        "pesoLista"             : pesoLista,
        "imcLista"              : imcLista,
        "grasaLista"            : grasaLista,
        "cinturaLista"          : cinturaLista,
        "caderaLista"           : caderaLista,
        "pechoLista"            : pechoLista,
        "edadMuscularLista"     : edadMuscularLista,
        "musculoLista"          : musculoLista,
        "edadCorporalLista"     : edadCorporalLista,
        "metabolismoBasalLista" : metabolismoBasalLista,

        "hbLista"               : hbLista,
        "htcLista"              : htcLista,
        "plaquetasLista"        : plaquetasLista,
        "glucosaLista"          : glucosaLista,
        "tglLista"              : tglLista,
        "colesterolLista"       : colesterolLista,
        "acidoUricoLista"       : acidoUricoLista,

        "cirugias"              : instance.cirugias,  
        "fracturas"             : instance.fracturas, 
        "alergias"              : instance.alergias, 
        "medicamentos"          : instance.medicamentos, 
        "intolerancias"         : instance.intolerancias, 
        "toxicomanias"          : instance.toxicomanias, 
        "aversiones"            : instance.aversiones, 
        "enfermedades"          : instance.enfermedades,
        "tipoDeDentadura"       : instance.tipoDeDentadura, 
        "molestiasactuales"     : instance.molestiasactuales,
        "evacuacionesDia"       : instance.evacuacionesDia,
        "evacuacionesSemana"    : instance.evacuacionesSemana,
        "molestiaAlEvacuar"     : instance.molestiaAlEvacuar,
        "consistencia"          : instance.consistencia,
        "coloracion"            : instance.coloracion,
        "nota"                  : instance.nota,
        "molesta"               : instance.molesta,
        "vomito"                : instance.vomito,
        "nauseas"               : instance.nauseas,
        "agruras"               : instance.agruras,
        
        "abuelosPaternos"       : instance.abuelosPaternos,
        "padre"                 : instance.padre,
        "tiosPaternos"          : instance.tiosPaternos,
        "otrosPaternos"         : instance.otrosPaternos,
        "abuelosmaternos"       : instance.abuelosmaternos,
        "madre"                 : instance.madre,
        "tiosMaternos"          : instance.tiosMaternos,
        "otrosMaternos"         : instance.otrosMaternos,
        "actividadFisica"       : instance.actividadFisica,
        "cualActividad"         : instance.cualActividad,
        "cuantoTiempo"          : instance.cuantoTiempo,
        "aguaGusta"             : instance.aguaGusta,
        "cantidadAguaDia"       : instance.cantidadAguaDia,
        "cantidadAguaNoche"     : instance.cantidadAguaNoche,
        "aguaDeNoche"           : instance.aguaDeNoche,
        "desayuno"              : instance.desayuno,
        "colDesayuno"           : instance.colDesayuno,
        "comida"                : instance.comida,
        "colComida"             : instance.colComida,
        "cena"                  : instance.cena,
        "colCena"               : instance.colCena,

        "aguaSimple"            : instance.aguaSimple,
        "aguaDeFrutas"          : instance.aguaDeFrutas,
        "jugoDeFrutas"          : instance.jugoDeFrutas,
        "refresco"              : instance.refresco,
        "alcoholicas"           : instance.alcoholicas,
        "leche"                 : instance.leche,
        "yogurt"                : instance.yogurt,
        "concentradoEnPolvo"    : instance.concentradoEnPolvo,
        "te"                    : instance.te,
        "Cafe"                  : instance.cafe,
        "panDulce"              : instance.panDulce,
        "panIntegral"           : instance.panIntegral,
        "panBlanco"             : instance.panBlanco,
        "deCebada"              : instance.deCebada,
        "deCenteno"             : instance.deCenteno,
        "tortillasBlancas"      : instance.tortillasBlancas,
        "trotillasInrtegrales"  : instance.trotillasInrtegrales,
        "tortillasDeMaiz"       : instance.tortillasDeMaiz,
        "embutidos"             : instance.embutidos,
        "carneDeRes"            : instance.carneDeRes,
        "carneDePuerco"         : instance.carneDePuerco,
        "pollo"                 : instance.pollo,
        "pescado"               : instance.pescado,
        "atun"                  : instance.atun,
        "queso"                 : instance.queso,
        "huevo"                 : instance.huevo,
        "mayonesa"              : instance.mayonesa,
        "margarina"             : instance.margarina,
        "mantequilla"           : instance.mantequilla,
        "manteca"               : instance.manteca,
        "aceite"                : instance.aceite,
        "aguacate"              : instance.aguacate,
        "semillas"              : instance.semillas,

        "nieve"                 : instance.nieve,
        "nieveDeYogurt"         : instance.nieveDeYogurt,
        "tejuino"               : instance.tejuino,
        "jericaya"              : instance.jericaya,
        "raspados"              : instance.raspados,
        "miel"                  : instance.miel,
        "chocolate"             : instance.chocolate,
        "tacos"                 : instance.tacos,
        "hotDog"                : instance.hotDog,
        "hamaburgesas"          : instance.hamaburgesas,
        "pizza"                 : instance.pizza,
        "nachos"                : instance.nachos,
        "menudo"                : instance.menudo,
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
    
     var hbListaJson = json['hbLista'] as List;
    List<Hb> hbLista = hbListaJson != null
        ? hbListaJson.map((i) => Hb.fromJson(i)).toList()
        : null;
    
     var htcListaJson = json['htcLista'] as List;
    List<Htc> htcLista = htcListaJson != null
        ? htcListaJson.map((i) => Htc.fromJson(i)).toList()
        : null;
    
     var plaquetasListaJson = json['plaquetasLista'] as List;
    List<Plaquetas> plaquetasLista = plaquetasListaJson != null
        ? plaquetasListaJson.map((i) => Plaquetas.fromJson(i)).toList()
        : null;
    
     var glucosaListaJson = json['glucosaLista'] as List;
    List<Glucosa> glucosaLista = glucosaListaJson != null
        ? glucosaListaJson.map((i) => Glucosa.fromJson(i)).toList()
        : null;
    
     var tglListaJson = json['tglLista'] as List;
    List<Tgl> tglLista = tglListaJson != null
        ? tglListaJson.map((i) => Tgl.fromJson(i)).toList()
        : null;
    
     var colesterolListaJson = json['colesterolLista'] as List;
    List<Colesterol> colesterolLista = colesterolListaJson != null
        ? colesterolListaJson.map((i) => Colesterol.fromJson(i)).toList()
        : null;
    
     var acidoUricoListaJson = json['acidoUricoLista'] as List;
    List<AcidoUrico> acidoUricoLista = acidoUricoListaJson != null
        ? acidoUricoListaJson.map((i) => AcidoUrico.fromJson(i)).toList()
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
        fechaNacimiento : json["fechaNacimiento"],
        birthday        : json["birthday"],
        dxMedCorto      : json["dxMedCorto"],
        dxNutCorto      : json["dxNutCorto"],
        //############################################# Antropometrias ########
        
       
        fecha                : fecha,
        estaturaLista        : estaturaLista,
        pesoLista            : pesoLista ,
        imcLista             : imcLista ,
        grasaLista           : grasaLista,
        cinturaLista         : cinturaLista,
        caderaLista          : caderaLista ,
        pechoLista           : pechoLista,
       edadMuscularLista     : edadMuscularLista,
        musculoLista         : musculoLista  ,
        edadCorporalLista    : edadCorporalLista,
        metabolismoBasalLista: metabolismoBasalLista,

        hbLista              : hbLista, 
        htcLista             : htcLista, 
        plaquetasLista       : plaquetasLista, 
        glucosaLista         : glucosaLista, 
        tglLista             : tglLista, 
        colesterolLista      : colesterolLista, 
        acidoUricoLista      : acidoUricoLista,
        
        cirugias             : json["cirugias"], 
        fracturas            : json["fracturas"],
        alergias             : json["alergias"],
        medicamentos         : json["medicamentos"],
        intolerancias        : json["intolerancias"],
        toxicomanias         : json["toxicomanias"],
        aversiones           : json["aversiones"],
        enfermedades         : json["enfermedades"],
        tipoDeDentadura      : json["tipoDeDentadura"],
        molestiasactuales    : json["molestiasactuales"],
        evacuacionesDia      : json["evacuacionesDia"],
        evacuacionesSemana   : json["evacuacionesSemana"],
        molestiaAlEvacuar    : json["molestiaAlEvacuar"],
        consistencia         : json["consistencia"],
        coloracion           : json["coloracion"],
        nota                 : json["nota"],
        molesta              : json["molesta"],
        vomito               : json["vomito"],
        nauseas              : json["nauseas"],
        agruras              : json["agruras"],

        abuelosPaternos      : json["abuelosPaternos"],
        padre                : json["padre"],
        tiosPaternos         : json["tiosPaternos"],
        otrosPaternos        : json["otrosPaternos"],
        abuelosmaternos      : json["abuelosmaternos"],
        madre                : json["madre"],
        tiosMaternos         : json["tiosMaternos"],
        otrosMaternos        : json["otrosMaternos"],
        actividadFisica      : json["actividadFisica"],
        cualActividad        : json["cualActividad"],
        cuantoTiempo         : json["cuantoTiempo"],
        aguaGusta            : json["aguaGusta"],
        cantidadAguaDia      : json["cantidadAguaDia"],
        cantidadAguaNoche    : json["cantidadAguaNoche"],
        aguaDeNoche          : json["aguaDeNoche"],
        desayuno             : json["desayuno"],
        colDesayuno          : json["colDesayuno"],
        comida               : json["comida"],
        colComida            : json["colComida"],
        cena                 : json["cena"],
        colCena              : json["colCena"],

        aguaSimple           : json["aguaSimple"],
        aguaDeFrutas         : json["aguaDeFrutas"],
        jugoDeFrutas         : json["jugoDeFrutas"],
        refresco             : json["refresco"],
        alcoholicas          : json["alcoholicas"],
        leche                : json["leche"],
        yogurt               : json["yogurt"],
        concentradoEnPolvo   : json["concentradoEnPolvo"],
        te                   : json["te"],
        cafe                 : json["Cafe"],
        panDulce             : json["panDulce"],
        panIntegral          : json["panIntegral"],
        panBlanco            : json["panBlanco"],
        deCebada             : json["deCebada"],
        deCenteno            : json["deCenteno"],
        tortillasBlancas     : json["tortillasBlancas"],
        trotillasInrtegrales : json["trotillasInrtegrales"],
        tortillasDeMaiz      : json["tortillasDeMaiz"],
        embutidos            : json["embutidos"],
        carneDeRes           : json["carneDeRes"],
        carneDePuerco        : json["carneDePuerco"],
        pollo                : json["pollo"],
        pescado              : json["pescado"],
        atun                 : json["atun"],
        queso                : json["queso"],
        huevo                : json["huevo"],
        mayonesa             : json["mayonesa"],
        margarina            : json["margarina"],
        mantequilla          : json["mantequilla"],
        manteca              : json["manteca"],
        aceite               : json["aceite"],
        aguacate             : json["aguacate"],
        semillas             : json["semillas"],

        nieve                : json["nieve"],
        nieveDeYogurt        : json["nieveDeYogurt"],
        tejuino              : json["tejuino"],
        jericaya             : json["jericaya"],
        raspados             : json["raspados"],
        miel                 : json["miel"],
        chocolate            : json["chocolate"],
        tacos                : json["tacos"],
        hotDog               : json["hotDog"],
        hamaburgesas         : json["hamaburgesas"],
        pizza                : json["pizza"],
        nachos               : json["nachos"],
        menudo               : json["menudo"],

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
  //####################################################################################################  Laboratorios ###########################################
   ////###########  HB  ##################
 class Hb {
    double hb;
    int color;
 
    Hb({this.hb = 0.0, this.color = 0});
    factory Hb.fromJson(Map<String, dynamic> json) => _hbFromJson(json);
    
     Map<String, dynamic> toJson() => _hbToJson(this);
  }
 
  Hb _hbFromJson(Map<String, dynamic> json) => Hb(
    hb: json['Hb'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _hbToJson(Hb instance) => <String, dynamic>{
    'Hb': instance.hb,
    'color': instance.color,
  };
 
 
   ////###########  Htc  ##################
 class Htc {
    double htc;
    int color;
 
    Htc({this.htc = 0.0, this.color = 0});
    factory Htc.fromJson(Map<String, dynamic> json) => _htcFromJson(json);
    
     Map<String, dynamic> toJson() => _htcToJson(this);
  }
 
  Htc _htcFromJson(Map<String, dynamic> json) => Htc(
    htc: json['htc'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _htcToJson(Htc instance) => <String, dynamic>{
    'htc': instance.htc,
    'color': instance.color,
  };
 
   ////###########  Plaquetas  ##################
 class Plaquetas {
    double plaquetas;
    int color;
 
    Plaquetas({this.plaquetas = 0.0, this.color = 0});
    factory Plaquetas.fromJson(Map<String, dynamic> json) => _plaquetasFromJson(json);
    
     Map<String, dynamic> toJson() => _plaquetasToJson(this);
  }
 
  Plaquetas _plaquetasFromJson(Map<String, dynamic> json) => Plaquetas(
    plaquetas: json['plaquetas'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _plaquetasToJson(Plaquetas instance) => <String, dynamic>{
    'plaquetas': instance.plaquetas,
    'color': instance.color,
  };
 
   ////###########  Glucosa  ##################
 class Glucosa {
    double glucosa;
    int color;
 
    Glucosa({this.glucosa = 0.0, this.color = 0});
    factory Glucosa.fromJson(Map<String, dynamic> json) => _glucosaFromJson(json);
    
     Map<String, dynamic> toJson() => _glucosaToJson(this);
  }
 
  Glucosa _glucosaFromJson(Map<String, dynamic> json) => Glucosa(
    glucosa: json['glucosa'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _glucosaToJson(Glucosa instance) => <String, dynamic>{
    'glucosa': instance.glucosa,
    'color': instance.color,
  };
 
   ////###########  Tgl  ##################
 class Tgl {
    double tgl;
    int color;
 
    Tgl({this.tgl = 0.0, this.color = 0});
    factory Tgl.fromJson(Map<String, dynamic> json) => _tglFromJson(json);
    
     Map<String, dynamic> toJson() => _tglToJson(this);
  }
 
  Tgl _tglFromJson(Map<String, dynamic> json) => Tgl(
    tgl: json['tgl'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _tglToJson(Tgl instance) => <String, dynamic>{
    'tgl': instance.tgl,
    'color': instance.color,
  };
 
 
   ////###########  Colesterol  ##################
 class Colesterol {
    double colesterol;
    int color;
 
    Colesterol({this.colesterol = 0.0, this.color = 0});
    factory Colesterol.fromJson(Map<String, dynamic> json) => _colesterolFromJson(json);
    
     Map<String, dynamic> toJson() => _colesterolToJson(this);
  }
 
  Colesterol _colesterolFromJson(Map<String, dynamic> json) => Colesterol(
    colesterol: json['colesterol'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _colesterolToJson(Colesterol instance) => <String, dynamic>{
    'colesterol': instance.colesterol,
    'color': instance.color,
  };
 
 
   ////###########  Acido Urico  ##################
 class AcidoUrico {
    double acidoUrico;
    int color;
 
    AcidoUrico({this.acidoUrico = 0.0, this.color = 0});
    factory AcidoUrico.fromJson(Map<String, dynamic> json) => _acidoUricoFromJson(json);
    
     Map<String, dynamic> toJson() => _acidoUricoToJson(this);
  }
 
  AcidoUrico _acidoUricoFromJson(Map<String, dynamic> json) => AcidoUrico(
    acidoUrico: json['acidoUrico'] as double,
    color  : json['color']   as int,
  );

   Map<String, dynamic> _acidoUricoToJson(AcidoUrico instance) => <String, dynamic>{
    'acidoUrico': instance.acidoUrico,
    'color': instance.color,
  };
 
 
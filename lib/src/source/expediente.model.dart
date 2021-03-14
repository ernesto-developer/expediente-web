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
        this.telefono = '',
        this.edad = '',
        this.genero = 'Masculino',
        this.direccion = '',
        this.escolaridad = '',
        this.ocupacion = '',
        this.personasQueComen = '',
        this.menoresDeEdad = '',
        this.mayoresDeEdad = '',
        this.gastosDeComida = '',
        this.ganaPor = 'Dia',
        this.cantidad = '',
        this.cocinaCon = 'Gas',
        this.tomaAguaDe = 'Embotellada',
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
        this.evacuacionesDia = '',
        this.evacuacionesSemana = '',
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

        //############################################### Raciones Habituales ####################

        this.carne1,
        this.carne2,
        this.carne3,
        this.carne4,
        this.leche1,
        this.leche2,
        this.leche3,
        this.leche4,
        this.leguminosa1,
        this.leguminosa2,
        this.leguminosa3,
        this.leguminosa4,
        this.cereal1,
        this.cereal2,
        this.cereal3,
        this.cereal4,
        this.verdura1,
        this.verdura2,
        this.verdura3,
        this.verdura4,
        this.fruta1,
        this.fruta2,
        this.fruta3,
        this.fruta4,
        this.azucar1,
        this.azucar2,
        this.azucar3,
        this.azucar4,
        this.grasa1,
        this.grasa2,
        this.grasa3,
        this.grasa4,
        // this.fechaHab1 = '',
        // this.fechaHab2 = '',
        // this.fechaHab3 = '',
        // this.fechaHab4 = '',

        //###################################### CAlculo de la ingesta habitual #####################
        this.gramosList,
        this.porcentajeList,
        this.caloriasList,
        this.calculoIngesta = '',

         //###################################### Plan Nutricional #####################
        this.planNut =  '',
        this.espacioBlanco = '',
    //###################################### Nota de evolucion #####################
        this.notaDeEvo = '',


    });
     // ################################################## Datos Generales ######################

    String id;
    String nombre;
    String correo;
    String telefono;
    String edad;
    String genero;
    String direccion;
    String escolaridad;
    String ocupacion;
    String personasQueComen;
    String menoresDeEdad;
    String mayoresDeEdad;
    String gastosDeComida;
    String ganaPor;
    String cantidad;
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
    String evacuacionesDia;
    String evacuacionesSemana;
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
    //############################################### Raciones Habituales ########################

    List<Carne1> carne1;
    List<Carne2> carne2;
    List<Carne3> carne3;
    List<Carne4> carne4;

    List<Leche1> leche1;
    List<Leche2> leche2;
    List<Leche3> leche3;
    List<Leche4> leche4;

    List<Leguminosa1> leguminosa1;
    List<Leguminosa2> leguminosa2;
    List<Leguminosa3> leguminosa3;
    List<Leguminosa4> leguminosa4;

    List<Cereal1> cereal1;
    List<Cereal2> cereal2;
    List<Cereal3> cereal3;
    List<Cereal4> cereal4;

    List<Verdura1> verdura1;
    List<Verdura2> verdura2;
    List<Verdura3> verdura3;
    List<Verdura4> verdura4;
    
    List<Fruta1> fruta1;
    List<Fruta2> fruta2;
    List<Fruta3> fruta3;
    List<Fruta4> fruta4;

    List<Azucar1> azucar1;
    List<Azucar2> azucar2;
    List<Azucar3> azucar3;
    List<Azucar4> azucar4;

    List<Grasa1> grasa1;
    List<Grasa2> grasa2;
    List<Grasa3> grasa3;
    List<Grasa4> grasa4;

    // String fechaHab1;
    // String fechaHab2;
    // String fechaHab3;
    // String fechaHab4;

    //###################################### CAlculo de la ingesta habitual #####################
    List<Gramos>gramosList;
    List<Porcentaje>porcentajeList;
    List<Calorias>caloriasList;
    
    String calculoIngesta;

    //###################################### Plan Nutricional #####################
    String planNut;
    String espacioBlanco;
    //###################################### Nota de evolucion #####################
    String notaDeEvo;

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
       
       
       
       List<Map<String, String>> carne1 = instance.carne1 != null
      ? instance.carne1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> carne2 = instance.carne2 != null
      ? instance.carne2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> carne3 = instance.carne3 != null
      ? instance.carne3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> carne4 = instance.carne4 != null
      ? instance.carne4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> leche1 = instance.leche1 != null
      ? instance.leche1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leche2 = instance.leche2 != null
      ? instance.leche2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leche3 = instance.leche3 != null
      ? instance.leche3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leche4 = instance.leche4 != null
      ? instance.leche4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> leguminosa1 = instance.leguminosa1 != null
      ? instance.leguminosa1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leguminosa2 = instance.leguminosa2 != null
      ? instance.leguminosa2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leguminosa3 = instance.leguminosa3 != null
      ? instance.leguminosa3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> leguminosa4 = instance.leguminosa4 != null
      ? instance.leguminosa4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> cereal1 = instance.cereal1 != null
      ? instance.cereal1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> cereal2 = instance.cereal2 != null
      ? instance.cereal2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> cereal3 = instance.cereal3 != null
      ? instance.cereal3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> cereal4 = instance.cereal4 != null
      ? instance.cereal4.map((i) => i.toJson()).toList()
      : null;
     
       List<Map<String, String>> verdura1 = instance.verdura1 != null
      ? instance.verdura1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> verdura2 = instance.verdura2 != null
      ? instance.verdura2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> verdura3 = instance.verdura3 != null
      ? instance.verdura3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> verdura4 = instance.verdura4 != null
      ? instance.verdura4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> fruta1 = instance.fruta1 != null
      ? instance.fruta1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> fruta2 = instance.fruta2 != null
      ? instance.fruta2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> fruta3 = instance.fruta3 != null
      ? instance.fruta3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> fruta4 = instance.fruta4 != null
      ? instance.fruta4.map((i) => i.toJson()).toList()
      : null;
       
       List<Map<String, String>> azucar1 = instance.azucar1 != null
      ? instance.azucar1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> azucar2 = instance.azucar2 != null
      ? instance.azucar2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> azucar3 = instance.azucar3 != null
      ? instance.azucar3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> azucar4 = instance.azucar4 != null
      ? instance.azucar4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> grasa1 = instance.grasa1 != null
      ? instance.grasa1.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> grasa2 = instance.grasa2 != null
      ? instance.grasa2.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> grasa3 = instance.grasa3 != null
      ? instance.grasa3.map((i) => i.toJson()).toList()
      : null;
       List<Map<String, String>> grasa4 = instance.grasa4 != null
      ? instance.grasa4.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> gramosList = instance.gramosList != null
      ? instance.gramosList.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> porcentajeList = instance.porcentajeList != null
      ? instance.porcentajeList.map((i) => i.toJson()).toList()
      : null;
      
       List<Map<String, String>> caloriasList = instance.caloriasList != null
      ? instance.caloriasList.map((i) => i.toJson()).toList()
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
        // "fechaHab1"             : instance.fechaHab1,
        // "fechaHab2"             : instance.fechaHab2,
        // "fechaHab3"             : instance.fechaHab3,
        // "fechaHab4"             : instance.fechaHab4,
        "carne1"                : carne1,
        "carne2"                : carne2,
        "carne3"                : carne3,
        "carne4"                : carne4,
        "leche1"                : leche1,
        "leche2"                : leche2,
        "leche3"                : leche3,
        "leche4"                : leche4,
        "leguminosa1"           : leguminosa1,
        "leguminosa2"           : leguminosa2,
        "leguminosa3"           : leguminosa3,
        "leguminosa4"           : leguminosa4,
        "cereal1"               : cereal1,
        "cereal2"               : cereal2,
        "cereal3"               : cereal3,
        "cereal4"               : cereal4,
        "verdura1"              : verdura1,
        "verdura2"              : verdura2,
        "verdura3"              : verdura3,
        "verdura4"              : verdura4,
        "fruta1"                : fruta1,
        "fruta2"                : fruta2,
        "fruta3"                : fruta3,
        "fruta4"                : fruta4,
        "azucar1"               : azucar1,
        "azucar2"               : azucar2,
        "azucar3"               : azucar3,
        "azucar4"               : azucar4,
        "grasa1"                : grasa1,
        "grasa2"                : grasa2,
        "grasa3"                : grasa3,
        "grasa4"                : grasa4,

        "calculoIngesta"        : instance.calculoIngesta,

        "gramosList"            : gramosList,
        "porcentajeList"        : porcentajeList,
        "caloriasList"          : caloriasList,
        "planNut"               : instance.planNut,
        "espacioBlanco"         : instance.espacioBlanco,
        "notaEvo"               : instance.notaDeEvo,

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
    
     var carne1Json = json['carne1'] as List;
    List<Carne1> carne1 = carne1Json != null
        ? carne1Json.map((i) => Carne1.fromJson(i)).toList()
        : null;
     var carne2Json = json['carne2'] as List;
    List<Carne2> carne2 = carne2Json != null
        ? carne2Json.map((i) => Carne2.fromJson(i)).toList()
        : null;
     var carne3Json = json['carne3'] as List;
    List<Carne3> carne3 = carne3Json != null
        ? carne3Json.map((i) => Carne3.fromJson(i)).toList()
        : null;
     var carne4Json = json['carne4'] as List;
    List<Carne4> carne4 = carne4Json != null
        ? carne4Json.map((i) => Carne4.fromJson(i)).toList()
        : null;
    
     var leche1Json = json['leche1'] as List;
    List<Leche1> leche1 = leche1Json != null
        ? leche1Json.map((i) => Leche1.fromJson(i)).toList()
        : null;
     var leche2Json = json['leche2'] as List;
    List<Leche2> leche2 = leche2Json != null
        ? leche2Json.map((i) => Leche2.fromJson(i)).toList()
        : null;
     var leche3Json = json['leche3'] as List;
    List<Leche3> leche3 = leche3Json != null
        ? leche3Json.map((i) => Leche3.fromJson(i)).toList()
        : null;
     var leche4Json = json['leche4'] as List;
    List<Leche4> leche4 = leche4Json != null
        ? leche4Json.map((i) => Leche4.fromJson(i)).toList()
        : null;
    
     var leguminosa1Json = json['leguminosa1'] as List;
    List<Leguminosa1> leguminosa1 = leguminosa1Json != null
        ? leguminosa1Json.map((i) => Leguminosa1.fromJson(i)).toList()
        : null;
     var leguminosa2Json = json['leguminosa2'] as List;
    List<Leguminosa2> leguminosa2 = leguminosa2Json != null
        ? leguminosa2Json.map((i) => Leguminosa2.fromJson(i)).toList()
        : null;
     var leguminosa3Json = json['leguminosa3'] as List;
    List<Leguminosa3> leguminosa3 = leguminosa3Json != null
        ? leguminosa3Json.map((i) => Leguminosa3.fromJson(i)).toList()
        : null;
     var leguminosa4Json = json['leguminosa4'] as List;
    List<Leguminosa4> leguminosa4 = leguminosa4Json != null
        ? leguminosa4Json.map((i) => Leguminosa4.fromJson(i)).toList()
        : null;
    
     var cereal1Json = json['cereal1'] as List;
    List<Cereal1> cereal1 = cereal1Json != null
        ? cereal1Json.map((i) => Cereal1.fromJson(i)).toList()
        : null;
     var cereal2Json = json['cereal2'] as List;
    List<Cereal2> cereal2 = cereal2Json != null
        ? cereal2Json.map((i) => Cereal2.fromJson(i)).toList()
        : null;
     var cereal3Json = json['cereal3'] as List;
    List<Cereal3> cereal3 = cereal3Json != null
        ? cereal3Json.map((i) => Cereal3.fromJson(i)).toList()
        : null;
     var cereal4Json = json['cereal4'] as List;
    List<Cereal4> cereal4 = cereal4Json != null
        ? cereal4Json.map((i) => Cereal4.fromJson(i)).toList()
        : null;
    
     var verdura1Json = json['verdura1'] as List;
    List<Verdura1> verdura1 = verdura1Json != null
        ? verdura1Json.map((i) => Verdura1.fromJson(i)).toList()
        : null;
     var verdura2Json = json['verdura2'] as List;
    List<Verdura2> verdura2 = verdura2Json != null
        ? verdura2Json.map((i) => Verdura2.fromJson(i)).toList()
        : null;
     var verdura3Json = json['verdura3'] as List;
    List<Verdura3> verdura3 = verdura3Json != null
        ? verdura3Json.map((i) => Verdura3.fromJson(i)).toList()
        : null;
     var verdura4Json = json['verdura4'] as List;
    List<Verdura4> verdura4 = verdura4Json != null
        ? verdura4Json.map((i) => Verdura4.fromJson(i)).toList()
        : null;
    
     var fruta1Json = json['fruta1'] as List;
    List<Fruta1> fruta1 = fruta1Json != null
        ? fruta1Json.map((i) => Fruta1.fromJson(i)).toList()
        : null;
     var fruta2Json = json['fruta2'] as List;
    List<Fruta2> fruta2 = fruta2Json != null
        ? fruta2Json.map((i) => Fruta2.fromJson(i)).toList()
        : null;
     var fruta3Json = json['fruta3'] as List;
    List<Fruta3> fruta3 = fruta3Json != null
        ? fruta3Json.map((i) => Fruta3.fromJson(i)).toList()
        : null;
     var fruta4Json = json['fruta4'] as List;
    List<Fruta4> fruta4 = fruta4Json != null
        ? fruta4Json.map((i) => Fruta4.fromJson(i)).toList()
        : null;
    
     var azucar1Json = json['azucar1'] as List;
    List<Azucar1> azucar1 = azucar1Json != null
        ? azucar1Json.map((i) => Azucar1.fromJson(i)).toList()
        : null;
     var azucar2Json = json['azucar2'] as List;
    List<Azucar2> azucar2 = azucar2Json != null
        ? azucar2Json.map((i) => Azucar2.fromJson(i)).toList()
        : null;
     var azucar3Json = json['azucar3'] as List;
    List<Azucar3> azucar3 = azucar3Json != null
        ? azucar3Json.map((i) => Azucar3.fromJson(i)).toList()
        : null;
     var azucar4Json = json['azucar4'] as List;
    List<Azucar4> azucar4 = azucar4Json != null
        ? azucar4Json.map((i) => Azucar4.fromJson(i)).toList()
        : null;
     
     var grasa1Json = json['grasa1'] as List;
    List<Grasa1> grasa1 = grasa1Json != null
        ? grasa1Json.map((i) => Grasa1.fromJson(i)).toList()
        : null;
     var grasa2Json = json['grasa2'] as List;
    List<Grasa2> grasa2 = grasa2Json != null
        ? grasa2Json.map((i) => Grasa2.fromJson(i)).toList()
        : null;
     var grasa3Json = json['grasa3'] as List;
    List<Grasa3> grasa3 = grasa3Json != null
        ? grasa3Json.map((i) => Grasa3.fromJson(i)).toList()
        : null;
     var grasa4Json = json['grasa4'] as List;
    List<Grasa4> grasa4 = grasa4Json != null
        ? grasa4Json.map((i) => Grasa4.fromJson(i)).toList()
        : null;
    
     var gramosListJson = json['gramosList'] as List;
    List<Gramos> gramosList = gramosListJson != null
        ? gramosListJson.map((i) => Gramos.fromJson(i)).toList()
        : null;
    
     var porcentajeListJson = json['porcentajeList'] as List;
    List<Porcentaje> porcentajeList = porcentajeListJson != null
        ? porcentajeListJson.map((i) => Porcentaje.fromJson(i)).toList()
        : null;
    
     var caloriasListJson = json['caloriasList'] as List;
    List<Calorias> caloriasList = caloriasListJson != null
        ? caloriasListJson.map((i) => Calorias.fromJson(i)).toList()
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
        // fechaHab1            : json["fechaHab1"],
        // fechaHab2            : json["fechaHab2"],
        // fechaHab3            : json["fechaHab3"],
        // fechaHab4            : json["fechaHab4"],

        carne1               : carne1,
        carne2               : carne2,
        carne3               : carne3,
        carne4               : carne4,
        leche1               : leche1,
        leche2               : leche2,
        leche3               : leche3,
        leche4               : leche4,
        leguminosa1          : leguminosa1,
        leguminosa2          : leguminosa2,
        leguminosa3          : leguminosa3,
        leguminosa4          : leguminosa4,
        cereal1              : cereal1,
        cereal2              : cereal2,
        cereal3              : cereal3,
        cereal4              : cereal4,
        verdura1             : verdura1,
        verdura2             : verdura2,
        verdura3             : verdura3,
        verdura4             : verdura4,
        fruta1               : fruta1,
        fruta2               : fruta2,
        fruta3               : fruta3,
        fruta4               : fruta4,
        azucar1              : azucar1,
        azucar2              : azucar2,
        azucar3              : azucar3,
        azucar4              : azucar4,
        grasa1               : grasa1,
        grasa2               : grasa2,
        grasa3               : grasa3,
        grasa4               : grasa4,

        calculoIngesta       : json["calculoIngesta"],
        gramosList           : gramosList,  
        porcentajeList       : porcentajeList, 
        caloriasList         : caloriasList, 

        planNut              : json["planNut"],
        espacioBlanco        : json["espacioBlanco"],
        notaDeEvo            : json["notaEvo"] 
         
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
 
  
  //########################################################################### Raciones habituales ##########################
  
  ////###########  Carne1  ##################
 class Carne1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Carne1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Carne1.fromJson(Map<String, String> json) => _carne1FromJson(json);
    
     Map<String, String> toJson() => _carne1ToJson(this);
  }
 
  Carne1 _carne1FromJson(Map<String, String> json) => Carne1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _carne1ToJson(Carne1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };

  ////###########  Carne2  ##################
 class Carne2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Carne2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Carne2.fromJson(Map<String, String> json) => _carne2FromJson(json);
    
     Map<String, String> toJson() => _carne2ToJson(this);
  }
 
  Carne2 _carne2FromJson(Map<String, String> json) => Carne2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _carne2ToJson(Carne2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ////###########  Carne3  ##################
 class Carne3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Carne3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Carne3.fromJson(Map<String, String> json) => _carne3FromJson(json);
    
     Map<String, String> toJson() => _carne3ToJson(this);
  }
 
  Carne3 _carne3FromJson(Map<String, String> json) => Carne3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _carne3ToJson(Carne3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ////###########  Carne4  ##################
 class Carne4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Carne4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Carne4.fromJson(Map<String, String> json) => _carne4FromJson(json);
    
     Map<String, String> toJson() => _carne4ToJson(this);
  }
 
  Carne4 _carne4FromJson(Map<String, String> json) => Carne4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _carne4ToJson(Carne4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
 

 ////###########  Leche1  ##################
 class Leche1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leche1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leche1.fromJson(Map<String, String> json) => _leche1FromJson(json);
    
     Map<String, String> toJson() => _leche1ToJson(this);
  }
 
  Leche1 _leche1FromJson(Map<String, String> json) => Leche1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leche1ToJson(Leche1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
 ////###########  Leche2  ##################
 class Leche2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leche2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leche2.fromJson(Map<String, String> json) => _leche2FromJson(json);
    
     Map<String, String> toJson() => _leche2ToJson(this);
  }
 
  Leche2 _leche2FromJson(Map<String, String> json) => Leche2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leche2ToJson(Leche2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
 ////###########  Leche3  ##################
 class Leche3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leche3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leche3.fromJson(Map<String, String> json) => _leche3FromJson(json);
    
     Map<String, String> toJson() => _leche3ToJson(this);
  }
 
  Leche3 _leche3FromJson(Map<String, String> json) => Leche3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leche3ToJson(Leche3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
 ////###########  Leche4  ##################
 class Leche4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leche4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leche4.fromJson(Map<String, String> json) => _leche4FromJson(json);
    
     Map<String, String> toJson() => _leche4ToJson(this);
  }
 
  Leche4 _leche4FromJson(Map<String, String> json) => Leche4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leche4ToJson(Leche4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };

////###########  Leguminosa1  ##################
 class Leguminosa1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leguminosa1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leguminosa1.fromJson(Map<String, String> json) => _leguminosa1FromJson(json);
    
     Map<String, String> toJson() => _leguminosa1ToJson(this);
  }
 
  Leguminosa1 _leguminosa1FromJson(Map<String, String> json) => Leguminosa1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leguminosa1ToJson(Leguminosa1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
////###########  Leguminosa2  ##################
 class Leguminosa2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leguminosa2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leguminosa2.fromJson(Map<String, String> json) => _leguminosa2FromJson(json);
    
     Map<String, String> toJson() => _leguminosa2ToJson(this);
  }
 
  Leguminosa2 _leguminosa2FromJson(Map<String, String> json) => Leguminosa2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leguminosa2ToJson(Leguminosa2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
////###########  Leguminosa3  ##################
 class Leguminosa3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leguminosa3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leguminosa3.fromJson(Map<String, String> json) => _leguminosa3FromJson(json);
    
     Map<String, String> toJson() => _leguminosa3ToJson(this);
  }
 
  Leguminosa3 _leguminosa3FromJson(Map<String, String> json) => Leguminosa3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leguminosa3ToJson(Leguminosa3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
////###########  Leguminosa4  ##################
 class Leguminosa4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Leguminosa4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Leguminosa4.fromJson(Map<String, String> json) => _leguminosa4FromJson(json);
    
     Map<String, String> toJson() => _leguminosa4ToJson(this);
  }
 
  Leguminosa4 _leguminosa4FromJson(Map<String, String> json) => Leguminosa4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _leguminosa4ToJson(Leguminosa4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };

  ///###########  Cereal1  ##################
 class Cereal1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Cereal1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Cereal1.fromJson(Map<String, String> json) => _cereal1FromJson(json);
    
     Map<String, String> toJson() => _cereal1ToJson(this);
  }
 
  Cereal1 _cereal1FromJson(Map<String, String> json) => Cereal1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _cereal1ToJson(Cereal1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Cereal2  ##################
 class Cereal2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Cereal2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Cereal2.fromJson(Map<String, String> json) => _cereal2FromJson(json);
    
     Map<String, String> toJson() => _cereal2ToJson(this);
  }
 
  Cereal2 _cereal2FromJson(Map<String, String> json) => Cereal2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _cereal2ToJson(Cereal2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Cereal3  ##################
 class Cereal3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Cereal3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Cereal3.fromJson(Map<String, String> json) => _cereal3FromJson(json);
    
     Map<String, String> toJson() => _cereal3ToJson(this);
  }
 
  Cereal3 _cereal3FromJson(Map<String, String> json) => Cereal3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _cereal3ToJson(Cereal3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Cereal4  ##################
 class Cereal4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Cereal4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Cereal4.fromJson(Map<String, String> json) => _cereal4FromJson(json);
    
     Map<String, String> toJson() => _cereal4ToJson(this);
  }
 
  Cereal4 _cereal4FromJson(Map<String, String> json) => Cereal4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _cereal4ToJson(Cereal4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Verdura1  ##################
 class Verdura1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Verdura1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Verdura1.fromJson(Map<String, String> json) => _verdura1FromJson(json);
    
     Map<String, String> toJson() => _verdura1ToJson(this);
  }
 
  Verdura1 _verdura1FromJson(Map<String, String> json) => Verdura1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _verdura1ToJson(Verdura1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Verdura2  ##################
 class Verdura2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Verdura2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Verdura2.fromJson(Map<String, String> json) => _verdura2FromJson(json);
    
     Map<String, String> toJson() => _verdura2ToJson(this);
  }
 
  Verdura2 _verdura2FromJson(Map<String, String> json) => Verdura2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _verdura2ToJson(Verdura2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Verdura3  ##################
 class Verdura3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Verdura3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Verdura3.fromJson(Map<String, String> json) => _verdura3FromJson(json);
    
     Map<String, String> toJson() => _verdura3ToJson(this);
  }
 
  Verdura3 _verdura3FromJson(Map<String, String> json) => Verdura3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _verdura3ToJson(Verdura3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Verdura4  ##################
 class Verdura4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Verdura4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Verdura4.fromJson(Map<String, String> json) => _verdura4FromJson(json);
    
     Map<String, String> toJson() => _verdura4ToJson(this);
  }
 
  Verdura4 _verdura4FromJson(Map<String, String> json) => Verdura4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _verdura4ToJson(Verdura4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Fruta1  ##################
 class Fruta1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Fruta1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Fruta1.fromJson(Map<String, String> json) => _fruta1FromJson(json);
    
     Map<String, String> toJson() => _fruta1ToJson(this);
  }
 
  Fruta1 _fruta1FromJson(Map<String, String> json) => Fruta1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _fruta1ToJson(Fruta1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Fruta2  ##################
 class Fruta2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Fruta2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Fruta2.fromJson(Map<String, String> json) => _fruta2FromJson(json);
    
     Map<String, String> toJson() => _fruta2ToJson(this);
  }
 
  Fruta2 _fruta2FromJson(Map<String, String> json) => Fruta2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _fruta2ToJson(Fruta2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Fruta3  ##################
 class Fruta3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Fruta3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Fruta3.fromJson(Map<String, String> json) => _fruta3FromJson(json);
    
     Map<String, String> toJson() => _fruta3ToJson(this);
  }
 
  Fruta3 _fruta3FromJson(Map<String, String> json) => Fruta3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _fruta3ToJson(Fruta3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Fruta4  ##################
 class Fruta4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Fruta4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Fruta4.fromJson(Map<String, String> json) => _fruta4FromJson(json);
    
     Map<String, String> toJson() => _fruta4ToJson(this);
  }
 
  Fruta4 _fruta4FromJson(Map<String, String> json) => Fruta4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _fruta4ToJson(Fruta4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Azucar1  ##################
 class Azucar1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Azucar1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Azucar1.fromJson(Map<String, String> json) => _azucar1FromJson(json);
    
     Map<String, String> toJson() => _azucar1ToJson(this);
  }
 
  Azucar1 _azucar1FromJson(Map<String, String> json) => Azucar1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _azucar1ToJson(Azucar1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Azucar2  ##################
 class Azucar2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Azucar2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Azucar2.fromJson(Map<String, String> json) => _azucar2FromJson(json);
    
     Map<String, String> toJson() => _azucar2ToJson(this);
  }
 
  Azucar2 _azucar2FromJson(Map<String, String> json) => Azucar2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _azucar2ToJson(Azucar2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Azucar3  ##################
 class Azucar3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Azucar3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Azucar3.fromJson(Map<String, String> json) => _azucar3FromJson(json);
    
     Map<String, String> toJson() => _azucar3ToJson(this);
  }
 
  Azucar3 _azucar3FromJson(Map<String, String> json) => Azucar3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _azucar3ToJson(Azucar3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Azucar4  ##################
 class Azucar4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Azucar4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Azucar4.fromJson(Map<String, String> json) => _azucar4FromJson(json);
    
     Map<String, String> toJson() => _azucar4ToJson(this);
  }
 
  Azucar4 _azucar4FromJson(Map<String, String> json) => Azucar4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _azucar4ToJson(Azucar4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Grasa1  ##################
 class Grasa1 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Grasa1({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Grasa1.fromJson(Map<String, String> json) => _grasa1FromJson(json);
    
     Map<String, String> toJson() => _grasa1ToJson(this);
  }
 
  Grasa1 _grasa1FromJson(Map<String, String> json) => Grasa1(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _grasa1ToJson(Grasa1 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Grasa2  ##################
 class Grasa2 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Grasa2({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Grasa2.fromJson(Map<String, String> json) => _grasa2FromJson(json);
    
     Map<String, String> toJson() => _grasa2ToJson(this);
  }
 
  Grasa2 _grasa2FromJson(Map<String, String> json) => Grasa2(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _grasa2ToJson(Grasa2 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Grasa3  ##################
 class Grasa3 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Grasa3({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Grasa3.fromJson(Map<String, String> json) => _grasa3FromJson(json);
    
     Map<String, String> toJson() => _grasa3ToJson(this);
  }
 
  Grasa3 _grasa3FromJson(Map<String, String> json) => Grasa3(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _grasa3ToJson(Grasa3 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
  ///###########  Grasa4  ##################
 class Grasa4 {
    String desayunoHab;
    String colDesayunoHab;
    String comidaHab;
    String colComidaHab;
    String cenaHab;
    String colCenaHab;
    
 
    Grasa4({this.desayunoHab = '', this.colDesayunoHab='',this.comidaHab='',this.colComidaHab='',this.cenaHab='',this.colCenaHab});
    factory Grasa4.fromJson(Map<String, String> json) => _grasa4FromJson(json);
    
     Map<String, String> toJson() => _grasa4ToJson(this);
  }
 
  Grasa4 _grasa4FromJson(Map<String, String> json) => Grasa4(
    desayunoHab     : json['desayunoHab'],
    colDesayunoHab  : json['colacDesayunoHab'],
    comidaHab       : json['comidaHab'],
    colComidaHab    : json['colacComidaHab'],
    cenaHab         : json['cenaHab'],
    colCenaHab      : json['colCenaHab'],
  );

   Map<String, dynamic> _grasa4ToJson(Grasa4 instance) => <String, String>{
    
    'desayunoHab'      : instance.desayunoHab,
    'colacDesayunoHab' : instance.colDesayunoHab,
    'comidaHab'        : instance.comidaHab,
    'colacComidaHab'   : instance.colComidaHab,
    'cenaHab'          : instance.cenaHab,
    'colCenaHab'       : instance.colCenaHab,
  };
 
   //########################################################################### Calculo de la Ingesta Habitual ##########################
  
  ///###########  Gramos  ##################
 class Gramos {
    String ch;
    String pts;
    String lib;
    String total;
   
    
 
    Gramos({this.ch = '', this.pts='',this.lib='',this.total=''});
    factory Gramos.fromJson(Map<String, String> json) => _gramosFromJson(json);
    
     Map<String, String> toJson() => _gramosToJson(this);
  }
 
  Gramos _gramosFromJson(Map<String, String> json) => Gramos(
    ch       : json['ch'],
    pts      : json['pts'],
    lib      : json['lib'],
    total    : json['total'],
    
  );

   Map<String, dynamic> _gramosToJson(Gramos instance) => <String, String>{
    
    'ch'      : instance.ch,
    'pts' : instance.pts,
    'lib'        : instance.lib,
    'total'   : instance.total,
  };
  ///###########  Porcentaje  ##################
 class Porcentaje {
    String ch;
    String pts;
    String lib;
    String total;
   
    
 
    Porcentaje({this.ch = '', this.pts='',this.lib='',this.total=''});
    factory Porcentaje.fromJson(Map<String, String> json) => _porcentajeFromJson(json);
    
     Map<String, String> toJson() => _porcentajeToJson(this);
  }
 
  Porcentaje _porcentajeFromJson(Map<String, String> json) => Porcentaje(
    ch    : json['ch'],
    pts   : json['pts'],
    lib   : json['lib'],
    total : json['total'],
    
  );

   Map<String, dynamic> _porcentajeToJson(Porcentaje instance) => <String, String>{
    
    'ch'    : instance.ch,
    'pts'   : instance.pts,
    'lib'   : instance.lib,
    'total' : instance.total,
  };
  ///###########  Calorias  ##################
 class Calorias {
    String ch;
    String pts;
    String lib;
    String total;
   
    
 
    Calorias({this.ch = '', this.pts='',this.lib='',this.total=''});
    factory Calorias.fromJson(Map<String, String> json) => _caloriasFromJson(json);
    
     Map<String, String> toJson() => _caloriasToJson(this);
  }
 
  Calorias _caloriasFromJson(Map<String, String> json) => Calorias(
    ch     : json['ch'],
    pts    : json['pts'],
    lib    : json['lib'],
    total  : json['total'],
    
  );

   Map<String, dynamic> _caloriasToJson(Calorias instance) => <String, String>{
    
    'ch'    : instance.ch,
    'pts'   : instance.pts,
    'lib'   : instance.lib,
    'total' : instance.total,
  };


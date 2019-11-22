
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class Entrevista 
{

//-----------------------------------------------------------------------------------------------
// Atributos
//-----------------------------------------------------------------------------------------------

/// Atributo que contiene una lista con los datos
List <String> _listaDeDatos;

/// Atributo que guarda el string a persistir
String persistencia;

//-----------------------------------------------------------------------------------------------
// Constructor
//-----------------------------------------------------------------------------------------------

Entrevista ()
{
  _listaDeDatos = new List(18);

  for(int i = 0; i<18;i++)
  {
    _listaDeDatos[i]="";
  }
}

//-----------------------------------------------------------------------------------------------
// Metodos
//-----------------------------------------------------------------------------------------------


/// Metodo qeu recibe una posicion y un dato por parametro y los ubica
/// 0: Las posiciones de cada dato son:
/// 1: nombre1 
/// 2: nombreVereda
/// 3: nombre2
/// 4: sexo
/// 5: celular
/// 6: edad
/// 7: ocupacion
/// 8: electricidad
/// 9: gas
/// 10: agua 
/// 11: internet 
/// 12: escuelas
/// 13: transporte 
/// 14: informacion
/// 15: sociedad 
/// 16: cultura
/// 17: comentarios
void ingresarDato (int posicion, String dato)
{
    _listaDeDatos[posicion] = dato;
}

/// Meotodo que devuelve la lista con los datos
List<String> get darDatos => _listaDeDatos;

/// Metodo que verifica la lista de datos
bool verificar()
{
  bool resp = true;
  for(int i = 0; i < 17 && resp; i++)
  {
    if(_listaDeDatos[i].length==0)
      resp = false;
  }
  return resp;
}

// Metodo que guarda los datos en eun archivo
persistir() async {
  _formatear();
  final directory = await getApplicationDocumentsDirectory();
  final file = File('${directory.path}/data.txt');
  print('${directory.path}/data.txt');
  await file.writeAsString(persistencia);
}


/// Metodo que formatea el texto a persistir
 
void _formatear()
{
  persistencia =
  "//----------------------------" + '\n'  
  + "Información Encuestador:" + '\n'
  + "//----------------------------" + '\n' + '\n' 
  + "Nombre del jefe de vereda: " + _listaDeDatos[0] + '\n' 
  + "Nombre de la vereda: " + _listaDeDatos[1] + '\n'+ '\n' 

  + "//----------------------------" + '\n' 
  + "Información Encuestado:" + '\n'
  + "//----------------------------" + '\n' + '\n' 

  + "Nombre de 1 de las personas visitadas: " + _listaDeDatos[2] + '\n'
  + "Sexo: " + _listaDeDatos[3] + '\n'
  + "Celular: " + _listaDeDatos[4] + '\n'
  + "Edad: " + _listaDeDatos[5] + '\n'
  + "Ocupacion: " + _listaDeDatos[6] + '\n'+ '\n' 

  +"//----------------------------" + '\n' 
  + "Situación:" + '\n'
  + "//----------------------------" + '\n' + '\n' 


  + "¿Posee servicio de energía eléctrica?: " + _listaDeDatos[7] + '\n'
  + "¿Posee servicio de Gas Natural?: " + _listaDeDatos[8] + '\n'
  + "¿Posee servicio de acueducto, Alcantarillado y Recolección de Basuras: " + _listaDeDatos[9] + '\n'
  + "¿Posee servicio de Telefonía e Internet (fija o móvil) ?: " + _listaDeDatos[10] + '\n'
  + "¿Algúno tiene una enfermedad grave?: " + _listaDeDatos[11] + '\n'
  + "¿Hay escuelas cercanas?: " + _listaDeDatos[12] + '\n'
  + "¿Hay formas de transportarse?: " + _listaDeDatos[13] + '\n'
  + "¿Medio de informacion que utilizan mas?: " + _listaDeDatos[14] + '\n'
  + "¿Hay organizaciones de la sociedad civil?" + _listaDeDatos[15] + '\n'
  + "¿Existen actividades culturales?: " + _listaDeDatos[16] + '\n'
  + "Comentarios: " + _listaDeDatos[17] + '\n'

  ; 
}



}
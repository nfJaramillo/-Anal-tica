
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
String persistencia = "";

/// Atributo que guarda el string ya presente en el archivo
String anterior = "";

/// Atributo que dice si ya existia un archivo precio
bool existe = false;


//-----------------------------------------------------------------------------------------------
// Constructor
//-----------------------------------------------------------------------------------------------

Entrevista ()
{
  _listaDeDatos = new List(19);

  for(int i = 0; i<19;i++)
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
  for(int i = 0; i < 18 && resp; i++)
  {
    if(_listaDeDatos[i].length==0)
      resp = false;
  }
  return resp;
}

// Metodo que guarda los datos en eun archivo
persistir() async {
  await _read();
  _formatear(anterior);
  final directory = await getApplicationDocumentsDirectory();
  File file;
  if(!existe)
  {
     file = new File('${directory.path}/data.csv');
  }
  else{
     file = File('${directory.path}/data.csv');
  }
  
  await file.writeAsString(persistencia);
  
}

/// Metodo que lee los datos anteriores en el archivo
 _read() async {
  String text;
  try {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/data.csv');
    text = await file.readAsString();
  } catch (e) {
    existe = false;
    print("Couldn't read file");
 
  }
    anterior = text;
  existe = true;

}


/// Metodo que formatea el texto a persistir
 
void _formatear(String anterior)
{

  String nuevosDatos = "";
  persistencia = "";
  if(anterior == null)
  {
    persistencia =
  "Nombre del jefe de vereda;Nombre de la vereda;Nombre de 1 de las personas visitadas;Sexo;Celular;Edad;Ocupacion;"
  +"¿Posee servicio de energía eléctrica?;¿Posee servicio de Gas Natural?;¿Posee servicio de acueducto, Alcantarillado y Recolección de Basuras?;"
  +"¿Posee servicio de Telefonía e Internet (fija o móvil) ?;¿Algúno tiene una enfermedad grave?;¿Hay escuelas cercanas?;¿Hay formas de transportarse?;"
  +"¿Medio de informacion que utilizan mas usado?;¿Hay organizaciones de la sociedad civil?;¿Existen actividades culturales?;Comentarios" + '\n';

  anterior = "";
  }

  for (int i = 0; i<19;i++)
  {
    nuevosDatos += (_listaDeDatos[i] + ";");
  }
    
  
  persistencia += (anterior  + nuevosDatos +'\n');

  
}



}

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
///  Las posiciones de cada dato son:
/// 0: Nombre del jefe de vereda
/// 1: Nombre de la vereda
/// 2: Nombre de la persona visitada
/// 3: Sexo
/// 4: Celular
/// 5: Edad
/// 6: Ocupación
/// 7: ¿Tienen energía eléctrica?
/// 8: ¿Tienen gas natural?
/// 9: ¿Tienen acueducto? 
/// 10: ¿Tienen recolección de basuras? 
/// 11: ¿Tienen internet?
/// 12: ¿Tienen enfermedades graves? 
/// 13: ¿Hay escuelas cercanas?
/// 11: ¿Hay formas de transportarse? 
/// 15: ¿Hay organizaciones civiles?
/// 16: ¿Hay actividades culturales?
/// 17: Comentarios
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
  "Nombre del jefe de vereda;Nombre de la vereda;Nombre de la persona visitada;Sexo;Celular;Edad;Ocupación;"
  +"¿Tienen energía eléctrica?;¿Tienen gas natural?;¿Tienen acueducto?;¿Tienen recolección de basuras?;"
  +"¿Tienen internet?;¿Tienen enfermedades graves?;¿Hay escuelas cercanas?;¿Hay formas de transportarse?;"
  +"¿Medio mas utilizado?;¿Hay organizaciones civiles?;¿Hay actividades culturales?;Comentarios" + '\n';

  anterior = "";
  }

  for (int i = 0; i<19;i++)
  {
    nuevosDatos += (_listaDeDatos[i] + ";");
  }
    
  
  persistencia += (anterior  + nuevosDatos +'\n');


}



}
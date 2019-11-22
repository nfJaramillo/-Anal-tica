
class Entrevista 
{

//-----------------------------------------------------------------------------------------------
// Atributos
//-----------------------------------------------------------------------------------------------

List <String> _listaDeDatos;

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
  for(int i = 0; i < 18 && resp; i++)
  {
    if(_listaDeDatos[i].length==0)
      resp = false;
  }
  return resp;
}




}
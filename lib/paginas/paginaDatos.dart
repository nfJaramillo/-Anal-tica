import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Analitica/UI/botonUI.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

class PaginaDatos extends StatefulWidget
{
  @override
  PaginaDatosEstado createState() => new PaginaDatosEstado();

}
  


class PaginaDatosEstado extends State<PaginaDatos>
{
  @override
  Widget build(BuildContext context) {
  return new Material(color: Colors.white, // Un material es como una hoja de papel encima de la pantalla
     child: new Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra lo de la columna en el ejer y
        children: <Widget>[

          Icon(Icons.equalizer, size: MediaQuery.of(context).size.width * .3, color: Color(0xffC70C54)),

         FittedBox(fit:BoxFit.scaleDown, child: new Text("Datos recuperados", style: TextStyle(fontSize: MediaQuery.of(context).size.width * .1, fontWeight: FontWeight.bold, color: Color(0xff4D4D4D)))), // Pone el texto 

        new BotonUI3(Color(0xff870839), new Text("Ver y editar"), null ), // Boton que lleva al formulario


         new BotonUI3(Color(0xffC70C54), new Text("Compartir"), 
          () async
                   { // get file from local store
                  final String dir =
                      (await getApplicationDocumentsDirectory()).path;
                  final String path = '$dir/data.csv';

                  ShareExtend.share(path, "file");
                 },
         ), // Boton que lleva al formulario

        
        
        ]
     )
  );
}
  
}
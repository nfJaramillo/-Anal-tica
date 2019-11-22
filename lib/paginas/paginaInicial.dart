
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:mas_analitica/UI/botonUI.dart';

import 'paginaFormulario.dart';

class PaginaInicial extends StatelessWidget{
  @override

    // Fuerza a la aplicacion a arracar en modo vertical
    Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    
    ]);

    return new Material(color: Colors.white, // Un material es como una hoja de papel encima de la pantalla
     child: new Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra lo de la columna en el ejer y
        children: <Widget>[

            new Image.asset("assets/logo.png",height: MediaQuery.of(context).size.width * .5,fit: BoxFit.cover,),
        
           FittedBox(fit:BoxFit.scaleDown, child: new Text("Analítica", style: TextStyle(fontSize: MediaQuery.of(context).size.width * .1, fontWeight: FontWeight.bold, color: Color(0xff4D4D4D)))),

           new BotonUI3(Color(0xff870839), new Text("Formularios"), () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new PaginaFormulario()))),

           new BotonUI3(Color(0xffC70C54), new Text("PDF"), null)
          
        ],
      )
    );
  }
}
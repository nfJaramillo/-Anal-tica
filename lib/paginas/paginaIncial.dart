import 'package:Analitica/UI/botonUI.dart';
import 'package:Analitica/paginas/paginaInicialAnalitica.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaginaInicial extends StatelessWidget{
  @override

    // Fuerza a la aplicacion a arracar en modo vertical
    Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    
    ]);

    return new Material(color: Color(0xffC70C54), // Un material es como una hoja de papel encima de la pantalla
     child: new Column(
        mainAxisAlignment: MainAxisAlignment.center, // Centra lo de la columna en el ejer y
        children: <Widget>[

            new Image.asset("assets/images/userImage.png",height: MediaQuery.of(context).size.width * .5,fit: BoxFit.cover,), // Pone el logo de +C
        
           new BotonUI3(Color(0xff870839), new Text("Analítica"), () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new PaginaInicialAnalitica()))), // Boton que lleva a analitica

           new BotonUI3(Color(0xffC70C54), new Text("Mapa"), ()  => null), // Boton que lleva a los datos
          
        ],
      )
    );
  }
}
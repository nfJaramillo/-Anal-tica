import 'package:Analitica/paginas/paginaInicialAnalitica.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../app_theme.dart';

class PaginaInicial extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

     // Fuerza a la aplicacion a arracar en modo vertical
     SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    
    ]);


    
    return Material(

      color: AppTheme.notWhite,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        
       // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
         
         /// Imagen de +C
          Image.asset(
            'assets/images/userImage.png',
            width: 220,
            height: 220,
          ),

          /// Boton que lleva analitica
          const SizedBox(height: 5),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: AppTheme.nearlyBlack,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PaginaInicialAnalitica()),
              );
            },
            child: const Text('Proyecto +Analítica',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),

          /// Boton que lleva a mapas
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(97, 15, 97, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              toast("Próximamente");
            },
            child: const Text('+Co-Mapas',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),

          /// Boton que lleva a la galeria
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(77, 15, 77, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              toast("Próximamente");
            },
            child: const Text('La gran galería',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),

          /// Boton que lleva al dia final
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(103, 15, 103, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              toast("Bloqueado por el momento");
            },
            child: const Text('El día final',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
        ],
      ),
    );
  }
}



/// Metodo que proyecta un toast con un mensaje que recibe por parametro
toast(String mensaje) {
  Fluttertoast.showToast(
      msg: mensaje,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 2);
}
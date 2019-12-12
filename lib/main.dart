import 'package:Analitica/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:Analitica/UI/botonUI.dart';
import 'package:Analitica/paginas/paginaDatos.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Analitica/paginas/paginaFormulario.dart';
import 'package:Analitica/encuestaSinglepage.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = '+Colombia App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            _title,
            style: TextStyle(fontFamily: AppTheme.fontNamet),
          ),
          backgroundColor: AppTheme.nearlyWhite,
        ),
        body: MyStatelessWidget(),
        backgroundColor: AppTheme.notWhite,
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/userImage.png',
            width: 220,
            height: 220,
          ),
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

class PaginaInicialAnalitica extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors
            .white, // Un material es como una hoja de papel encima de la pantalla
        child: new Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra lo de la columna en el ejer y
          children: <Widget>[
            new Image.asset(
              "assets/logo.png",
              height: MediaQuery.of(context).size.width * .5,
              fit: BoxFit.cover,
            ), // Pone el logo de +C

            FittedBox(
                fit: BoxFit.scaleDown,
                child: new Text("Analítica",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .1,
                        fontWeight: FontWeight.bold,
                        color: Color(
                            0xff4D4D4D)))), // Pone el texto debajo del logo

            new BotonUI3(
                Color(0xff870839),
                new Text("Iniciar nueva encuesta"),
                () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new PaginaFormulario()))), // Boton que lleva al formulario

            new BotonUI3(
                Color(0xffC70C54),
                new Text("Datos"),
                () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new PaginaDatos()))) // Boton que lleva a los datos
          ],
        ));
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

import 'package:Analitica/UI/botonUI.dart';
import 'package:Analitica/paginas/paginaDatos.dart';
import 'package:Analitica/paginas/paginaFormulario.dart';
import 'package:flutter/material.dart';

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
import 'package:Analitica/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// This Widget is the main application widget.
class Analitycs extends StatelessWidget {
  static const String _title = '+Analitycs';

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
        body: Pregunta6(),
        backgroundColor: AppTheme.notWhite,
      ),
    );
  }
}

/// Metodo qeu recibe una posicion y un dato por parametro y los ubica
///  Las posiciones de cada dato son:
/// 0: Nombre de la vereda
/// 1: Nombre de la persona visitada
/// 2: Sexo
/// 3: Celular
/// 4: Edad
/// 5: Ocupación
/// 6: ¿Tienen energía eléctrica?
/// 7: ¿Tienen gas natural?
/// 8: ¿Tienen acueducto?
/// 9:  ¿Tienen recolección de basuras?
/// 10: ¿Tienen internet?
/// 11: ¿Tienen enfermedades graves?
/// 12: ¿Hay escuelas cercanas?
/// 13: ¿Hay formas de transportarse?
/// 11: ¿Hay organizaciones civiles?
/// 15: ¿Hay actividades culturales?
/// 16: Comentarios
///
/// Preguntas
var p0 = "Nombre de la vereda",
    p1 = "Nombre de la persona visitada",
    p2 = "Sexo",
    p3 = "Celular",
    p4 = "Edad",
    p5 = "Ocupación",
    p6 = "¿Tienen energía eléctrica?",
    p7 = "¿Tienen gas natural?",
    p8 = "¿Tienen acueducto?",
    p9 = "¿Tienen recolección de basuras?",
    p10 = "¿Tienen internet?",
    p11 = "¿Tienen enfermedades graves?",
    p12 = "¿Hay escuelas cercanas?",
    p13 = "¿Hay formas de transportarse?",
    p14 = "¿Hay organizaciones civiles?",
    p15 = "¿Hay actividades culturales?",
    p16 = "Comentarios";

/// Textos, lo puedes obtener usando re$.txt
final TextEditingController re0 = new TextEditingController();
final TextEditingController re1 = new TextEditingController();
final TextEditingController re2 = new TextEditingController();
final TextEditingController re3 = new TextEditingController();
final TextEditingController re4 = new TextEditingController();
final TextEditingController re5 = new TextEditingController();
final TextEditingController re16 = new TextEditingController();

/// Booleanas
bool re6,
    re7,
    re8,
    re9,
    re10,
    re11,
    re12,
    re13,
    re14,
    re15,
    o6,
    o7,
    o8,
    o9,
    o10,
    o11,
    o12,
    o13,
    o14,
    o15 = false;

/// Una pregunta booleana
class Pregunta6 extends StatelessWidget {
  Pregunta6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p7,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta7()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta7()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta7()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta7 extends StatelessWidget {
  Pregunta7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: AppTheme.grey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p7,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta8()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta8()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta8()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta8 extends StatelessWidget {
  Pregunta8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p8,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta9()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta9()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta9()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta9 extends StatelessWidget {
  Pregunta9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p9,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta10()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta10()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta10()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta10 extends StatelessWidget {
  Pregunta10({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p10,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta11()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta11()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta11()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta11 extends StatelessWidget {
  Pregunta11({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p11,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta12()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta12()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta12()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta12 extends StatelessWidget {
  Pregunta12({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p12,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta13()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta13()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta13()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta13 extends StatelessWidget {
  Pregunta13({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p13,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta14()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta14()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta14()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta14 extends StatelessWidget {
  Pregunta14({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p14,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
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
                MaterialPageRoute(builder: (context) => Pregunta15()),
              );
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta15()),
              );
            },
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pregunta15()),
              );
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// Una pregunta booleana
class Pregunta15 extends StatelessWidget {
  Pregunta15({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            p15,
            style: TextStyle(
                fontSize: 40,
                fontFamily: AppTheme.fontName,
                color: AppTheme.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 45),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: AppTheme.nearlyBlack,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.white),
            ),
            onPressed: () {
            },
            child: const Text('Sí',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(47, 15, 47, 15),
            color: AppTheme.nearlyWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {},
            child: const Text('No',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
            color: AppTheme.notWhite,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.white)),
            onPressed: () {
            },
            child: const Text('Omitir',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: AppTheme.fontName,
                    color: AppTheme.white)),
          ),
          const SizedBox(height: 30),
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

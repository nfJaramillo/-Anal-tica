import 'package:Analitica/paginas/paginaInicialAnalitica.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:Analitica/UI/formularioUI.dart';
import 'package:Analitica/logica/entrevista.dart';

class PaginaFormulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new PaginaFormularioState(title: ''),
    );
  }
}

class PaginaFormularioState extends StatefulWidget {
  PaginaFormularioState({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PaginaFormularioState2 createState() => new _PaginaFormularioState2();
}

class _PaginaFormularioState2 extends State<PaginaFormularioState> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _sexos = <String>['Mujer', 'Hombre', ""];
  List<String> _medios = <String>[
    'Radio',
    'Diarios y revistas',
    "T.V.",
    "Internet",
    ""
  ];
  Entrevista _entrevista = new Entrevista();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
                children: <Widget>[

                  ///---------------------------------------------------------------------------
                  ///CUIDADO: No cambiar la cantiad de preuntas sin antes modificar el tamano del vector y los metodos de la logica de la entrevista
                  ///---------------------------------------------------------------------------

                  new FormularioUITextoInformativo("Información Encuestador:", Color(0xff870839)),

                  new FormularioUITexto('Escribe nombre y apellido', 'Nombre del jefe de vereda',_entrevista,Icon(Icons.person),0),

                  new FormularioUITexto('', 'Nombre de la vereda', _entrevista, Icon(Icons.image), 1),

                  new FormularioUITextoInformativo("Información Encuestado:", Color(0xff870839)),

                  new FormularioUITexto('Escribe nombre y apellido', "Nombre de la persona visitada", _entrevista,Icon(Icons.person_outline),2),

                  new FormularioUIEleccionMultiple(_sexos, "Sexo", _entrevista,Icon(Icons.person_pin_circle), 3),

                  new FormularioUINumeros('Ingresa un numero de celular','Celular', _entrevista, Icon(Icons.phone), 4),

                  new FormularioUINumeros('En años', 'Edad', _entrevista, Icon(Icons.cake), 5),

                  new FormularioUITexto("", 'Ocupación', _entrevista, Icon(Icons.business_center), 6),

                  new FormularioUITextoInformativo( "Situación:", Color(0xff870839)),
                  
                  new FormularioUIEleccionBinaria('¿Tienen energía eléctrica?', _entrevista, Icon(Icons.power), 7),

                  new FormularioUIEleccionBinaria('¿Tienen gas natural?', _entrevista, Icon(Icons.restaurant), 8),

                  new FormularioUIEleccionBinaria('¿Tienen acueducto?',_entrevista, Icon(Icons.local_drink), 9),

                  new FormularioUIEleccionBinaria('¿Tienen recolección de basuras?', _entrevista,Icon(Icons.restore_from_trash),10),

                  new FormularioUIEleccionBinaria('¿Tienen internet?', _entrevista, Icon(Icons.wifi), 11),

                  new FormularioUIEleccionBinaria('¿Hay escuelas cercanas?', _entrevista, Icon(Icons.school), 12),

                  new FormularioUIEleccionBinaria('¿Hay formas de transportarse?', _entrevista,Icon(Icons.departure_board), 13),

                  new FormularioUIEleccionBinaria('¿Hay organizaciones civiles?',_entrevista,Icon(Icons.group), 14),

                  new FormularioUIEleccionBinaria('¿Hay actividades culturales?', _entrevista,Icon(Icons.speaker),15),

                  new FormularioUIEleccionMultiple( _medios, '¿Medio mas utilizado?', _entrevista,Icon(Icons.book),16),

                  new FormularioUITexto('Si no, escriba No','¿Tienen enfermedades graves? ', _entrevista,Icon(Icons.local_hospital),17),

                  new FormularioUITexto('Si no, escriba No', 'Comentarios',_entrevista, Icon(Icons.comment), 18),

                  new Container(
                      padding: const EdgeInsets.only(left: 0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Guardar'),
                        color: Color(0xffC70C54),
                        textColor: Colors.white,
                        onPressed: () => _guardar(),
                      )),
                ],
              ))),
    );
  }

  //----------------------------------------------
  // METODOS
  //----------------------------------------------

  /// Metodo que verifica si ya to-do esta completo, de ser asi lo guarda en un archivo
  void _guardar() {
    final FormState form = _formKey.currentState;
    if (form != null) form.save();

    if (_entrevista.verificar()) {
      _entrevista.persistir();
      Fluttertoast.showToast(
          msg: "Se guardo la encuesta",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1);

      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(
              builder: (BuildContext context) => new PaginaInicialAnalitica()),
          (Route route) => route == null);
    } else {
      Fluttertoast.showToast(
          msg: "Faltan preguntas por contestar",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1);
    }
  }
}

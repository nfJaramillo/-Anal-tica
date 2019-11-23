import 'package:flutter/material.dart';


import 'package:fluttertoast/fluttertoast.dart';
import 'package:Analitica/UI/formularioUI.dart';
import 'package:Analitica/logica/entrevista.dart';
import 'package:Analitica/paginas/paginaInicial.dart';




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
  List<String> _siOnoOpciones = <String>['Si', 'No',""];
  List<String> _sexos = <String>['Mujer', 'Hombre',"" ];
  List<String> _medios = <String>['Radio', 'Diarios y revistas',"T.V.","Internet","" ];
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

                

              new FormularioUITextoInformativo("Información Encuestador:", Color(0xff870839)),

              new FormularioUITexto('Escribe nombre y apellido', 'Nombre del jefe de vereda', _entrevista, Icon(Icons.person),0 ),

              new FormularioUITexto('', 'Nombre de la vereda', _entrevista, Icon(Icons.image),1),

              new FormularioUITextoInformativo("Información Encuestado:", Color(0xff870839)),

              new FormularioUITexto('Escribe nombre y apellido', "Nombre de la persona visitada", _entrevista, Icon(Icons.person_outline), 2),

              new FormularioUIEleccionMultiple(_sexos, "Sexo", _entrevista, Icon(Icons.person_pin_circle),3),

              new FormularioUINumeros( 'Ingresa un numero de celular', 'Celular', _entrevista, Icon(Icons.phone), 4),

              new FormularioUINumeros('', 'Edad', _entrevista, Icon(Icons.cake), 5),

              new FormularioUITexto("", 'Ocupación', _entrevista, Icon(Icons.business_center), 6),

              new FormularioUITextoInformativo("Situación:", Color(0xff870839)),

              new  FormularioUIEleccionMultiple(_siOnoOpciones, '¿Tienen energía eléctrica?', _entrevista, Icon(Icons.power), 7),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Tienen gas natural?', _entrevista, Icon(Icons.restaurant), 8),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Tienen acueducto?', _entrevista, Icon(Icons.local_drink), 9),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Tienen recolección de basuras?', _entrevista, Icon(Icons.restore_from_trash), 10),
                   
              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Tienen internet?', _entrevista, Icon(Icons.wifi), 11),

              new FormularioUITexto('Si no, escriba No', '¿Tienen enfermedades graves? ', _entrevista, Icon(Icons.local_hospital), 12),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay escuelas cercanas?', _entrevista, Icon(Icons.school), 13),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay formas de transportarse?', _entrevista, Icon(Icons.departure_board), 14),

              new FormularioUIEleccionMultiple(_medios, '¿Medio mas utilizado?', _entrevista, Icon(Icons.book), 15),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay organizaciones cciviles? ', _entrevista, Icon(Icons.group), 16),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay actividades culturales? ', _entrevista, Icon(Icons.speaker), 17),

              new FormularioUITexto('Si no, escriba No', 'Comentarios', _entrevista, Icon(Icons.comment), 18),

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


  /// Metodo que verifica si ya todo esta completo, de ser asi lo guarda en un archivo 
  void _guardar() {
  
    final FormState form = _formKey.currentState;
     if(form != null)
    form.save();

    if(_entrevista.verificar())
    {
        _entrevista.persistir();
           Fluttertoast.showToast(
        msg: "Se guardo la encuesta",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1);
        
        Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new PaginaInicial()), (Route route) => route == null);
  }

    else{
  Fluttertoast.showToast(
        msg: "Faltan preguntas por contestar",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1
    );
    }

 
  }

  
}
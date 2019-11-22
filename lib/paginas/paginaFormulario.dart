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

              new FormularioUITexto('Escribe nombre y apellido', 'Nombre de 1 de las personas visitadas', _entrevista, Icon(Icons.person_outline), 2),

              new FormularioUIEleccionMultiple(_sexos, "Sexo", _entrevista, Icon(Icons.person_pin_circle),3),

              new FormularioUINumeros( 'Ingresa un numero de celular', 'Celular', _entrevista, Icon(Icons.phone), 4),

              new FormularioUINumeros('', 'Edad', _entrevista, Icon(Icons.cake), 5),

              new FormularioUITexto("", 'Ocupacion', _entrevista, Icon(Icons.business_center), 6),

              new FormularioUITextoInformativo("Situación:", Color(0xff870839)),

              new  FormularioUIEleccionMultiple(_siOnoOpciones, '¿Posee servicio de energía eléctrica?', _entrevista, Icon(Icons.power), 7),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Posee servicio de Gas Natural?', _entrevista, Icon(Icons.restaurant), 8),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿…De acueducto, Alcantarillado y Recolección de Basuras?', _entrevista, Icon(Icons.local_drink), 9),
                   
              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Posee servicio de Telefonía e Internet (fija o móvil) ?', _entrevista, Icon(Icons.wifi), 10),

              new FormularioUITexto('Si no, escriba No', '¿Algúno tiene una enfermedad grave? ', _entrevista, Icon(Icons.local_hospital), 11),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay escuelas cercanas?', _entrevista, Icon(Icons.school), 12),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay formas de transportarse?', _entrevista, Icon(Icons.departure_board), 13),

              new FormularioUIEleccionMultiple(_medios, '¿Medio de informacion que utilizan mas?', _entrevista, Icon(Icons.book), 14),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Hay organizaciones de la sociedad civil? ', _entrevista, Icon(Icons.group), 15),

              new FormularioUIEleccionMultiple(_siOnoOpciones, '¿Existen actividades culturales? ', _entrevista, Icon(Icons.speaker), 16),

              new FormularioUITexto('Si no, escriba No', 'Comentarios', _entrevista, Icon(Icons.comment), 17),

                  new Container(
                      padding: const EdgeInsets.only(left: 0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Enviar'),
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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Analitica/logica/entrevista.dart';


class FormularioUITexto extends StatelessWidget {

  //----------------------------------------------
  // ATRIBUTOS
  //----------------------------------------------

  /// Atributo que tiene el texto pista
  final String  _hintText;

  /// Atributo que tiene el texto de la pregunta
  final String _labelText;

  /// Atributo que tiene la entrevista donde guardar el dato
  final Entrevista _entrevista;

  /// Atributo que tiene la posicion de la lista de la entrevista donde guardar el dato
  final int _posicion;

  /// Atributo que guarda el icono
  final Icon _icono;


  //----------------------------------------------
  // CONSTRUCTOR
  //----------------------------------------------

  /// Contructor que recibe el hintText, el labelText, la entrevista, el icono y la posicion
  FormularioUITexto(this._hintText, this._labelText, this._entrevista, this._icono,this._posicion);




  //----------------------------------------------
  // METODOS
  //----------------------------------------------

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
                    decoration:  InputDecoration(
                      icon:  _icono,
                      hintText: _hintText,
                      labelText: _labelText,
                    ),
                    onSaved: (val) => _entrevista.ingresarDato(_posicion, val),
                  );
  }
}


class FormularioUINumeros extends StatelessWidget {

  //----------------------------------------------
  // ATRIBUTOS
  //----------------------------------------------

  /// Atributo que tiene el texto pista
  final String  _hintText;

  /// Atributo que tiene el texto de la pregunta
  final String _labelText;

  /// Atributo que tiene la entrevista donde guardar el dato
  final Entrevista _entrevista;

  /// Atributo que tiene la posicion de la lista de la entrevista donde guardar el dato
  final int _posicion;

  /// Atributo que guarda el icono
  final Icon _icono;


  //----------------------------------------------
  // CONSTRUCTOR
  //----------------------------------------------

  /// Contructor que recibe el hintText, el labelText, la entrevista, el icono y la posicion
  FormularioUINumeros(this._hintText, this._labelText, this._entrevista, this._icono,this._posicion);




  //----------------------------------------------
  // METODOS
  //----------------------------------------------

  @override
  Widget build(BuildContext context) {
     return new TextFormField(
                    decoration: InputDecoration(
                      icon: _icono,
                      hintText: _hintText,
                      labelText: _labelText,
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                    onSaved: (val) => _entrevista.ingresarDato(_posicion, val)
                  );
  }
}





  class FormularioUIEleccionMultiple extends StatefulWidget {

  //----------------------------------------------
  // ATRIBUTOS
  //----------------------------------------------

  /// Atributo que tiene las opciones
  final List<String>  _opciones;

  /// Atributo que tiene el texto de la pregunta
  final String _labelText;

  /// Atributo que tiene la entrevista donde guardar el dato
  final Entrevista _entrevista;

  /// Atributo que tiene la posicion de la lista de la entrevista donde guardar el dato
  final int _posicion;

  /// Atributo que guarda el icono
  final Icon _icono;


  //----------------------------------------------
  // CONSTRUCTOR
  //----------------------------------------------

  /// Contructor que recibe las opciones, el labelText, la entrevista, el icono y la posicion
  FormularioUIEleccionMultiple(this._opciones, this._labelText, this._entrevista,  this._icono, this._posicion,);




  //----------------------------------------------
  // METODOS
  //----------------------------------------------

  @override
  State createState() => FormularioUIEleccionMultipleState();
    
  }

  class FormularioUIEleccionMultipleState extends State <FormularioUIEleccionMultiple>
  {
  @override
  Widget build(BuildContext context) {
     return new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon:  widget._icono,
                          labelText: widget._labelText,
                        ),
                        isEmpty: widget._entrevista.darDatos[widget._posicion]=="",
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: widget._entrevista.darDatos[widget._posicion],
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                widget._entrevista.ingresarDato(widget._posicion, newValue);
                                state.didChange(newValue);
                              });
                            },
                            items: widget._opciones.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  );
      }

  }


  class FormularioUITextoInformativo extends StatelessWidget {

  //----------------------------------------------
  // ATRIBUTOS
  //----------------------------------------------

  /// Atributo que guarda el texto
  final String _texto;

  /// Atributo que recibe el color del texto
  final Color _color;


  //----------------------------------------------
  // CONSTRUCTOR
  //----------------------------------------------

  /// Contructor que recibe un string
  FormularioUITextoInformativo(this._texto, this._color);




  //----------------------------------------------
  // METODOS
  //----------------------------------------------

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
         new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .02), // Añade espacio entre los textos
            ),

                   Align(alignment: Alignment.centerLeft,
                child: FittedBox(fit:BoxFit.scaleDown, child: new Text(_texto, style: TextStyle(fontSize: MediaQuery.of(context).size.width * .07, fontWeight: FontWeight.bold, color: _color))),
                ),
                new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .01), // Añade espacio entre los textos
            ),
      ],
    );
  }
}
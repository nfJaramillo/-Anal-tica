import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PaginaFormulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _colors = <String>['Si', 'No',""];
  List<String> _sexos = <String>['Mujer', 'Hombre',"" ];
  List<String> _medios = <String>['Radio', 'Diarios y revistas',"T.V.","Internet","" ];
  String _color = '';
  String _sexo = '';
   String _electricidad = '';
    String _gas = '';
     String _agua = '';
      String _internet = '';
       String _escuelas = '';
        String _transporte = '';
         String _informacion = '';
          String _sociedad = '';
           String _cultura = '';

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

                Align(alignment: Alignment.centerLeft,
                child: FittedBox(fit:BoxFit.scaleDown, child: new Text("Información Encuestador:", style: TextStyle(fontSize: MediaQuery.of(context).size.width * .07, fontWeight: FontWeight.bold, color: Color(0xff4D4D4D)))),
                ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Escribe nombre y apellido',
                      labelText: 'Nombre del jefe de vereda',
                    ),
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.image),
                      hintText: '',
                      labelText: 'Nombre de la vereda',
                    ),
                  ),


                  new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .02), // Añade espacio entre los textos
            ),

                   Align(alignment: Alignment.centerLeft,
                child: FittedBox(fit:BoxFit.scaleDown, child: new Text("Información Encuestado:", style: TextStyle(fontSize: MediaQuery.of(context).size.width * .07, fontWeight: FontWeight.bold, color: Color(0xff4D4D4D)))),
                ),
                new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .01), // Añade espacio entre los textos
            ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person_outline),
                      hintText: 'Escribe nombre y apellido',
                      labelText: 'Nombre de 1 de las personas visitadas',
                      
                    ),
                  ),

                  new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.person_pin_circle),
                          labelText: 'Sexo',
                        ),
                        isEmpty: _sexo == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _sexo,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _sexo = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _sexos.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                   new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Ingresa un numero de celular',
                      labelText: 'Celular',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                   new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.cake),
                      hintText: '',
                      labelText: 'Edad',
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                  ),
                   new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.business_center),
                      hintText: '',
                      labelText: 'Ocupacion',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),


                  new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .02), // Añade espacio entre los textos
            ),

                   Align(alignment: Alignment.centerLeft,
                child: FittedBox(fit:BoxFit.scaleDown, child: new Text("Situación:", style: TextStyle(fontSize: MediaQuery.of(context).size.width * .07, fontWeight: FontWeight.bold, color: Color(0xff4D4D4D)))),
                ),
                new Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * .01), // Añade espacio entre los textos
            ),


             new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.power),
                          labelText: '¿Posee servicio de energía eléctrica?',
                        ),
                        isEmpty: _electricidad == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _electricidad,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _electricidad = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                  new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.restaurant),
                          labelText: '¿Posee servicio de Gas Natural?',
                        ),
                        isEmpty: _gas == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _gas,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _gas = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                  new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.local_drink),
                          labelText: '¿…De acueducto, Alcantarillado y Recolección de Basuras?',
                        ),
                        isEmpty: _agua == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _agua,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _agua = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                   new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.wifi),
                          labelText: '¿Posee servicio de Telefonía e Internet (fija o móvil) ?',
                        ),
                        isEmpty: _internet == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _internet,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _internet = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.local_hospital),
                      hintText: 'Si no, escriba No',
                      labelText: '¿Algúno tiene una enfermedad grave? ',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),

                   new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.school),
                          labelText: '¿Hay escuelas cercanas?',
                        ),
                        isEmpty: _escuelas == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _escuelas,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _escuelas = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                     new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.departure_board),
                          labelText: '¿Hay formas de transportarse?',
                        ),
                        isEmpty: _transporte == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _transporte,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _transporte = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                   new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.book),
                          labelText: '¿Medio de informacion que utilizan mas?',
                        ),
                        isEmpty: _informacion == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _informacion,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _informacion = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _medios.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                    new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.group),
                          labelText: '¿Hay organizaciones de la sociedad civil? ',
                        ),
                        isEmpty: _sociedad == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _sociedad,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _sociedad = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                   new FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          icon: const Icon(Icons.speaker),
                          labelText: '¿Existen actividades culturales? ',
                        ),
                        isEmpty: _cultura == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            value: _cultura,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                //newContact.favoriteColor = newValue;
                                _cultura = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _colors.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ),

                  new TextFormField(
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.comment),
                      hintText: 'Si no, escriba No',
                      labelText: 'Comentarios',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  




               
                  new Container(
                      padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                      child: new RaisedButton(
                        child: const Text('Submit'),
                        onPressed: null,
                      )),
                ],
              ))),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

class PaginaDatos extends StatefulWidget
{
  @override
  PaginaDatosEstado createState() => new PaginaDatosEstado();

}
  


class PaginaDatosEstado extends State<PaginaDatos>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: new Column(
      children: <Widget>[

        Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('Compartir'),
                  onPressed: () async
                   { // get file from local store
                  final String dir =
                      (await getApplicationDocumentsDirectory()).path;
                  final String path = '$dir/data.csv';

                  ShareExtend.share(path, "file");
                 },
                ),
              ],
            ),
          ),
        ],
      ),
    ),
        
      ],
    )
  );
}
  
}
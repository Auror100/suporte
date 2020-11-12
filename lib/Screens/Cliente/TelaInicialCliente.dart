import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/*
void main() {
  runApp(MyApp());
}

 */

void main() {
  runApp(MaterialApp(
    home: TelaInicial(),
  ));
}

class TelaInicial extends StatelessWidget {
  // ignore: non_constant_identifier_names
  var CardColors= Colors.white;
  @override
  Widget build(BuildContext context) {

    // APPBAR PADRÃO PARA TODOS USUARIOS
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Central de problemas'),
      ),


      //LISTA FIXA DE CARDS
      body: ListView(

        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Card(
            color: CardColors,
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),

              child: Column(

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Center(
                      child: Text('Problema 1'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(180, 50, 10, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Text('a');
                      },
                      color: Colors.blue,
                      child: Text(
                        'Selecionar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: CardColors,
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Center(
                      child: Text('Problema 2'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(180, 50, 10, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Text('a');
                      },
                      color: Colors.blue,
                      child: Text(
                        'Selecionar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: CardColors,
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Center(
                      child: Text('Problema 3'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(180, 50, 10, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Text('a');
                      },
                      color: Colors.blue,
                      child: Text(
                        'Selecionar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: CardColors,
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                    child: Center(
                      child: Text('Problema 4'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(180, 50, 10, 0),
                    child: RaisedButton(
                      onPressed: () {
                        Text('a');
                      },
                      color: Colors.blue,
                      child: Text(
                        'Selecionar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),


      // DRAWER PADRÃO OPÇÕES MODIFICAVEIS
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Cliente',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,

                    ),

                  ),
                  Icon(Icons.account_circle,
                    size: 100,)
                ],
              ),

            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Conta'),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Solicitações'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
        ),
      ),
    );
  }
}

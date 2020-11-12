import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NovaSolicitacoesTecnico(),
  ));
}

class NovaSolicitacoesTecnico extends StatefulWidget {
  @override
  _NovaSolicitacoesTecnicoState createState() => _NovaSolicitacoesTecnicoState();
}

class _NovaSolicitacoesTecnicoState extends State<NovaSolicitacoesTecnico> {
  //LISTA PARA TESTE
  List<String> lista = ['Roraima', 'Poa'];
  List<String> problem = ['bug no programa', 'crashou'];
  List<String> client = ['fulano de tal', 'carlos'];
  List<String> descricao = ['Do nada parou de funcionar', 'desligou sozinho'];
  List<String> tecnico = ['renato', 'mirosmar'];

  //PARA SABER O STEP
  var _index = 0;

  // P
  var _contadorDeSteps;
  List<bool> ativo = [/*0*/false,/*1*/false, /*2*/false,/*3*/false,/*4*/false];

  // TESTE DE DATA
  String dataFalsa = DateTime.now().day.toString() +
      '/' +
      DateTime.now().month.toString() +
      '/' +
      DateTime.now().year.toString();

  String horaFalsa = DateTime.now().hour.toString() +
      ':' +
      DateTime.now().minute.toString() +
      ':' +
      DateTime.now().second.toString();

  @override
  Widget build(BuildContext context) {
    // APPBAR PADRÃO PARA TODOS USUARIOS
    return Scaffold(
      appBar: AppBar(
        title: Text('Novas solicitações'),
        backgroundColor: Colors.red,
      ),

      //

      // DRAWER PADRÃO OPÇÕES MODIFICAVEIS
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Tecnico',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 100,
                  )
                ],
              ),
            ),
            ListTile(

              leading: Icon(Icons.assignment,color: Colors.red,),

              title: Text('Novas Solicitações',style: TextStyle(color: Colors.red),),

            ),
            ListTile(
              leading: Icon(Icons.hourglass_full),
              title: Text('Solicitações em andamento'),
            ),
            ListTile(
              leading: Icon(Icons.assignment_turned_in),
              title: Text('Histórico'),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
            ),
          ],
        ),
      ),

      //

      //CRIADOR DE LISTAS DINAMICAS
      body: Container(
        color: Colors.white,
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: const EdgeInsets.all(10),

                  // CRIADOR DE EXPANSOES
                  child: ExpansionPanelList.radio(
                    expansionCallback: (int index, bool isExpanded) {
                      setState(() {
                        _index = 0;
                        ativo[0] = true;
                        if (_index == 0) {
                          ativo[0] = true;
                          ativo[1] = false;
                          ativo[2] = false;
                          ativo[3] = false;
                          ativo[4] = false;
                        }
                      });
                    },
                    children: [
                      ExpansionPanelRadio(
                          value: lista[index],
                          headerBuilder: (BuildContext context, bool isExpanded) {

                            // LISTA DE ICONES
                            return ListTile(
                                title: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.report_problem,
                                          color: Colors.orange,
                                          size: 25.0,
                                        ),
                                        Text('Problema:' + problem[index]),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          color: Colors.blue,
                                          size: 25.0,
                                        ),
                                        Text('Cliente:' + client[index]),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.build,
                                          color: Colors.blueGrey,
                                          size: 25.0,
                                        ),
                                        Text('Tècnico:' + tecnico[index]),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.red,
                                          size: 25.0,
                                        ),
                                        Text('Localização:' + lista[index]),
                                      ],
                                    ),
                                  ],
                                ));
                            //
                          },
                          body: ListTile(
                            title: Column(
                              children: <Widget>[
                                //DESCRIÇÃO

                                Center(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.content_paste,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                      Text('Descrição:'),
                                      Text(descricao[index]),

                                      RaisedButton(
                                        color: Colors.blue,
                                        onPressed: () {
                                          Text('a');
                                        },
                                        child: Text(
                                          'Atender chamado',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),



                              ],
                            ),
                          )),
                    ],
                  )
              );
            }),
      ),
    );
  }
}

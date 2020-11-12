import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HistoricoTecnico(),
  ));
}

class HistoricoTecnico extends StatefulWidget {
  @override
  _HistoricoTecnicoState createState() => _HistoricoTecnicoState();
}

class _HistoricoTecnicoState extends State<HistoricoTecnico> {
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
        title: Text('Histórico'),
        backgroundColor: Colors.green,
      ),

      //

      // DRAWER PADRÃO OPÇÕES MODIFICAVEIS
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
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

              leading: Icon(Icons.assignment),

              title: Text('Novas Solicitações'),

            ),
            ListTile(
              leading: Icon(Icons.hourglass_full),
              title: Text('Solicitações em andamento'),
            ),
            ListTile(
              leading: Icon(Icons.assignment_turned_in,color: Colors.green,),
              title: Text('Histórico',style: TextStyle(color: Colors.blueAccent),),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Perfil'),
            ),
          ],
        ),
      ),

      //

      //CRIADOR DE LISTAS DINAMICAS
      body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.all(10),

                // CRIADOR DE EXPANSOES
                child:ExpansionPanelList.radio(

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
                    // Column
                    ExpansionPanelRadio(

                        value: lista[index],
                        headerBuilder: (BuildContext context, bool isExpanded) {

                          // LISTA DE ICONES
                          return Container(
                            color: Colors.white,
                            child: ListTile(

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
                                )),
                          );
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
                                  ],
                                ),
                              ),

                              //

                              // FUNÇÃO DE STEPS
                              Stepper(
                                steps: [

                                  Step(//0
                                    title: Text('Abertura'),
                                    content: Column(
                                      children: [
                                        Text('Data ->  ' + dataFalsa),
                                        Text('Hora ->  ' + horaFalsa),
                                        Text("INDEX: $_index"),
                                      ],
                                    ),
                                    isActive: ativo[0],
                                  ),

                                  Step(//1
                                    title: Text('Aceitação de chamado'),
                                    content: Column(
                                      children: [
                                        Text('Data ->  ' + dataFalsa),
                                        Text('Hora ->  ' + horaFalsa),
                                        Text("INDEX: $_index"),
                                      ],
                                    ),
                                    isActive: ativo[1],
                                  ),

                                  Step(//2
                                    title: Text('Trânsito de atendimento'),
                                    content: Column(
                                      children: [
                                        Text('Data ->  ' + dataFalsa),
                                        Text('Hora ->  ' + horaFalsa),
                                        Text("INDEX: $_index"),
                                      ],
                                    ),
                                    isActive: ativo[2],
                                  ),

                                  Step(//3
                                    title: Text('Chegada no cliente '),
                                    content: Column(
                                      children: [
                                        Text('Data ->  ' + dataFalsa),
                                        Text('Hora ->  ' + horaFalsa),
                                        Text("INDEX: $_index"),
                                      ],
                                    ),
                                    isActive: ativo[3],
                                  ),

                                  Step(//4
                                    title: Text('Fechamento do chamado'),
                                    content: Column(
                                      children: [
                                        Text('Data ->  ' + dataFalsa),
                                        Text('Hora ->  ' + horaFalsa),
                                        Text("INDEX: $_index"),
                                      ],
                                    ),
                                    isActive: ativo[4],
                                  ),
                                ],
                                currentStep: _index,
                                onStepTapped: (index) {
                                  setState(() {
                                    _index = index;
                                    if (_index == 0) {
                                      ativo[0] = true;
                                      ativo[1] = false;
                                      ativo[2] = false;
                                      ativo[3] = false;
                                      ativo[4] = false;
                                    } else if (_index == 1) {
                                      ativo[0] = false;
                                      ativo[1] = true;
                                      ativo[2] = false;
                                      ativo[3] = false;
                                      ativo[4] = false;
                                    } else if(_index==2) {
                                      ativo[0] = false;
                                      ativo[1] = false;
                                      ativo[2] = true;
                                      ativo[3] = false;
                                      ativo[4] = false;
                                    }else if(_index ==3){
                                      ativo[0] = false;
                                      ativo[1] = false;
                                      ativo[2] = false;
                                      ativo[3] = true;
                                      ativo[4] = false;
                                    }else{
                                      ativo[0] = false;
                                      ativo[1] = false;
                                      ativo[2] = false;
                                      ativo[3] = false;
                                      ativo[4] = true;
                                    }
                                  });
                                },
                                controlsBuilder: (BuildContext context,
                                    {VoidCallback onStepContinue,
                                      VoidCallback onStepCancel}) =>
                                    Container(),
                              )

                              //


                            ],
                          ),
                        )),

                  ],
                ),
            );
          }),
    );
  }
}

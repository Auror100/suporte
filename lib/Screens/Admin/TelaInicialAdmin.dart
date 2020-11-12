import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TelaInicialAdmin(),
  ));
}

class TelaInicialAdmin extends StatefulWidget {
  @override

  _TelaInicialAdminState createState() => _TelaInicialAdminState();

}

class _TelaInicialAdminState extends State<TelaInicialAdmin> {

  initState() {
    super.initState();
    // Add listeners to this class
      lista= naoAtendidos;
      descricao= naoAtendidosTexto;
    }

  int _itemSelecionado = 0;
  List<String> naoAtendidos = ['Nao atendido'];
  List<String> naoAtendidosTexto = ['Nao atendido texto'];

  List<String> emAtendimento = ['Em atendimento'];
  List<String> emAtendimentoTexto = ['Em atendimento texto'];

  List<String> atendido = ['Atendido'];
  List<String> atendidoTexto = ['Atendido texto'];

  List<String> lista = ['Roraima', 'Poa'];
  List<String> problem = ['bug no programa', 'crashou'];
  List<String> client = ['fulano de tal', 'carlos'];
  List<String> descricao = ['Do nada parou de funcionar', 'desligou sozinho'];
  List<String> tecnico = ['renato', 'mirosmar'];
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




  void _qualListaMostrar(){
    if(_itemSelecionado == 1){
       lista = emAtendimento;
       descricao = emAtendimentoTexto;
    }else if(_itemSelecionado == 2){
      lista = atendido;
      descricao = atendidoTexto;
    }else{
      lista = naoAtendidos;
      descricao= naoAtendidosTexto;
    }
  }

  dynamic  corBackground=Colors.red[100];


   void _clicouNaTab(int index){
     setState(() {
       _itemSelecionado = index;
       if(_itemSelecionado==0){
         corBackground=Colors.red[100];
       }else if(_itemSelecionado==1){
         corBackground=Colors.yellow[100];
       }else{
         corBackground=Colors.green[100];
       }
       _qualListaMostrar();
     });

   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      //

      // DRAWER PADRÃO OPÇÕES MODIFICAVEIS
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Admin',
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
              leading: Icon(Icons.history),
              title: Text('Histórico'),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Clientes'),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Técnicos'),
            ),
          ],
        ),
      ),

      body: Container(
        color:corBackground,
        child: ListView.builder(

            itemCount:lista.length,
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
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event_busy),
            label: 'Não atendidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Em atendimento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            label: 'Atendidos',
          ),

        ],
        currentIndex: _itemSelecionado,
        onTap: _clicouNaTab,
      ),

    );
  }
}

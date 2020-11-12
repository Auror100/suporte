import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pqn/Screens/Admin/HistoricoAdmin.dart';
import 'package:pqn/Screens/Admin/TelaInicialAdmin.dart';
import 'package:pqn/Screens/Cliente/HistoricoCliente.dart';
import 'package:pqn/Screens/Cliente/SolicitacoesEmAndamentoCliente.dart';
import 'package:pqn/Screens/Tecnico/HistoricoTecnico.dart';
import 'package:pqn/Screens/Tecnico/TelaInicialTecnico.dart';
import 'package:pqn/Screens/Tecnico/NovaSolicitacoesTecnico.dart';
/*
void main() {
  runApp(MyApp());
}

 */

void main() {
  runApp(MaterialApp(
      home:HistoricoCliente(),
  ));
}

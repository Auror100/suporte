
/*
import 'package:flutter/material.dart';

expansionCallback: (int index, bool isExpanded) {
setState(() {

});
},
children: [

ExpansionPanel(

headerBuilder: (BuildContext context, bool isExpanded) {

return ListTile(

title: Column(

children: [

Row(

children: [
Icon(Icons.report_problem,color:Colors.orange,size: 25.0,),
Text('Problema:'+problem[index]),
],
),

Row(
children: [
Icon(Icons.person,color:Colors.blue,size: 25.0,),
Text('Cliente:'+client[index]),


],
),
Row(
children: [
Icon(Icons.build,color:Colors.blueGrey,size: 25.0,),
Text('Tècnico:'+tecnico[index]),

],
),
Row(
children: [
Icon(Icons.location_on,color:Colors.red,size: 25.0,),
Text('Localização:'+lista[index]),

],
),
],

)

);
},
body: ListTile(

title: Column(
children: <Widget>[

Center(
child: Column(
children: [
Icon(Icons.content_paste,color: Colors.grey,size: 25,),
Text('Descrição:'),
Text(descricao[index]),

],
),
),

Stepper(

steps:[


Step(
title: Text('Abertura'),
content: Text(DateTime.utc(2020,12,1).toString()),
isActive:estadoStep1,


),
Step(
title: Text('Aceitação de chamado'),
content: Text(DateTime.utc(2020,12,1).toString()),
isActive: estadoStep2,
),
Step(
title: Text('Trânsito de atendimento'),
content: Text(DateTime.utc(2020,12,1).toString()),
isActive: estadoStep3,
),

],
currentStep: index,
onStepTapped: (index){
setState(() {
if(index==0){
estadoStep1=true;
estadoStep2=false;
estadoStep3=false;
}else if(index==1){
estadoStep1=false;
estadoStep2=true;
estadoStep3=false;
}else{
estadoStep1=false;
estadoStep2=false;
estadoStep3=true;
}
index= index;
});

},

controlsBuilder: (BuildContext context,
{VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
Container(),
)


],
),
),
canTapOnHeader: true,
isExpanded: true,
),
],

 */

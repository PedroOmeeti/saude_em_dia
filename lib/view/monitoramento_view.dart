import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:saude_em_dia/components/card_utiliza.dart';
import 'package:saude_em_dia/components/espacamento_h.dart';
import 'package:saude_em_dia/components/titulo1.dart';

class MonitoramentoView extends StatefulWidget {
  
  const MonitoramentoView({super.key});

  @override
  State<MonitoramentoView> createState() => _MonitoramentoViewState();
}

class _MonitoramentoViewState extends State<MonitoramentoView> {
  final List<Feature> features = [
    Feature(
      title: "Peso",
      color: Colors.cyan,
      data: [0.8, 0.7, 0.5, 0.5, 0.2],
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
          children: [
            EspacamentoH(h: 15),
            Center(child: Titulo1(texto: 'Monitoramento da sua saúde', tamanho: 20)),
            EspacamentoH(h: 15),
            
            Container(
              child: LineGraph(
                features: features,
                size: Size(400, 280),
                labelX: ['Sem. 1', 'Sem. 2', 'Sem. 3', 'Sem. 4', 'Sem. 5'],
                labelY: ['75kg', '80kg', '85kg', '90kg'],
                showDescription: false,
                graphColor: Color.fromARGB(77, 0, 0, 0),
                graphOpacity: 0.3,
                verticalFeatureDirection: false,
                descriptionHeight: 130,
              ),
            ),
         
            EspacamentoH(h: 15),
         
            GestureDetector(
              onDoubleTap: () => {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  title: 'O que você deseja fazer com esta informação?',
                  text: 'Peso: 85kg',
                  confirmBtnText: 'Editar',
                  cancelBtnText: 'Deletar',
                  confirmBtnColor: Color.fromARGB(255, 10, 131, 105),
                  cancelBtnTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  onConfirmBtnTap: () {},
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  }, 
                )
              },
              child: CardUtiliza(
                titulo: 'Peso: 85kg', 
                descricao: 'Você chegou a este peso no dia 06/05/2024', 
                icone: Icon(Icons.monitor_weight, size: 30),
                cor: Colors.cyan
              ),
            ),
            GestureDetector(
              onDoubleTap: () => {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  title: 'O que você deseja fazer com esta informação?',
                  text: '80kg',
                  confirmBtnText: 'Editar',
                  cancelBtnText: 'Deletar',
                  confirmBtnColor: Color.fromARGB(255, 10, 131, 105),
                  cancelBtnTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  onConfirmBtnTap: () {},
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  }, 
                )
              },
              child: CardUtiliza(
                titulo: 'Peso: 80kg', 
                descricao: 'Você chegou a este peso no dia 13/05/2024', 
                icone: Icon(Icons.monitor_weight, size: 30),
                cor: Colors.cyan
              ),
            ),
            GestureDetector(
              onDoubleTap: () => {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  title: 'O que você deseja fazer com esta informação?',
                  text: '75kg',
                  confirmBtnText: 'Editar',
                  cancelBtnText: 'Deletar',
                  confirmBtnColor: Color.fromARGB(255, 10, 131, 105),
                  cancelBtnTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  onConfirmBtnTap: () {},
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  }, 
                )
              },
              child: CardUtiliza(
                titulo: 'Peso: 75kg', 
                descricao: 'Você chegou a este peso no dia 20/05/2024', 
                icone: Icon(Icons.monitor_weight, size: 30),
                cor: Colors.cyan
              ),
            ),
            GestureDetector(
              onDoubleTap: () => {
                QuickAlert.show(
                  context: context,
                  type: QuickAlertType.confirm,
                  title: 'O que você deseja fazer com esta informação?',
                  text: '70kg',
                  confirmBtnText: 'Editar',
                  cancelBtnText: 'Deletar',
                  confirmBtnColor: Color.fromARGB(255, 10, 131, 105),
                  cancelBtnTextStyle: TextStyle(color: Colors.red, fontSize: 20),
                  onConfirmBtnTap: () {},
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  }, 
                )
              },
              child: CardUtiliza(
                titulo: 'Peso: 70kg', 
                descricao: 'Você chegou a este peso no dia 27/05/2024', 
                icone: Icon(Icons.monitor_weight, size: 30),
                cor: Colors.cyan
              ),
            ),
            
         
          ],
         ),
       )
    );
  }
}


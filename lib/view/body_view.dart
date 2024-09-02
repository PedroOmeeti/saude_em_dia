import 'package:flutter/material.dart';
import 'package:saude_em_dia/components/card_utiliza.dart';
import 'package:saude_em_dia/components/espacamento_h.dart';
import 'package:saude_em_dia/components/titulo1.dart';

class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(         
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 230, 229),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromARGB(255, 10, 131, 105), // Cor da borda
                          width: 2,
                        ), // Arredonda todas as bordas em 20 pixels
                      ),      
                      
                      child: Column(
                        children: [
                          EspacamentoH(h: 15),
                          Titulo1(texto: 'Quantidade de Passos', tamanho: 15),
                          EspacamentoH(h: 20),
                          Icon(Icons.directions_walk, 
                            size: 50
                          ),
                          EspacamentoH(h: 15),
                          Text('3634436',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 10, 131, 105)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(                                
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      // color: Color.fromARGB(255, 207, 224, 221),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 225, 230, 229),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromARGB(255, 10, 131, 105), // Cor da borda
                          width: 2,
                        ) // Arredonda todas as bordas em 20 pixels
                      ),
                      child: Column(
                        children: [
                          EspacamentoH(h: 15),
                          Titulo1(texto: 'Pressão Arterial', tamanho: 15),
                          EspacamentoH(h: 20),
                          Icon(Icons.gas_meter,
                            size: 50,
                          ),
                          EspacamentoH(h: 15),
                          Text('80/120 mmHg',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 10, 131, 105)
                            ),
                          )
                        ]
                      ),
                    ),
                  ),
                ),
               
              ],
            ),
        
            EspacamentoH(h: 15),
        
            Titulo1(texto: 'Próximas Consultas', tamanho: 14),
        
            EspacamentoH(h: 15),
        
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: CardUtiliza(
                titulo: 'Cardiologista', 
                descricao: 'A Consulta será no dia 20/04 as 10h', 
                icone: Icon(Icons.medical_information, color: Color.fromARGB(255, 10, 131, 105)),
                cor: Color.fromARGB(255, 10, 131, 105)),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
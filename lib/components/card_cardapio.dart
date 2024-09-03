import 'package:flutter/material.dart';
import 'package:saude_em_dia/components/titulo1.dart';

class CardCardapio extends StatelessWidget {
  final String titulo, descricao, imagem;
  // final double preco;
  const CardCardapio({super.key, required this.titulo, required this.descricao, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipOval(
                    child: Image(image: AssetImage(imagem),
                    width: 80,),
                  ),
                  Expanded(
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Titulo1(texto: titulo, tamanho: 15),
                        ConstrainedBox(
                          constraints: BoxConstraints(maxHeight: 50),
                          child: Text(
                            descricao,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: Text('R\$ $preco',
                        //     textAlign: TextAlign.end,
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.bold,
                        //       color: Colors.greenAccent
                        //     ),  
                        //   ),
                        // )
                        
                      
                      ],),
                  )
                )
                  
                  
                  
              ],),
            ),
          );
  }
}
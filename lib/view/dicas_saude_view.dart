import 'package:flutter/material.dart';
import 'package:saude_em_dia/components/card_cardapio.dart';
import 'package:saude_em_dia/components/espacamento_h.dart';
import 'package:saude_em_dia/components/titulo1.dart';

class DicasSaudeView extends StatefulWidget {
  const DicasSaudeView({super.key});

  @override
  State<DicasSaudeView> createState() => _DicasSaudeViewState();
}

class _DicasSaudeViewState extends State<DicasSaudeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            EspacamentoH(h: 15),
            Center(child: Titulo1(texto: 'Dicas de Saúde', tamanho: 20)),
            EspacamentoH(h: 15),
            
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear),
                labelText: 'Pesquisar',
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
              ),
            ),

            EspacamentoH(h: 15),

            CardCardapio(
              titulo: 'Se Hidatre', 
              descricao: 'Beba água para se hidratar', 
              imagem: 'assets/images/beba_agua.png', 
            ),
            CardCardapio(
              titulo: 'Se Hidatre', 
              descricao: 'Beba água para se hidratar', 
              imagem: 'assets/images/beba_agua.png', 
            ),
            CardCardapio(
              titulo: 'Se Hidatre', 
              descricao: 'Beba água para se hidratar', 
              imagem: 'assets/images/beba_agua.png', 
            ),
            CardCardapio(
              titulo: 'Se Hidatre', 
              descricao: 'Beba água para se hidratar', 
              imagem: 'assets/images/beba_agua.png', 
            ),


          ],
        ),
      )
    );
  }
}
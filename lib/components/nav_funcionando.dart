import 'package:flutter/material.dart';
import 'package:saude_em_dia/view/body_view.dart';
import 'package:saude_em_dia/view/monitoramento_view.dart';

class NavFuncionando extends StatefulWidget {
  final pages;
  const NavFuncionando({super.key, this.pages});
  
  @override
  State<NavFuncionando> createState() => _NavFuncionandoState();
}

class _NavFuncionandoState extends State<NavFuncionando> {
  int _selectedIndex = 0;

  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment),
            label: 'Monitoramento',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.donut_large),
            label: 'Dicas de Saúde',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Color.fromARGB(255, 10, 131, 105),
        onTap: _onItemTapped,
    );
  }
}
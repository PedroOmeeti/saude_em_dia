import 'package:flutter/material.dart';
import 'package:saude_em_dia/components/fab.dart';
import 'package:saude_em_dia/view/body_view.dart';
import 'package:saude_em_dia/view/monitoramento_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    BodyView(),
    MonitoramentoView(),
    Center(child: Text('Dicas de Saúde')),
    Center(child: Text('Perfil')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {      
        '/monitoramento': (context) => MonitoramentoView(),
      },
      theme: ThemeData(
        appBarTheme:
          AppBarTheme(backgroundColor: Color.fromARGB(255, 10, 131, 105)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Saúde em Dia',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: _pages[_selectedIndex],
        floatingActionButton: Fab(),
        bottomNavigationBar: BottomNavigationBar(
          
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
           selectedItemColor: Color.fromARGB(255, 10, 131, 105),
           onTap: _onItemTapped,
           unselectedItemColor: Color.fromARGB(255, 42, 44, 44),
            
        ),
      ),
    );
  }
}


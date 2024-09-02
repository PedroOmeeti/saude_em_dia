import 'package:flutter/material.dart';


class Fab extends StatefulWidget {
  const Fab({super.key});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 10, 131, 105),
          foregroundColor: Colors.white,
    );
  }
}
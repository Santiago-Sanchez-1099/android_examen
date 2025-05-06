
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff32121), // Fondo rojo
        title: const Center(
          child: Text(
            'Pantalla inicial',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 150),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bottom_nav_bar');
              },
              child: const Text('BottomNavigationBar (Widget 9)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/drawer');
              },
              child: const Text('Drawer (Widget 11)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/timer');
              },
              child: const Text('Timer (Widget 19)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/elevated_button');
              },
              child: const Text('ElevatedButton (Widget 29)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cliprect');
              },
              child: const Text('ClipRect (Widget 42)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stepper');
              },
              child: const Text('Stepper (Widget 55)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/interactive_viewer');
              },
              child: const Text('InteractiveViewer (Widget 69)'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/safe_area');
              },
              child: const Text('SafeArea (Widget 79)'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffd9926), // Fondo naranja
        title: const Center(
          child: Text(
            'Widget 79',
            style: TextStyle(
              color: Color(0xff000000), // Letra negra
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://www.w3schools.com/w3images/fjords.jpg', // URL de imagen funcional
              height: 250,
              fit: BoxFit.cover, // Ajuste de la imagen
            ),
            Image.network(
              'https://www.w3schools.com/w3images/lights.jpg', // URL de imagen funcional
              height: 200,
              fit: BoxFit.cover, // Ajuste de la imagen
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Regresa a pantalla inicial
              },
              child: const Text('Pantalla inicial'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

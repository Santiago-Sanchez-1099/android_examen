import 'package:flutter/material.dart';
import 'package:android_examen/main.dart';
import 'package:android_examen/pages_drawer/first_page.dart';
import 'package:android_examen/pages_drawer/second_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffd9926), // Fondo naranja
        title: const Center(
          child: Text(
            'Widget 16',
            style: TextStyle(
              color: Color(0xff000000), // Letra negra
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: const MyDrawer(), // Reemplazamos Widget016 con MyDrawer
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: const Text("D R A W E R"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Page 1"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Page 2"),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

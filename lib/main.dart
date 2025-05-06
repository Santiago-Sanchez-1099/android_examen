import 'package:flutter/material.dart';
import 'package:android_examen/pagina_inicial.dart'; // Si existe PaginaInicial
import 'package:android_examen/pagina_bottom_nav_bar.dart'; // Asegúrate que BottomNavBar esté aquí
import 'package:android_examen/pagina_drawer.dart'; // Asegúrate de que DrawerWidget exista
import 'package:android_examen/pagina_timer.dart'; // Asegúrate de que TimerWidget exista
import 'package:android_examen/pagina_elevated_button.dart'; // Asegúrate de que ElevatedButtonWidget exista
import 'package:android_examen/pagina_cliprect.dart'; // Asegúrate de que ClipRectWidget exista
import 'package:android_examen/pagina_stepper.dart'; // Asegúrate de que StepperWidget exista
import 'package:android_examen/pagina_interactive_viewer.dart'; // Asegúrate de que InteractiveViewerWidget exista
import 'package:android_examen/pagina_safe_area.dart'; // Asegúrate de que SafeAreaWidget exista

void main() => runApp(const MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaInicial(),
        '/bottom_nav_bar': (context) => const BottomNavBar(),
        '/drawer': (context) => const DrawerWidget(),
        '/timer': (context) => const TimerWidget(),
        '/elevated_button': (context) => const ElevatedButtonWidget(),
        '/cliprect': (context) => const ClipRectWidget(),
        '/stepper': (context) => const StepperWidget(),
        '/interactive_viewer': (context) => const InteractiveViewerWidget(),
        '/safe_area': (context) => const SafeAreaWidget(),
      },
    );
  }
}

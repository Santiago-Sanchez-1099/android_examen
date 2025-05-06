import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffd9926), // Fondo naranja
        title: const Center(
          child: Text(
            'Widget 55',
            style: TextStyle(
              color: Color(0xff000000), // Letra negra
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
            child: Stepper(
              steps: const [
                Step(
                  title: Text('Paso 1'),
                  content: Text('Información del paso 1'),
                ),
                Step(
                  title: Text('Paso 2'),
                  content: Text('Información del paso 2'),
                ),
                Step(
                  title: Text('Paso 3'),
                  content: Text('Información del paso 3'),
                ),
                Step(
                  title: Text('Paso 4'),
                  content: Text('Información del paso 4'),
                ),
              ],
              onStepTapped: (int newIndex) {
                setState(() {
                  _currentStep = newIndex;
                });
              },
              currentStep: _currentStep,
              onStepContinue: () {
                if (_currentStep < 3) {
                  setState(() {
                    _currentStep += 1;
                  });
                }
              },
              onStepCancel: () {
                if (_currentStep > 0) {
                  setState(() {
                    _currentStep = 0;
                  });
                }
              },
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volver a la pantalla inicial
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

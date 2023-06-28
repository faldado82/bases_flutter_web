import 'package:bases_flutter_web/ui/shared/custom_app_menu.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text(
            'Contador Provider',
            style: TextStyle(fontSize: 25),
          ),
          //! RESPONSIVE
          // Para adaptar el texto a la pantalla utilizamos FittedBox y su propiedad BoxFit.contain en el "fit"
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Contador: $counter',
                style:
                    const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButtom(
                  text: 'Incrementar',
                  color: Colors.green,
                  onPressed: () => setState(() => counter++)),
              CustomFlatButtom(
                  text: 'Decrementar',
                  color: Colors.red,
                  onPressed: () => setState(() => counter--)),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

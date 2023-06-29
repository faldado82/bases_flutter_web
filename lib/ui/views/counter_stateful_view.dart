import 'package:bases_flutter_web/ui/shared/custom_app_menu.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CounterStatefulView extends StatefulWidget {
  const CounterStatefulView({super.key});

  @override
  State<CounterStatefulView> createState() => _CounterStatefulViewState();
}

class _CounterStatefulViewState extends State<CounterStatefulView> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text(
            'Contador Stateful',
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
      );
  }
}

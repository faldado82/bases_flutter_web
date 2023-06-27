import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador: $counter',
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
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
          )
        ],
      ),
    );
  }
}

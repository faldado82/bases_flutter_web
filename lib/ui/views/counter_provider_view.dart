import 'package:bases_flutter_web/providers/counter_provider.dart';
import 'package:bases_flutter_web/ui/shared/custom_app_menu.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(), child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
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
              'Contador: ${counterProvider.counter}',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButtom(
                text: 'Incrementar',
                color: Colors.green,
                onPressed: () => counterProvider.increment()),
            CustomFlatButtom(
                text: 'Decrementar',
                color: Colors.red,
                onPressed: () => counterProvider.decrement()),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}

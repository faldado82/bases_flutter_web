import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CounterStatefulView extends StatefulWidget {
  final String base;

  const CounterStatefulView({super.key, required this.base});

  @override
  State<CounterStatefulView> createState() => _CounterStatefulViewState();
}

class _CounterStatefulViewState extends State<CounterStatefulView> {
  int counter = 10;

  @override
  void initState() {
    super.initState();
    // si el parse del string a numero es nulo 
    // o no se puede parsear porque contiene caracteres
    // el counter tendra valor 10
    if(int.tryParse(widget.base) != null) counter = int.parse(widget.base);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // las secciones comentadas se dejaron de usar
        // para la implementacion correcta de la navegacion
        // esto mismo se realizo para que no se redibujara innecesariamente
        // const CustomAppMenu(),
        // const Spacer(),
        const FittedBox(
          fit: BoxFit.contain,
          child: Text(
            'Contador Stateful',
            style: TextStyle(fontSize: 25),
          ),
        ),
        //! RESPONSIVE
        // Para adaptar el texto a la pantalla utilizamos FittedBox y su propiedad BoxFit.contain en el "fit"
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contador: $counter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Row(
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
        ),
        //const Spacer(),
      ],
    );
  }
}

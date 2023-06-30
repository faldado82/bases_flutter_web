import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Error 404',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Page not found',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          CustomFlatButtom(
            text: 'Regresar',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
          )
        ],
      ),
    );
  }
}

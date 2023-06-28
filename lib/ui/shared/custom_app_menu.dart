import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 100,
      color: Colors.red,
      child: Row(
        children: [
          CustomFlatButtom(
            text: 'Contador Stateful',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Otra Pagina',
            onPressed: () => Navigator.pushNamed(context, '/otraPagina'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

import 'package:bases_flutter_web/services/navigation_service.dart';
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
            // Debido al servicio utilizado, debemos implementar el uso del navigationService
            // para la correcta navegacion entre rutas.
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () => navigationService.navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () => navigationService.navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Otra Pagina',
            // Esta pagina no existe es para mostrar error 404
            // onPressed: () => Navigator.pushNamed(context, '/otraPagina'),
            onPressed: () => navigationService.navigateTo('/otraPagina'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

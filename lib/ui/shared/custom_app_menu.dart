import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/locator.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth > 630)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: [
          CustomFlatButtom(
            text: 'Contador Stateful',
            // Debido al servicio utilizado, debemos implementar el uso del navigationService
            // para la correcta navegacion entre rutas.
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Otra Pagina',
            // Esta pagina no existe es para mostrar error 404
            // onPressed: () => Navigator.pushNamed(context, '/otraPagina'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/otraPagina'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      color: Colors.red,
      child: Column(
        children: [
          CustomFlatButtom(
            text: 'Contador Stateful',
            // Debido al servicio utilizado, debemos implementar el uso del navigationService
            // para la correcta navegacion entre rutas.
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 20),
          CustomFlatButtom(
            text: 'Otra Pagina',
            // Esta pagina no existe es para mostrar error 404
            // onPressed: () => Navigator.pushNamed(context, '/otraPagina'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/otraPagina'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

import 'package:bases_flutter_web/router/route_generator.dart';
import 'package:bases_flutter_web/services/navigation_service.dart';
import 'package:bases_flutter_web/ui/layout/main_layout_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rutas',
        initialRoute: '/stateful',

        // Como forma de aprendizaje se utilizaron "routes" definidas
        // las cuales tenian integrada la navegacion y se redibujaban innecesariamente
        // para ello se implementaron las "views" y se navega de forma diferente.
        // Ahora tenemos un servicio para navegar, el cual se encarga de ir a determinada ruta definida o ir atras.
        // routes: {
        //   '/stateful': (_) => const CounterStatefulPage(),
        //   '/provider': (_) => const CounterProviderPage(),
        //   '/error404': (_) => const Page404(),
        // },

        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: navigationService.navigatorKey,
        builder: (_, child) {
          return MainLayoutPage(child: child!);
        });
  }
}

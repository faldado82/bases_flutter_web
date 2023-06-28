import 'package:bases_flutter_web/router/route_generator.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas',
      initialRoute: '/stateful',
      
      // routes: {
      //   '/stateful': (_) => const CounterStatefulPage(),
      //   '/provider': (_) => const CounterProviderPage(),
      //   '/error404': (_) => const Page404(),
      // },
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

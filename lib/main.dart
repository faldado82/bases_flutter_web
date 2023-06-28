import 'package:flutter/material.dart';
import 'package:bases_flutter_web/router/router_generator.dart';
import 'package:bases_flutter_web/ui/pages/counter_stateful_page.dart';
import 'package:bases_flutter_web/ui/pages/counter_provider_page.dart';
import 'package:bases_flutter_web/ui/pages/page_404.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas',
      initialRoute: '/stateful',
      routes: {
        '/stateful': (_) => const CounterStatefulPage(),
        '/provider': (_) => const CounterProviderPage(),
        '/error404': (_) => const Page404(),
      },
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}

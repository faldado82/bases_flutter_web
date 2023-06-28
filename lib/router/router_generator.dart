import 'package:bases_flutter_web/ui/pages/counter_stateful_page.dart';
import 'package:bases_flutter_web/ui/pages/page_404.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return MaterialPageRoute(builder: (_) => const CounterStatefulPage());
      case '/provider':
        return MaterialPageRoute(builder: (_) => const CounterStatefulPage());
      default:
        return MaterialPageRoute(builder: (_) => const Page404());
    }
  }
}

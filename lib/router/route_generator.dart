import 'package:bases_flutter_web/ui/pages/counter_provider_page.dart';
import 'package:bases_flutter_web/ui/pages/counter_stateful_page.dart';
import 'package:bases_flutter_web/ui/pages/page_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterStatefulPage(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(const Page404(), '/error404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 100),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                linearTransition: true,
                child: child,
              ));
  }
}

// NOTA: En caso de querer una transicion en web y otra diferente en movil,
// debemos importar el 'package:flutter/foundation.dart' show kIsWeb;
// de esta manera podemos hacer la condicional en el transition builder
// usando el FadeTransition cuando es Web y
// usando el Cupertino Page Transition cuando es un movil o tableta
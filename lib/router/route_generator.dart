import 'package:bases_flutter_web/ui/views/counter_provider_view.dart';
import 'package:bases_flutter_web/ui/views/counter_stateful_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// esta clase ya no se usa, 
// se implemento router en su lugar
// como forma de aprendizaje.
// se dejo como referencia
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterStatefulView(base: '5',), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(base: '5'), '/provider');
      default:
        return _fadeRoute(const View404(), '/error404');
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
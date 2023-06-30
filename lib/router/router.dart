import 'package:bases_flutter_web/ui/views/counter_provider_view.dart';
import 'package:bases_flutter_web/ui/views/counter_stateful_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/stateful',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/stateful/:base',
      handler: _counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );

    router.notFoundHandler = _pageNotFoundHandler;
  }

  // Handlers o Manejadores
  static final Handler _counterStatefulHandler = Handler(
      handlerFunc: (context, parameters) => CounterStatefulView(
            base: parameters['base']?[0] ?? '5',
          ));

  static final Handler _counterProviderHandler =
      Handler(handlerFunc: (context, parameters) {
    return CounterProviderView(base: parameters['q']?[0] ?? '15');
  });

  //404 Handler
  static final Handler _pageNotFoundHandler =
      Handler(handlerFunc: (_, __) => const View404());
}

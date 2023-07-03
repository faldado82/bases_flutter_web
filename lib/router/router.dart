import 'package:bases_flutter_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/stateful',
      handler: counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/stateful/:base',
      handler: counterStatefulHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );
    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );

    // rutas con propiedades de identificacion
    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
    );

    router.notFoundHandler = pageNotFoundHandler;
  }
}

import 'package:fluro/fluro.dart';
import 'package:bases_flutter_web/ui/views/counter_provider_view.dart';
import 'package:bases_flutter_web/ui/views/counter_stateful_view.dart';
import 'package:bases_flutter_web/ui/views/view_404.dart';



// Handlers o Manejadores
final Handler counterStatefulHandler = Handler(
      handlerFunc: (context, parameters) => CounterStatefulView(
            base: parameters['base']?[0] ?? '5',
          ));

  final Handler counterProviderHandler =
      Handler(handlerFunc: (context, parameters) {
    return CounterProviderView(base: parameters['q']?[0] ?? '15');
    // return CounterProviderView(base: parameters['q']?.first ?? '15');
  });

  // para ver el manejo de parametros en la ruta
  final Handler dashboardUserHandler =
      Handler(handlerFunc: (context, parameters) {
    print(parameters);
    return const View404();
  });

  //404 Handler
  final Handler pageNotFoundHandler =
      Handler(handlerFunc: (_, __) => const View404());
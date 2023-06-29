import 'package:bases_flutter_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        children: [
          CustomAppMenu(),
          Spacer(),
          //Todo: view
          Spacer(),
        ],
      ),
    ));
  }
}

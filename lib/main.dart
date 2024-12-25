import 'package:flutter/material.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/constants/router.dart';
import 'package:xtravel/core/providers/network_client_provider.dart';

void main() async {
  initLocator();

  await Future.wait([NetworkClientProvider.init()]);

  runApp(const XTravelApp());
}

class XTravelApp extends StatelessWidget {
  const XTravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.configs,
    );
  }
}

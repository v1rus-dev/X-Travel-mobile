import 'package:flutter/material.dart';
import 'package:xtravel/constants/router.dart';

void main() {
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
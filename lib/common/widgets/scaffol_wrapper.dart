import 'package:flutter/material.dart';

class Scaffoldwrapper extends StatelessWidget {
  const Scaffoldwrapper({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
    );
  }
}

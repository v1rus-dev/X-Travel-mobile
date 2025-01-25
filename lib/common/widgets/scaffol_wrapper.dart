import 'package:flutter/material.dart';

class Scaffoldwrapper extends StatelessWidget {
  const Scaffoldwrapper({super.key, this.body, this.appBar});

  final Widget? body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}

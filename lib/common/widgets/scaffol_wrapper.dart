import 'package:flutter/material.dart';

class Scaffoldwrapper extends StatelessWidget {
  const Scaffoldwrapper({super.key, this.body, this.appBar, this.resizeToAvoidBottomInset});

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: body,
    );
  }
}

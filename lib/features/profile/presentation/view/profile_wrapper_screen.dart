import 'package:flutter/material.dart';
import 'package:xtravel/common/widgets/basic_toolbar.dart';
import 'package:xtravel/features/auth/login/presentation/view/view.dart';

class ProfileWrapperScreen extends StatefulWidget {
  const ProfileWrapperScreen({super.key});

  static const path = '/profile';
  static const name = 'profile';

  @override
  State<ProfileWrapperScreen> createState() => _ProfileWrapperScreenState();
}

class _ProfileWrapperScreenState extends State<ProfileWrapperScreen> {
  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: BasicToolbar(text: "Профиль"),
          body: LoginScreen(),
        ),
      );
}

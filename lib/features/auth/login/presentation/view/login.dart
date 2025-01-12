import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:xtravel/common/widgets/app_text_field.dart';
import 'package:xtravel/features/auth/login/presentation/bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginBloc bloc = LoginBloc();

  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode loginFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(55),
              const Text(
                "Войдите в аккаунт для получения доступа ко всем функциям.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Gap(60),
              AppTextField(
                controller: loginController,
                focusNode: loginFocusNode,
                label: "Логин/Почта",
                enterBoldText: true,
              ),
              const Gap(16),
              AppTextField(
                controller: passwordController,
                focusNode: passwordFocusNode,
                label: "Пароль",
                enterBoldText: true,
              ),
              const Gap(16),
              const Divider(
                height: 1.0,
                color: Color(0xFFEEEEEE),
              ),
              const Gap(16),
            ],
          ),
        ),
      ),
    );
  }
}

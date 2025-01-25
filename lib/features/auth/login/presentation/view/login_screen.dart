import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:xtravel/common/widgets/app_text_field.dart';
import 'package:xtravel/constants/router.dart';
import 'package:xtravel/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:xtravel/features/auth/login/presentation/widgets/sign_in_apple.dart';
import 'package:xtravel/features/auth/login/presentation/widgets/sign_in_google.dart';
import 'package:xtravel/features/auth/registration/presentation/view/registration_screen.dart';

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
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
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
                SignInGoogle(
                  onTap: () {},
                ),
                const Gap(16),
                SignInApple(onTap: () {}),
                const Gap(32),
                RichText(
                  text: TextSpan(
                    text: "Еще нет аккаунта? ",
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Зарегистрироваться",
                          style: const TextStyle(
                            color: Color(0xFF2F86CD),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              AppRouter.configs
                                  .pushNamed(RegistrationScreenPage.name);
                            })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

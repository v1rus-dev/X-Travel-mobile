import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:xtravel/common/widgets/app_button_success.dart';
import 'package:xtravel/common/widgets/app_text_field.dart';
import 'package:xtravel/common/widgets/basic_toolbar.dart';
import 'package:xtravel/common/widgets/scaffol_wrapper.dart';
import 'package:xtravel/features/auth/registration/presentation/bloc/registration_bloc.dart';

class RegistrationScreenPage extends StatelessWidget {
  const RegistrationScreenPage({super.key});

  static const path = '/registration';
  static const name = 'registration';

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => RegistrationBloc(),
        child: const RegistrationScreen(),
      );
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool isSelectedConfirmation = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController loginController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();

  final FocusNode nameFocuseNode = FocusNode();
  final FocusNode loginFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode repeatPasswordFocusNode = FocusNode();

  bool obscurePassword = true;
  bool obscureRepeatePassword = true;

  onRegister() {}

  RegisterButtonIsEnableState registerButtonIsEnable =
      RegisterButtonIsEnableState();

  _changeTextField(String value) {
    updateRegisterButtonIsEnable();
  }

  updateRegisterButtonIsEnable() {
    registerButtonIsEnable.updateState(
      isSelectedConfirmation &&
          nameController.text.isNotEmpty &&
          loginController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          repeatPasswordController.text.isNotEmpty,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) => Scaffoldwrapper(
              appBar: BasicToolbar(
                text: "Регистрация",
                withBackButton: true,
              ),
              resizeToAvoidBottomInset: true,
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(36),
                      AppTextField(
                        controller: nameController,
                        focusNode: nameFocuseNode,
                        label: "Имя",
                        onChanged: _changeTextField,
                      ),
                      const Gap(20),
                      AppTextField(
                        controller: loginController,
                        focusNode: loginFocusNode,
                        label: "Логин",
                        onChanged: _changeTextField,
                      ),
                      const Gap(20),
                      AppTextField(
                        controller: emailController,
                        focusNode: emailFocusNode,
                        label: "Почта",
                        onChanged: _changeTextField,
                      ),
                      const Gap(20),
                      AppTextField(
                        controller: passwordController,
                        focusNode: passwordFocusNode,
                        label: "Пароль",
                        obscureText: obscurePassword,
                        onChanged: _changeTextField,
                      ),
                      const Gap(20),
                      AppTextField(
                        controller: repeatPasswordController,
                        focusNode: repeatPasswordFocusNode,
                        label: "Повторите пароль",
                        obscureText: obscureRepeatePassword,
                        onChanged: _changeTextField,
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            "Cогласие на обработку данных",
                            style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
                          ),
                          const Spacer(),
                          Switch.adaptive(
                              value: isSelectedConfirmation,
                              onChanged: (isSelected) {
                                setState(() {
                                  isSelectedConfirmation = isSelected;
                                });
                                updateRegisterButtonIsEnable();
                              }),
                        ],
                      ),
                      const Gap(20),
                      ValueListenableBuilder(
                        valueListenable: registerButtonIsEnable.isEnabled,
                        builder: (context, state, child) => AppButtonSuccess(
                          text: "Зарегистрироваться",
                          isEnabled: state,
                          onTap: onRegister,
                        ),
                      ),
                      const Gap(40)
                    ],
                  ),
                ),
              ),
            ));
  }

  @override
  void dispose() {
    nameController.dispose();
    loginController.dispose();
    emailController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }
}

class RegisterButtonIsEnableState extends ChangeNotifier {
  ValueNotifier<bool> isEnabled = ValueNotifier(false);

  updateState(bool newState) {
    if (isEnabled.value != newState) {
      isEnabled.value = newState;
      notifyListeners();
    }
  }
}

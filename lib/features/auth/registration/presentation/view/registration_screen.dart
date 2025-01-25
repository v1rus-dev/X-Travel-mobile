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

  onRegister() {}

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
                        label: "Имя",
                      ),
                      const Gap(20),
                      AppTextField(
                        label: "Логин",
                      ),
                      const Gap(20),
                      AppTextField(
                        label: "Почта",
                      ),
                      const Gap(20),
                      AppTextField(
                        label: "Пароль",
                      ),
                      const Gap(20),
                      AppTextField(
                        label: "Повторите пароль",
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Text(
                            "Cогласие на обработку данных",
                            style: theme.textTheme.bodyLarge,
                          ),
                          const Spacer(),
                          Switch.adaptive(
                              value: isSelectedConfirmation,
                              onChanged: (isSelected) {
                                setState(() {
                                  isSelectedConfirmation = isSelected;
                                });
                              }),
                        ],
                      ),
                      const Gap(20),
                      AppButtonSuccess(
                        text: "Зарегистрироваться",
                        isEnabled: isSelectedConfirmation,
                        onTap: onRegister,
                      ),
                      const Gap(40)
                    ],
                  ),
                ),
              ),
            ));
  }
}

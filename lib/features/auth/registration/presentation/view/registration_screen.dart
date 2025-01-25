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

  onRegister() {

  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) => Scaffoldwrapper(
              appBar: BasicToolbar(
                text: "Регистрация",
                withBackButton: true,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
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
                    const Spacer(),
                    AppButtonSuccess(text: "Зарегистрироваться", onTap: onRegister,),
                    const Gap(40)
                  ],
                ),
              ),
            ));
  }
}

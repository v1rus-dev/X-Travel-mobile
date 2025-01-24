import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xtravel/constants/resources/images.dart';

class SignInApple extends StatelessWidget {
  SignInApple({super.key, this.onTap});

  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 60,
      child: Material(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(ImagesConstants.appleLogo),
              Text(
                "Sign in with Apple",
                style:
                    theme.textTheme.bodyMedium?.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

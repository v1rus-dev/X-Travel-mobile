import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:xtravel/constants/images.dart';

class SignInGoogle extends StatelessWidget {
  SignInGoogle({super.key, this.onTap});

  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 60,
      child: Material(
        color: Colors.white,
        shape: const RoundedRectangleBorder(side: BorderSide(
          color: Color(0xFFF1F1F1),
          width: 1,
        ), borderRadius: BorderRadius.all(Radius.circular(16))),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(ImagesConstants.googleLogo),
              Text(
                "Sign in with Google",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFF757575),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

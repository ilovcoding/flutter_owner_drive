import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "没有账户 ? " : "已有账户 ? ",
          style: const TextStyle(color: primaryColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "注册" : "登录",
            style: const TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

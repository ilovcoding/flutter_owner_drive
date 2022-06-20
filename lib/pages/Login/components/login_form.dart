import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/i18n/langue_provider.dart';
import 'package:flutter_owner_drive/utils/toast.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import 'socal_sign_up.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: primaryColor,
            onSaved: (email) {},
            decoration: InputDecoration(
              hintText: context.watch<LangueProvider>().local.yourEmail,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: primaryColor,
              decoration: const InputDecoration(
                hintText: "输入密码",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                ShowToast.info("功能开发中");
              },
              child: Text(
                context.watch<LangueProvider>().local.login,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const SocalSignUp()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'or_divider.dart';
import 'social_icon.dart';

class SocalSignUp extends StatelessWidget {
  const SocalSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocalIcon(
              iconSrc: "assets/icons/github.svg",
              press: () {
                // https://github.com/login/oauth/authorize?client_id=692f56c41788115afeaa&scope=public_repo
              },
            ),
            // SocalIcon(
            //   iconSrc: "assets/icons/google-plus.svg",
            //   press: () {},
            // ),
          ],
        ),
      ],
    );
  }
}

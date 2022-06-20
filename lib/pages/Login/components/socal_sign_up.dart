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
              press: () {},
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

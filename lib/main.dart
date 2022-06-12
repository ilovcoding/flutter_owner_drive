import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/i18n/langue_provider.dart';
import 'package:flutter_owner_drive/i18n/internationalization_model.dart';
import 'package:flutter_owner_drive/i18n/langue.dart';
import 'package:flutter_owner_drive/themes/default_theme.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => LangueProvider())],
    child: const ODiskApp(),
  ));
}

class ODiskApp extends StatelessWidget {
  const ODiskApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context.read<LangueProvider>().loadLangue(Langue.zhCN);
    return MaterialApp(
      title: 'O Drive',
      initialRoute: Routers.login,
      routes: Routers.getRouters(context),
      theme: defaultTheme,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/themes/default_theme.dart';

import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Owner Drive',
      initialRoute: Routers.login,
      routes: Routers.getRouters(context),
      theme: defaultTheme,
    );
  }
}

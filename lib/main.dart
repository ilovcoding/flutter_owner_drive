import 'package:flutter/material.dart';
import 'package:movies/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: Routers.getRouters(context),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({ Key? key }) : super(key: key);

  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text("测试test")
          ],
        ),
      );
      return Scaffold(
      appBar: AppBar(
        title: const Text("hello world"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("测试test")
          ],
        ),
      )
    );
  }
}
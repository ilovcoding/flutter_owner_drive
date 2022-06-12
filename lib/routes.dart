import 'package:flutter/material.dart';

import 'Pages/Welcome/welcome_screen.dart';
import 'Pages/Home/home.dart';
import 'movies.dart';

class Routers {
  static const String login = '/login';
  static const String oaLogin = '/oalogin';
  static const String home = '/';
  static const String course = '/course';
  static const String courseInfo = '/course/info';
  static const String courseInfoClassment = 'course/info/classment';
  static const String working = '/working';
  static const String report = '/working/report';
  static const String download = '/download';
  static const String start = 'start';
  static const String aboutus = '/my/aboutus';
  static const String querygrade = '/working/querygrade';
  static const String querybooks = '/working/queryinfo';
  static const String movies = "/movies";

  static getRouters(BuildContext context) {
    return {
      login: (context) => const WelcomeScreen(),
      home: (context) => const MyHomePage(title: '测试首页'),
      movies: (context) => const Movies(),
    };
  }
}

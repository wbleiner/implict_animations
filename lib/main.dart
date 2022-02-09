import 'package:flutter/material.dart';
import 'package:implict_animations/pages/exercicio-1.dart';
import 'package:implict_animations/pages/exercicio-2.dart';
import 'package:implict_animations/pages/home_page.dart';
import 'package:implict_animations/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Implicit Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (context) => const HomePage(),
        AppRoutes.EXERCIO_1: (context) => const Exercicio1(),
        AppRoutes.EXERCIO_2: (context) => Exercicio2(),
      },
    );
  }
}

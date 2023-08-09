import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/core/config/paths.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casa Salud Del Llamo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routesApp(),
      initialRoute: 'login',
    );
  }
}

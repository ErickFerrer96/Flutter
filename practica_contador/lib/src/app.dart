import 'package:flutter/material.dart';
import 'package:practica_contador/src/pages/contador_page.dart';

class MyApp extends StatelessWidget {//

  @override // build tiene que complir requisitos de statless
  Widget build( context ){  // a fuerzas build regresa widget

  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Center(
    child: ContadorPage(),
    ),
  );

  }
}
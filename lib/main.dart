
import 'package:flutter/material.dart';

import 'presenter/home/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Gerador de Assinatura - Email',
      home: const HomePage(),
      theme: ThemeData(fontFamily: 'Work Sans'),
      debugShowCheckedModeBanner: false,
    ),
  );
}
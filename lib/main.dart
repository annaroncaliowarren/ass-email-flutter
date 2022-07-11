
import 'package:flutter/material.dart';

import 'presenter/home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Gerador de Assinatura - Email',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
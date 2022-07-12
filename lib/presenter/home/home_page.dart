import 'package:flutter/material.dart';

import 'widgets/body_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de Assinatura - Email'),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(0, 102, 204, 0.8),
      ),
      body: const SingleChildScrollView(
        child: BodyHomePage(),
      ),
    );
  }
}

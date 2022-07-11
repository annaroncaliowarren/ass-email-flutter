import 'package:ass_email/presenter/home/widgets/container_layout_home.dart';
import 'package:ass_email/presenter/home/widgets/input_user_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final workController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de Assinatura - Email'),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InputUserHome(
              label: 'Nome',
              prefixIcon: Icons.person,
              controller: nameController,
            ),
            InputUserHome(
              label: 'Email',
              prefixIcon: Icons.email_rounded,
              controller: emailController,
            ),
            InputUserHome(
              label: 'Telefone',
              prefixIcon: Icons.phone,
              controller: phoneController,
            ),
            InputUserHome(
              label: 'Cargo',
              prefixIcon: Icons.work_rounded,
              controller: workController,
            ),
            const ContainerLayout(),
          ],
        ),
      ),
    );
  }
}

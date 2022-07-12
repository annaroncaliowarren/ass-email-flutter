import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'button_actions_home.dart';
import 'container_layout_home.dart';
import 'input_user_home.dart';

class BodyHomePage extends StatefulWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  final nameController = TextEditingController();
  final instaController = TextEditingController();
  final workController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputUserHome(
          label: 'Nome',
          prefixIcon: Icons.person,
          controller: nameController,
        ),
        InputUserHome(
          label: 'Instagram',
          prefixIcon: Icons.camera_alt_rounded,
          controller: instaController,
        ),
        InputUserHome(
          label: 'Cargo',
          prefixIcon: Icons.work_rounded,
          controller: workController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BtnActionsHome(
              title: 'Gerar',
              btnIcon: Icons.arrow_circle_down_rounded,
              functionOnPressed: () {
                setState(() {});
              },
            ),
            const SizedBox(width: 20),
            BtnActionsHome(
              title: 'Limpar',
              btnIcon: Icons.clear_all_rounded,
              functionOnPressed: () {
                nameController.clear();
                instaController.clear();
                workController.clear();
              },
            ),
          ],
        ),
        ContainerLayout(
          name: nameController.text,
          instagram: instaController.text,
          job: workController.text,
        ),
        BtnActionsHome(
          title: 'Copiar',
          btnIcon: Icons.copy_all_rounded,
          functionOnPressed: () {},
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

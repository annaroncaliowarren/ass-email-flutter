import 'package:flutter/material.dart';

import 'button_generate_home.dart';
import 'container_layout_home.dart';
import 'input_user_home.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key? key,
    required this.nameController,
    required this.instaController,
    required this.workController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController instaController;
  final TextEditingController workController;

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
        BtnActionsHome(
          title: 'Gerar',
          btnIcon: Icons.arrow_circle_down_rounded,
          functionOnPressed: () {},
        ),
        ContainerLayout(),
        BtnActionsHome(
          title: 'Copiar',
          btnIcon: Icons.copy_all_rounded,
          functionOnPressed: () {},
        ),
      ],
    );
  }
}

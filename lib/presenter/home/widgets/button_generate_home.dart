import 'package:flutter/material.dart';

class BtnActionsHome extends StatelessWidget {
  final String title;
  final IconData btnIcon;
  final dynamic functionOnPressed;

  const BtnActionsHome({
    Key? key,
    required this.title,
    required this.btnIcon,
    required this.functionOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: functionOnPressed,
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(0, 102, 204, 1),
        padding: const EdgeInsets.all(10),
        fixedSize: const Size.fromWidth(200),
        alignment: Alignment.center,
        elevation: 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            btnIcon,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

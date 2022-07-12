import 'package:flutter/material.dart';

class BtnActionsHome extends StatefulWidget {
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
  State<BtnActionsHome> createState() => _BtnActionsHomeState();
}

class _BtnActionsHomeState extends State<BtnActionsHome> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.functionOnPressed,
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(0, 102, 204, 1),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        alignment: Alignment.center,
        elevation: 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.btnIcon,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}

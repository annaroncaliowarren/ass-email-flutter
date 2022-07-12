import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputUserHome extends StatefulWidget {
  String label;
  IconData prefixIcon;
  dynamic controller;

  InputUserHome({
    Key? key,
    required this.label,
    required this.prefixIcon,
    required this.controller,
  }) : super(key: key);

  @override
  State<InputUserHome> createState() => _InputUserHomeState();
}

class _InputUserHomeState extends State<InputUserHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 102, 204, 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: widget.controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: widget.label,
          prefixIcon: Icon(
            widget.prefixIcon,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

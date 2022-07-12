import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/app_assets.dart';

class ContainerLayout extends StatelessWidget {
  final Uri _url = Uri.parse('https://flutter.dev');
  final Uri _url2 = Uri.parse('https://www.instagram.com/joao_roncalio/');

  ContainerLayout({Key? key}) : super(key: key);

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Não consigo abrir $_url';
  }

  void _launchUrl2() async {
    if (!await launchUrl(_url2)) throw 'Não consigo abrir $_url2';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(assIcon),
          const Text(
            'João Roncalio',
            style: TextStyle(
              fontFamily: 'Work Sans',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('Designer'),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _launchUrl();
                },
                child: Text('joaoroncalio.com'),
              ),
              TextButton(
                onPressed: () {
                  _launchUrl2();
                },
                child: Text('@joao_roncalio'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

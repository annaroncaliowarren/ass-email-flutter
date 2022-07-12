import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/app_assets.dart';

class ContainerLayout extends StatelessWidget {
  final Uri _url = Uri.parse('https://joaoroncalio.com');
  final Uri _url2 = Uri.parse('https://www.instagram.com/joao_roncalio/');

  String name;
  String instagram;
  String job;

  ContainerLayout({
    Key? key,
    required this.name,
    required this.instagram,
    required this.job,
  }) : super(key: key);

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Não consigo abrir $_url';
  }

  void _launchUrl2() async {
    if (!await launchUrl(_url2)) throw 'Não consigo abrir $_url2';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      height: 300,
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            assIcon,
            height: 78,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0, 102, 204, 1),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            job,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 102, 204, 1),
            ),
          ),
          const SizedBox(height: 70),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  _launchUrl();
                },
                child: const Text(
                  'joaoroncalio.com',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 102, 204, 1),
                  ),
                ),
              ),
              const SizedBox(width: 43),
              GestureDetector(
                onTap: () {
                  _launchUrl2();
                },
                child: Text(
                  '@$instagram',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 102, 204, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

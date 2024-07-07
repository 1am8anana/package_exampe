import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('About us')),
        body: Container(
            child: Column(
          children: [
            Text('This is About us Screen'),
            Text('This is the details of About us Screen'),
          ],
        )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculation')),
      body: Container(
        child: Column(
          children: [
            Text('Amount of money to spend'),
            Form(
              child: Column(
                children: [
                  TextFormField(),
                  TextField(),
                  ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calculate,
                      ),
                      label: const Text('calculate'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

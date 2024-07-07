import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  double loanAmount = 0, interestRate = 0, result = 0;
  void calculate() {
    setState(() {
      result = loanAmount + (loanAmount * interestRate) / 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculation')),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Amount of money to spend ${result.toStringAsFixed(2)} THB'),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Loan Limits'),
                      onChanged: (value) {
                        setState(() {
                          loanAmount = double.parse(value);
                        });
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(labelText: 'Interest Rate (%)'),
                      onChanged: (value) {
                        setState(() {
                          interestRate = double.parse(value);
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                        onPressed: calculate,
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
      ),
    );
  }
}

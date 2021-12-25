import 'package:flutter/material.dart';

class NumberField extends StatelessWidget {
  const NumberField({
    Key key,
    @required this.numberController,
    @required this.label,
  }) : super(key: key);

  final TextEditingController numberController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: numberController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: '$label',
        ),
      ),
    );
  }
}

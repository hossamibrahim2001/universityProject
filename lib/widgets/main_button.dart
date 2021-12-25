import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final Function onPressFunction;
  MainButton(this.label, this.onPressFunction);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            '$label',
            style: TextStyle(fontSize: 14),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.teal),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          onPressed:()=> onPressFunction(),
        ),
      ),
    );
  }
}

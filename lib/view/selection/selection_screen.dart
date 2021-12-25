import 'package:collage_project/widgets/main_button.dart';
import 'package:collage_project/widgets/number_field.dart';
import 'package:flutter/material.dart';

class SelectoinSceen extends StatefulWidget {
  @override
  _SelectoinSceenState createState() => _SelectoinSceenState();
}

class _SelectoinSceenState extends State<SelectoinSceen> {
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();
  TextEditingController numberThreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Selection App'),
      ),
      body: ListView(
        children: [
          NumberField(
            numberController: numberOneController,
            label: 'First number',
          ),
          NumberField(
            numberController: numberTwoController,
            label: 'Second number',
          ),
          NumberField(
            numberController: numberThreeController,
            label: 'Third number',
          ),
          MainButton(
            'Select',
            () {
              if (int.parse(numberOneController.text) >
                  int.parse(numberTwoController.text)) {
                if (int.parse(numberOneController.text) >
                    int.parse(numberThreeController.text)) {
                  dialogmethod(context, numberOneController.text);
                }
              } else if (int.parse(numberTwoController.text) >
                  int.parse(numberThreeController.text)) {
                if (int.parse(numberOneController.text) >
                    int.parse(numberThreeController.text)) {
                  dialogmethod(context, numberTwoController.text);
                }
              } else if (int.parse(numberThreeController.text) >
                  int.parse(numberTwoController.text)) {
                dialogmethod(context, numberThreeController.text);
              }
              numberOneController.clear();
              numberTwoController.clear();
              numberThreeController.clear();
            },
          ),
        ],
      ),
    );
  }

  Future dialogmethod(BuildContext context, String biggestNumber) {
    return showDialog(
      context: context,
      builder: (ctxt) => new AlertDialog(
        title: Text('biggest number is $biggestNumber'),
      ),
    );
  }
}

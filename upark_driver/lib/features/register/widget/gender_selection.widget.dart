import 'package:flutter/material.dart';

class GenderSelectionWidget extends StatefulWidget {
  const GenderSelectionWidget({super.key});

  @override
  GenderSelectionWidgetState createState() => GenderSelectionWidgetState();
}

class GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                value: isMaleSelected,
                onChanged: (bool? value) {
                  setState(() {
                    isMaleSelected = value ?? false;
                    if (isMaleSelected) {
                      isFemaleSelected = false; // Uncheck the other box
                    }
                  });
                },
              ),
              Text('Male'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: isFemaleSelected,
                onChanged: (bool? value) {
                  setState(() {
                    isFemaleSelected = value ?? false;
                    if (isFemaleSelected) {
                      isMaleSelected = false; // Uncheck the other box
                    }
                  });
                },
              ),
              Text('Female'),
            ],
          ),
        ],
      ),
    );
  }
}

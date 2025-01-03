import 'package:flutter/material.dart';

class VehicleTypeButtonWidget extends StatefulWidget {
  const VehicleTypeButtonWidget({super.key});

  @override
  State<VehicleTypeButtonWidget> createState() =>
      _VehicleTypeButtonWidgetState();
}

class _VehicleTypeButtonWidgetState extends State<VehicleTypeButtonWidget> {
  String _dropDownValue = "Car"; // Default selected value
  final List<String> items = ["Car", "Motorcycle"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: EdgeInsets.symmetric(horizontal: 12), // Optional padding
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2), // Add border here
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Icon(Icons.keyboard_arrow_down_sharp),
          isExpanded: true,
          value: _dropDownValue, // Set the current value
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Row(
                children: [
                  Icon(
                    item == "Car" ? Icons.directions_car : Icons.motorcycle,
                    color: Colors.grey, // Icon color
                    size: 28, // Icon size
                  ),
                  SizedBox(width: 8), // Space between icon and text
                  Text(
                    item,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _dropDownValue = newValue!;
            });
          },
          dropdownColor: Colors.white, // Dropdown menu color
          borderRadius: BorderRadius.circular(12), // BorderRadius for dropdown
        ),
      ),
    );
  }
}

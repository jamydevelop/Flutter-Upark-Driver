import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/register/widget/text_label/vehicle_type_text_label.register.widget.dart';

class VehicleTypeButtonRegisterWidget extends StatefulWidget {
  const VehicleTypeButtonRegisterWidget(
      {super.key, required this.dropDownCallback});

  final Function({required String value}) dropDownCallback;

  @override
  State<VehicleTypeButtonRegisterWidget> createState() =>
      _VehicleTypeButtonRegisterWidgetState();
}

class _VehicleTypeButtonRegisterWidgetState
    extends State<VehicleTypeButtonRegisterWidget> {
  String? _dropDownValue; // Default value is null (no selection)
  final List<String> items = ["Car", "Motorcycle"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VehicleTypeTextLabelRegisterWidget(),
        SizedBox(height: extraSmallSpacing),
        Container(
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
              hint: Row(
                children: [
                  Icon(
                    Icons.directions_car,
                    size: 28,
                    color: grey,
                  ),
                  Text(
                    "Vehicle Type",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ), // Hint text
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
                  _dropDownValue = newValue;
                  widget.dropDownCallback(value: _dropDownValue ?? "");
                });
              },
              dropdownColor: Colors.white, // Dropdown menu color
              borderRadius:
                  BorderRadius.circular(12), // BorderRadius for dropdown
            ),
          ),
        ),
      ],
    );
  }
}

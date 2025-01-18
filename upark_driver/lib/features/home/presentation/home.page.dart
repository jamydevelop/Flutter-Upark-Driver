import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/colors.dart';
import 'package:upark_driver/core/resources/dimensions.dart';
import 'package:upark_driver/features/home/widget/notidication_button_icon.dart';
import 'package:upark_driver/features/home/widget/message_button_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appbarPrimary,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Row: 2 IconButtons aligned to the right
                  SizedBox(height: largeSpacing),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end, // Aligning icons to the right
                      children: [
                        MessageButtonIcon(
                          onPress: () =>
                              debugPrint("Message Button Icon Pressed!"),
                        ),
                        NotificationButtonIcon(
                          onPress: () =>
                              debugPrint("Edit Profile Button Icon Pressed!"),
                        ),
                        IconButton(
                          icon: Container(
                            width: 39, // Set width
                            height: 37, // Set height
                            padding: const EdgeInsets.all(
                                8.0), // Inner padding for the icon
                            decoration: BoxDecoration(
                              color: Colors.white, // White background color
                              shape: BoxShape.circle, // Circular shape
                            ),
                            child: Image.asset(
                              "assets/icons/gengar_icon_image.png",
                              scale: 3,
                            ),
                          ),
                          onPressed: () {
                            // Add your onPressed action here
                          },
                        ),
                      ],
                    ),
                  ),
                  // Second Row: Text
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: largeSpacing),
                    child: Text(
                      "Find Your Nearest \nParking Space",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: blackPrimary,
                      ),
                    ),
                  ),
                  // Third Row: ElevatedButton with Icon
                  Padding(
                    padding: const EdgeInsets.only(
                        left: largeSpacing, top: normalSpacing),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.my_location,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Explore",
                        style: TextStyle(color: whitePrimary),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        backgroundColor: greenPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("This is sample body text"),
            ),
          ),
        ],
      ),
    );
  }
}

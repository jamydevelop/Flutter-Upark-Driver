import 'package:flutter/material.dart';
import 'package:upark_driver/features/homepage/bookings/widget/bookings_silver_appbar.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            BookingsSilverAppbar(),
            SliverFillRemaining(
              child: TabBarView(
                children: <Widget>[
                  Center(child: Text("Pending Page")),
                  Center(child: Text("Approved Page")),
                  Center(child: Text("Cancelled Page")),
                  Center(child: Text("Completed Page")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

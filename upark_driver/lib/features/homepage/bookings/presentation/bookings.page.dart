import 'package:flutter/material.dart';
import 'package:upark_driver/features/homepage/bookings/presentation/approved.page.dart';
import 'package:upark_driver/features/homepage/bookings/widget/bookings_silver_appbar.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update the UI when the tab index changes.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          slivers: [
            BookingsSilverAppbar(tabController: _tabController),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  Center(child: Text("Pending Page")),
                  Center(child: ApprovedPage()),
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

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

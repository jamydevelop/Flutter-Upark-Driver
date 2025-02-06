import 'package:flutter/material.dart';
import 'package:upark_driver/features/dashboard/bookings/presentation/approved.page.dart';
import 'package:upark_driver/features/dashboard/bookings/presentation/cancelled.page.dart';
import 'package:upark_driver/features/dashboard/bookings/presentation/completed.page.dart';
import 'package:upark_driver/features/dashboard/bookings/presentation/to_pay.page.dart';
import 'package:upark_driver/features/dashboard/bookings/widget/bookings_silver_appbar.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Update the UI when the tab index changes.
    });
  }

  void onTap(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: CustomScrollView(
          slivers: [
            BookingsSilverAppbar(
              tabController: _tabController,
              onTap: onTap,
              index: index,
            ),
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                children: const <Widget>[
                  Center(child: ToPayPage()),
                  ApprovedPage(),
                  Center(child: CancelledPage()),
                  Center(child: CompletedPage()),
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

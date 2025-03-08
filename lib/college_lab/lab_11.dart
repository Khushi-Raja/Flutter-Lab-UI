import 'package:flutter/material.dart';
import 'package:my_second/messaging_app/activate_chats.dart';
import 'package:my_second/messaging_app/home_page_screen.dart';

class Lab11 extends StatefulWidget {
  const Lab11({super.key});

  @override
  State<Lab11> createState() => _Lab11State();
}

class _Lab11State extends State<Lab11> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showAlertDialog(String tabName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('You selected $tabName'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabView Example'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Call'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePageScreen(),
          ActivateChats(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showAlertDialog('Call');
              },
              child: Text('Show Alert for Call',),
            ),
          ),
        ],
      ),
    );
  }
}

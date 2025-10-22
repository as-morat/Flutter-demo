import 'package:flutter/material.dart';

class MyDemo1 extends StatelessWidget {
  const MyDemo1({super.key});

  Widget buildTabPage({required IconData icon, required String title, Color? color}) {
    return Container(
      color: color ?? Colors.grey[200],
      child: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 80, color: Colors.deepPurple),
                const SizedBox(height: 20),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(height: 10),
                Text(
                  "This is the $title page content.",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          bottom: const TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Tab(icon: Icon(Icons.home_filled), text: 'Home'),
              Tab(icon: Icon(Icons.search_rounded), text: 'Search'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.email), text: 'Email'),
              Tab(icon: Icon(Icons.contact_page), text: 'Contact'),
              Tab(icon: Icon(Icons.person), text: 'Person'),
              Tab(icon: Icon(Icons.access_alarm), text: 'Alarm'),
              Tab(icon: Icon(Icons.account_balance), text: 'Account'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildTabPage(icon: Icons.home_filled, title: 'Home', color: Colors.purple[50]),
            buildTabPage(icon: Icons.search_rounded, title: 'Search', color: Colors.blue[50]),
            buildTabPage(icon: Icons.settings, title: 'Settings', color: Colors.orange[50]),
            buildTabPage(icon: Icons.email, title: 'Email', color: Colors.red[50]),
            buildTabPage(icon: Icons.contact_page, title: 'Contact', color: Colors.green[50]),
            buildTabPage(icon: Icons.person, title: 'Person', color: Colors.teal[50]),
            buildTabPage(icon: Icons.access_alarm, title: 'Alarm', color: Colors.yellow[50]),
            buildTabPage(icon: Icons.account_balance, title: 'Account', color: Colors.brown[50]),
          ],
        ),
      ),
    );
  }
}

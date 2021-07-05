import 'package:flutter/material.dart';
import 'package:navigations/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text("CONTADOR: $count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await Navigator.push<int>(
            context,
            MaterialPageRoute(
              builder: (context) => SettingsPage(
                count: count,
              ),
            ),
          );
          setState(() {
            count = response!;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

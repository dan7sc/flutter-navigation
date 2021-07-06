import 'package:flutter/material.dart';
import 'package:navigations/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text("CONTADOR: $_count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<Contador>(
            context,
            MaterialPageRoute(
              builder: (context) => SettingsPage(
                count: _count,
                onChanged: (value) {
                  setState(() {
                    _count = value;
                  });
                },
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

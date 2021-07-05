import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final int count;
  const SettingsPage({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SettingsPage"),
      ),
      body: Center(
        child: TextButton(
          child: Text("Contador"),
          onPressed: () {
            var newCount = count;
            newCount++;
            print(newCount);
            Navigator.pop(context, newCount);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingsPage(
                count: count,
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

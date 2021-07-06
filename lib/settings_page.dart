import 'package:flutter/material.dart';

class Contador {
  final int value;
  final Function(int value) onChanged;

  Contador(
    this.value,
    this.onChanged,
  );
}

class SettingsPage extends StatelessWidget {
  final int count;
  final Function(int value) onChanged;
  const SettingsPage({
    Key? key,
    required this.count,
    required this.onChanged,
  }) : super(key: key);

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
            onChanged(newCount);
            print(newCount);
            Navigator.pop(context, newCount);
            // Navigator.pop(context, Contador(newCount, onChanged));
          },
        ),
      ),
    );
  }
}

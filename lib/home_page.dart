import 'package:flutter/material.dart';
import 'package:navigations/app_routes.dart';

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
          final map = Map<String, dynamic>();
          map.addAll({
              "count": _count,
              "onChanged": (value) {
                setState(() {
                  _count = value;
                });
              }
          });
          Navigator.pushNamed(
            context,
            AppRoutes.settings,
            arguments: map,
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

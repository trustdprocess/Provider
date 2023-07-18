import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/provider.dart';

class counterApp extends StatefulWidget {
  const counterApp({super.key});

  @override
  State<counterApp> createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  @override
  Widget build(BuildContext context) {
    final countUser = Provider.of<Counter>(context,listen: false);
    print("Build");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text("Count :",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          Center(child: Consumer<Counter>(
            builder: (context, value, child) {
              return Text(
                countUser.count.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
          )),
          SizedBox(
            height: 30,
          ),
          FloatingActionButton(
            onPressed: () {
              countUser.increment();
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

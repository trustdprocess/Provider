import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/slider%20provider/sliderprovider.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<sliderProvider>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Provider"),
      ),
      body: Column(
        children: [
          Consumer<sliderProvider>(
            builder: (context, value, child) {
              return Slider(
                
                value: value.value,
                onChanged: (val) {
                  value.onslide(val);
                },
              );
            },
          ),
          Consumer<sliderProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text("Container 1"),
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(user.value)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text("Container 2"),
                      decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(user.value)),
                    ),
                  ),
                  
                ],
              );
            },
          )
        ],
      ),
    );
  }
}

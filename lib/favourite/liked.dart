import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/screen/favouriteprovider.dart';

class Liked extends StatefulWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    final likedItems = Provider.of<favouriteList>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Liked Items"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: likedItems.favouriteLista.length,
              itemBuilder: (context, index) {
                final item = likedItems.favouriteLista[index];
                return ListTile(
                  title: Text("Item $item"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

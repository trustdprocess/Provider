import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/favourite/liked.dart';
import 'package:provider1/screen/favouriteprovider.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    print("Widget");
    final Lista = Provider.of<favouriteList>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        actions: [
          InkWell(
            child: Icon(Icons.favorite),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Liked()));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<favouriteList>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        Lista.onPressed(index);
                      },
                      title: Text("Item $index"),
                      trailing: Icon(Lista.favouriteLista.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border),
                    );
                    
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

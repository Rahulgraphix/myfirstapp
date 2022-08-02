import 'package:flutter/material.dart';
import 'package:myapp/model/product.dart';

class Productview extends StatelessWidget {
  final Item item;
  final imglink = "https://coscor.in/";

  const Productview({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Image.network("https://coscor.in/${item.price}"),
          title: Text(item.name),
          subtitle: Text("${item.image} ${item.image} ",
              style: TextStyle(color: Colors.orange)),
          onTap: () {
            print("${item.id}");
          },
          //isThreeLine: true,
          selectedTileColor: Colors.red,
          horizontalTitleGap: 10,
          trailing: Text(
            item.image,
            style: TextStyle(color: Colors.orange),
          ),
        ),
      ),
    );
  }
}

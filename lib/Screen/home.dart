import 'package:flutter/material.dart';
import 'package:myapp/model/product.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:myapp/widgets/item_widget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // get dummylist => List.generate(1, (index) => productlist.items[0]);

  void initState() {
    super.initState();
    loaddata();
  }

  void loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview

    // var url = Uri.parse(
    //     'https://api.coscor.in/api/EShopCategoryController/GetCategoryDetails');

    var url = Uri.parse(
        'https://api.coscor.in/api/EShopProductController/GetAllProdDetails');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      productlist.items = List.from(jsonResponse)
          .map<Item>((item) => Item.fromMap(item))
          .toList();

      setState(() {});
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (productlist.items != null && productlist.items.isNotEmpty)
            ? ListView.builder(
                itemCount: productlist.items.length,
                itemBuilder: (context, index) {
                  return Productview(
                    item: productlist.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: Mydrawer(),
    );
  }
}

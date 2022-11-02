import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:untitled/widgets/MyDrawer.dart';
import 'package:untitled/widgets/item_widget.dart';

import '../models/catalog.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items = List.from(productData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: (CatalogModel.items.isNotEmpty) ?
      ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 2, 16, 2),
            child: ItemWidget(CatalogModel.items[index]),
          );
        },
      ) :
      Center(
      child: CircularProgressIndicator(),
    ),
      drawer: MyDrawer(),
    );
  }
}

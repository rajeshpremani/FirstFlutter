import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    final dummyData = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ItemWidget(dummyData[index]),
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}

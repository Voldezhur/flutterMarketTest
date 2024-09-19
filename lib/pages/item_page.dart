import 'package:flutter/material.dart';
import 'package:practice3/global/lists.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key, required this.itemIndex});

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(items[itemIndex].title)),
      body: Center(
        child: Text(items[itemIndex].description),
      ),
    );
  }
}

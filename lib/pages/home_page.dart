import 'package:flutter/material.dart';
import 'package:practice3/components/item_card.dart';
import 'package:practice3/global/lists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Товары"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemCard(
              itemIndex: index,
            );
          }),
    );
  }
}

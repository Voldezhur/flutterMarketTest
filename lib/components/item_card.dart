import 'package:flutter/material.dart';
import 'package:practice3/global/lists.dart';
import 'package:practice3/pages/item_page.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.itemIndex});

  final int itemIndex; // Проп для названия заметки

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        // Виджет для того, чтобы весь child стал кликабельным
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemPage(
                        itemIndex: itemIndex,
                      ))),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: Theme.of(context).primaryColor),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  items[itemIndex].imageLink,
                  height: 150,
                ),
                Text(
                  items[itemIndex].title,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.black12, width: 2))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          items[itemIndex].shortDescription,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      // Кнопка перехода на другую страницу
                      Text(
                        "Стоимость: ${items[itemIndex].price}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}

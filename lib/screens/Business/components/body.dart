import 'package:flutter/material.dart';

import '../../../components/dish_card.dart';
import '../../../data/store_json.dart';
import '../../Detail/store_detail_page.dart';
import 'list_card.dart';
import 'list_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child:
      Column(
      children:
      List.generate(storeItems.length, (index) {
        var dishes = storeItems[index];
        return Padding(
          padding:
          const EdgeInsets.only(top: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StoreDetailPage(
                        dish:dishes,
                        // image: dishes['image'],
                        // name: dishes['name'],
                      )));
            },
            child: Container(
              child: ListItem( dish: dishes),
            ),
          ),
        );
      }
        ),
    ));
  }
}
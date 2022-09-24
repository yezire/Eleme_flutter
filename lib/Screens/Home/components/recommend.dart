import 'package:flutter/material.dart';

import '../../../components/dish_card.dart';
import '../../../constants.dart';
import '../../../data/store_json.dart';
import '../../Detail/store_detail_page.dart';
import 'package:flutter_auth/api/request_manager.dart';

class Recommend extends StatelessWidget {
  Recommend({Key? key}) : super(key: key);
  //var url = Uri.https('example.com', 'whatsit/create');

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: light),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  left: 10, right: 10),
              child: Text(
                "  推荐商家",
                style: TextStyle(
                  fontSize:17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                List.generate(recommendedDishes.length, (index) {
                  var dishes = recommendedDishes[index];
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StoreDetailPage(
                                    image: dishes['image'],
                                    name: dishes['name'],
                                  )));
                        },
                        child: Container(
                          child: DishCard(width: 180, dish: dishes),
                        ),
                      ),
                    );
                  }
                  return Padding(
                    padding:
                    const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoreDetailPage(
                                  image: dishes['image'],
                                  name: dishes['name'],
                                )));
                      },
                      child: Container(
                        child: DishCard(width: 180, dish: dishes),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

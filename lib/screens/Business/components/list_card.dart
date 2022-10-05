import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class ListCard extends StatelessWidget {
  final dish;
  final double width;
  const ListCard({Key? key,
  required this.dish,
    this.width = 410,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: this.width,
                  height: getHeight(this.width, "1:1"),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(10),
                  //       topRight: Radius.circular(10)),
                    child: Image.asset(
                      dish["image"],
                      fit: BoxFit.cover,
                    ),
                  //)
    ),
              Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dish["name"] ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "¥"+dish["delivery_price"]+"起送|¥3配送",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    dish["store"],
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],

          ),

          // Container(
          //   padding: EdgeInsets.all(15),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         dish["name"] ?? "",
          //         overflow: TextOverflow.ellipsis,
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 15,
          //             fontWeight: FontWeight.bold),
          //       ),
          //       SizedBox(
          //         height: 5,
          //       ),
          //       Text(
          //         "By " + dish["store"],
          //         overflow: TextOverflow.ellipsis,
          //         style: const TextStyle(
          //           color: grey,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w300,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 5,
          //       ),
          //       Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           SvgPicture.asset("clock_icon.svg"),
          //           const SizedBox(
          //             width: 5,
          //           ),
          //           Text(
          //             "Est: " + dish["delivery_time"],
          //             style: const TextStyle(
          //                 color:HPrimaryColor,
          //                 fontSize: 13,
          //                 fontWeight: FontWeight.bold),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

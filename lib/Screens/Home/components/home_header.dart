/*
 * @Author: LinHao Yu
 * @Date: 2022-07-23 00:43:32
 * @LastEditors: LinHao yu
 * @LastEditTime: 2022-09-05 11:42:15
 * @Description: 
 * 
 */
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: HPrimaryColor,
        child: SafeArea(
            child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                width: 12,
              ),
              Text(
                "沈阳市规划大厦",
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                // child: SearchBar(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchField(),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/cart.svg",
                          color: Colors.white),
                      onPressed: () => {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset("assets/icons/message.svg",
                          color: Colors.white),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ])));
  }
// @override
// Widget build(BuildContext context) {
//   return Padding(
//     padding:
//     EdgeInsets.symmetric(horizontal:20),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         SearchField(),
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/cart.svg"),
//           onPressed: () => {},
//         ),
//         IconButton(
//           icon: SvgPicture.asset("assets/icons/message.svg"),
//           onPressed: () => {},
//         ),
//       ],
//     ),
//   );

}

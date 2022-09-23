import 'package:flutter/material.dart';

import '../../../constants.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 150,
        width: 410,
        child: Image.asset(
          "assets/images/discount.jpg",
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
          // bottom: 10,
          // right: 30,
          // left:10,
          // child: Card(
          //     shadowColor: HShallowGrey,
          //     // 阴影颜色
          //     elevation: 5,
          //     // 阴影高度
          //     borderOnForeground: false,
          //     // 是否在 child 前绘制 border，默认为 true
          //     margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          //     // 外边距
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //       side: BorderSide(
          //         color: HShallowGrey,
          //         width: 3,
          //       ),
          //     ),
          //     child: Column(children: [
          //       SizedBox(
          //         height: 10,
          //       ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: const [
                //     SizedBox(
                //       width: 20,
                //     ),
                //     Text(
                //       "登录领取新人福利",
                //       style: TextStyle(
                //           //color: Color.fromRGBO(153,153,153,1),
                //           fontSize: 16.0,
                //           fontWeight: FontWeight.w700),
                //     ),
                //   ],
                // ),
               child: Container(
                  height: 90,
                  width: double.infinity,
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEA695F),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(text: "A Summer Surpise !\n"),
                        TextSpan(
                          text: "超级会员·每月享超值权益",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              )
    ]);
  }
}

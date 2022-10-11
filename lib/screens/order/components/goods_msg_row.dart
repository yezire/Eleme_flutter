import 'package:flutter/material.dart';

import '../../../utils/global.dart';


class GoodsMsgRow extends StatelessWidget {
  GoodsMsgRow({Key? key, this.marginBottom = true,required this.text,
    required this.price,
    required this.subText
  });

  /// 底部距离
  final bool marginBottom;
  final String text;
  final int price;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  subText,
                  style: TextStyle(
                    fontSize: 10,
                    color: Color.fromRGBO(56, 56, 56, 1),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'x1',
                style: TextStyle(
                    color: Color.fromRGBO(80, 80, 80, 1), fontSize: 13),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: Text(
                 "¥ $price",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

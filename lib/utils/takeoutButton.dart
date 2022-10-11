import 'package:flutter/material.dart';

import '../constants.dart';

class TakeOutBtn extends StatelessWidget {
  /// 自提或则外送按钮
  const TakeOutBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      width: 90,
      height: 36,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: HPrimaryColor),
          borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              width: 44,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: HPrimaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                '外卖',
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1), fontSize: 12),
              )),
          Container(
              height: 30,
              margin: EdgeInsets.only(right: 9),
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Text(
                '堂食',
                style: TextStyle(
                    color:  HPrimaryColor, fontSize: 12),
              ))
        ],
      ),
    );
  }
}

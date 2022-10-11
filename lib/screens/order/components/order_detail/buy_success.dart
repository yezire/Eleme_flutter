import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants.dart';
class BuySuccess extends StatelessWidget {
  const BuySuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('订单详情'),backgroundColor:HPrimaryColor, actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            IconData(0xe625, fontFamily: 'iconfont'),
            size: 18,
            color: Color.fromRGBO(148, 196, 236, 1),
          ),
        )
      ]),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // module1
              buySuccess(),

              // module2
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      // decoration: BoxDecoration(border: cuBorderBottom()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '外卖订单:33412823848583',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          ),
                          Text(
                            '2019-01-07 14:22',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '配送费',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(56, 56, 56, 1),
                            ),
                          ),
                          Text(
                            '¥ 3',
                            style: TextStyle(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      //  decoration: BoxDecoration(border: cuBorderBottom()),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '使用优惠券',
                            style: TextStyle(
                              fontSize: 14,
                              color: HPrimaryColor,
                            ),
                          ),
                          Text(
                            '-￥3',
                            style: TextStyle(
                                color: HPrimaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '共2件商品',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(56, 56, 56, 1),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '实付',
                                style: TextStyle(
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                    fontSize: 14),
                              ),
                              Text(
                                '￥31',
                                style: TextStyle(
                                    color: Color.fromRGBO(56, 56, 56, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // module3
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '收货地址',
                          style: TextStyle(
                              color: Color.fromRGBO(56, 56, 56, 1),
                              fontSize: 14),
                        ),
                        Text(
                          '天津市津南区海河教育园雅观路135号天津大学诚园...',
                          style: TextStyle(
                              color: Color.fromRGBO(128, 128, 128, 1),
                              fontSize: 13),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Ye女士  13335677990',
                            style: TextStyle(
                                color: Color.fromRGBO(128, 128, 128, 1),
                                fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }


  buySuccess() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '下单成功',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 55,
                  height: 16,
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: Color.fromRGBO(217, 217, 217, 1)),
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.security_outlined,
                        color: Color.fromRGBO(48, 100, 157, 1),
                        size: 12,
                      ),
                      Text(
                        '慢必赔',
                        style: TextStyle(
                            color: Color.fromRGBO(80, 80, 80, 1), fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '预计',
                    style: TextStyle(
                        color: Color.fromRGBO(56, 56, 56, 1), fontSize: 12),
                  ),
                  Text(
                    '15:15',
                    style: TextStyle(
                        color: HPrimaryColor, fontSize: 12),
                  ),
                  Text(
                    '送达，请耐心等待外卖员来临！',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(56, 56, 56, 1),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       FlatButton(
            //           child: Text(
            //             '取消订单',
            //             style: TextStyle(fontSize: 14),
            //           ),
            //           minWidth: 105,
            //           height: 32,
            //           //plain: true,
            //           color: Color.fromRGBO(56, 56, 56, 1),
            //           // borderColor: Color.fromRGBO(217, 217, 217, 1),
            //           onPressed: () => {}),
            //       Container(
            //         margin: EdgeInsets.only(left: 10),
            //         child: FlatButton(
            //             child: Text('取餐码'),
            //             minWidth: 105,
            //             height: 32,
            //             // plain: true,
            //             color: Color.fromRGBO(136, 175, 213, 1),
            //             // borderColor: Color.fromRGBO(136, 175, 213, 1),
            //             onPressed: () => {}),
            //       )
            //     ],
            //   ),
            // )
          ],
        ));
  }
}

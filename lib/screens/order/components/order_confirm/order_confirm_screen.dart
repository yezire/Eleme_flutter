import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constants.dart';
import '../../../../utils/takeoutButton.dart';
import '../goods_msg_row.dart';
import '../order_detail/order_detail.dart';
import '../order_remark/order_remark.dart';


class OrderConfirm extends StatefulWidget {
  OrderConfirm({Key? key}) : super(key: key);

  _OrderConfirmState createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
  double bottom = Get.bottomBarHeight; // 获取屏幕的底部距离

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HPrimaryColor,
          title: const Text('确认订单')
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(),

            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    head(),

                    // 订单信息
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          contentAddress(),
                          // 订单信息
                          Container(
                            padding:
                                EdgeInsets.only(top: 12, left: 15, right: 15),
                            decoration: BoxDecoration(border: cuBorderBottom()),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 12),
                                  child: Row(
                                    children: const <Widget>[
                                      Text(
                                        '订单信息',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                Color.fromRGBO(56, 56, 56, 1),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                               // 商品信息
                                Column(
                                  children: [
                                    GoodsMsgRow(
                                      marginBottom: true,
                                      text:"纯肉鲜肉（水饺）",
                                        subText:"纯肉馅饺子",
                                        price:15
                                    ),
                                    GoodsMsgRow(
                                        text:"玉米鲜肉（水饺）",
                                        subText:"玉米清香",
                                        price:16
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          // 结算
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '合计',
                                      style: TextStyle(
                                          color: Color.fromRGBO(80, 80, 80, 1),
                                          fontSize: 13),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        '¥ 31',
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(56, 56, 56, 1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // 支付信息
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          // 使用优惠
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '使用优惠券',
                                        style: TextStyle(
                                            color: HPrimaryColor,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        '1个可用',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(
                                                255, 141, 26, 1)),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color:
                                              Color.fromRGBO(228, 228, 228, 1),
                                          size: 16,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/coupon');
                            },
                          ),
                        ],
                      ),
                    ),

                    // 备注
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      color: Colors.white,
                      child: InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '备注特殊要求',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(56, 56, 56, 1)),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(228, 228, 228, 1),
                              size: 16,
                            )
                          ],
                        ),
                        onTap: () =>
                      Get.to(OrderRemark()),
                      ),
                    ),

                    // 协议
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 20,
                                height: 20,
                                child: Transform.scale(
                                  scale: .8,
                                  child: Checkbox(
                                    activeColor:
                                       HPrimaryColor,
                                    value: true,
                                    onChanged: (flag) {},
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '我已阅读并同意',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(128, 128, 128, 1),
                                          fontSize: 10),
                                    ),
                                    Text(
                                      '《支付协议》',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromRGBO(85, 122, 157, 1)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '温馨提示：仅支持开具电子发票，订单完成后可前往发票管理中开具',
                                  style: TextStyle(
                                      color: Color.fromRGBO(166, 166, 166, 1),
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // 底部
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.only(left: 15, bottom: bottom),
                width: Get.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '还需支付',
                          style: TextStyle(
                              color: Color.fromRGBO(56, 56, 56, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            '¥ 31',
                            style: TextStyle(
                                color: Color.fromRGBO(56, 56, 56, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                        )
                      ],
                    ),
                    FlatButton(
                        minWidth: 120,
                        height: 60,
                        color: HPrimaryColor,
                       // borderRadius: BorderRadius.zero,
                        //todo
                        onPressed: () => Get.to(OrderDetail(args: {"status": 2})),
                        child: const Text('去支付'
                        ,style:TextStyle(
                              color:Colors.white,
                            )),
                    )    ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container contentAddress() {
    return Container(
      decoration: BoxDecoration(
          border: cuBorderBottom()),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '商家地址',
                style: TextStyle(
                    color: Color.fromRGBO(56, 56, 56, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          InkWell(
            //todo
            onTap: () => Navigator.pushNamed(context, '/self_store'),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '万家饺子（软件园E18店）',
                        style: TextStyle(
                          color: Color.fromRGBO(56, 56, 56, 1),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '沈阳浑南区软件园E18楼',
                      style: TextStyle(
                        color: Color.fromRGBO(56, 56, 56, 1),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container head() {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         TakeOutBtn(),

          Container(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '立即送餐',
                  style: TextStyle(
                      color: Color.fromRGBO(56, 56, 56, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const <Widget>[
                    Text(
                      '约',
                      style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1),
                          fontSize: 13),
                    ),
                    Text(
                      '14:42',
                      style: TextStyle(
                          color: HPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '送到',
                      style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1),
                          fontSize: 13),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Border cuBorderBottom({ Color? color, bool show = true}) {
    return Border(
      bottom: BorderSide(
        color: (color == null || !show)
            ? (show ? Color.fromRGBO(242, 242, 242, 1) : Colors.transparent)
            : color,
        width: 1,
      ),
    );
  }

}

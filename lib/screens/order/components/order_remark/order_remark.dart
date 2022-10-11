import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/order/components/order_remark/radius_btn.dart';
import 'package:get/get.dart';

import '../../../../constants.dart';
import '../order_confirm/order_confirm_screen.dart';

class OrderRemark extends StatefulWidget {
  OrderRemark({Key ?key}) : super(key: key);

  _OrderRemarkState createState() => _OrderRemarkState();
}

class _OrderRemarkState extends State<OrderRemark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('订单备注'),backgroundColor:HPrimaryColor),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: <Widget>[
                        RemarkRow('餐具'),
                        RemarkRow(''),
                        RemarkRow('糖包', borderBottom: false),
                      ],
                    )),

                // 输入框
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: const <Widget>[
                      Expanded(
                        child: TextField(
                          maxLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              filled: true,
                              focusColor: Color.fromRGBO(248, 248, 248, 1),
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              contentPadding: EdgeInsets.all(10),
                              hintText: '请输入评价内容（可不填）',
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(166, 166, 166, 1)),
                              fillColor: Color.fromRGBO(248, 248, 248, 1)),
                        ),
                      )
                    ],
                  ),
                ),

                Container(
                  child: FlatButton(
                      minWidth: 300,
                      child: Text('确认'),
                      color: Colors.white,
                     // bgColor: Color.fromRGBO(144, 192, 239, 1),
                      onPressed: () => Get.to(OrderConfirm())),
                )
              ],
            ),
          ),
        ));
  }
}

class RemarkRow extends StatelessWidget {
  final String title;
  final bool borderBottom;

  RemarkRow(this.title, {this.borderBottom = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 10),
      //decoration: BoxDecoration(border: cuBorderBottom(show: borderBottom)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              title,
              style:
                  TextStyle(color: Color.fromRGBO(56, 56, 56, 1), fontSize: 14),
            ),
          ),
          Row(
            children: <Widget>[
              RadiusBtn(
                '不需要',
                isActive: true,
              ),
              RadiusBtn('需要'),
            ],
          )
        ],
      ),
    );
  }
}

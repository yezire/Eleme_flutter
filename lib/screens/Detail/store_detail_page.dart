import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/toast.dart';
import '../../constants.dart';
import '../../data/product_json.dart';

import '../PaySuccess/pay_success_screen.dart';
import '../order/components/order_confirm/order_confirm_screen.dart';
import '../order/components/order_detail/order_detail.dart';
import '../order/order_screen.dart';
import 'components/GHCountItemWidget.dart';

class StoreDetailPage extends StatefulWidget {
  // final String image;
  // final String name;
  final dish;

  const StoreDetailPage({
    Key? key,
    // required this.image,
    // required this.name,
    required this.dish,
  }) : super(key: key);

  @override
  _StoreDetailPageState createState() => _StoreDetailPageState();
}

class _StoreDetailPageState extends State<StoreDetailPage> {
  /// 购物车列表
  List _shopCartList = [];

  /// 记录是否已经全选
  bool _isAllCheck = false;

  /// 编辑/完成
  bool _isEdit = false;

  int count = 0;

  /// 共计
  double _total = 0;
  int totalCnt = 0;

  @override
  void initState() {
    super.initState();
    // this._getShopCartList();
  }

  void _getShopCartList() async {
    // var url = "https://a4cj1hm5.api.lncld.net/1.1/classes/shopCartList";
    // var c = Uri.encodeComponent('-createdAt');
    // url = url + '?' + "order=" + c;
    // HttpRequest.request(url, method: 'GET').then((res) {
    //   List _tempList = [];
    //   List _results = res["results"];
    //   _results.forEach((item) {
    //     GHGoodDetailsModel goodDetailsModel =
    //     new GHGoodDetailsModel.fromJson(item);
    //     _tempList.add(goodDetailsModel);
    //   });
    //
    //   double _tempTotal = 0;
    //   bool _tempIsAllCheck = true;
    //   for (var i = 0; i < _tempList.length; i++) {
    //     GHGoodDetailsModel goodDetailsModel = _tempList[i];
    //     if (goodDetailsModel.check == true) {
    //       _tempTotal += goodDetailsModel.count * goodDetailsModel.price;
    //     } else {
    //       _tempIsAllCheck = false;
    //     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: Size.fromHeight(200)),
//       appBar: AppBar(
//         title: const Text('商家详情'),
//         centerTitle: true,
//         backgroundColor: HPrimaryColor,
//         brightness: Brightness.dark,
// //        automaticallyImplyLeading: false,
//         leading: const Icon(Icons.arrow_back_ios),
//       ),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow_back_icon.svg",
            color: textWhite,
          )),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.info))],
      backgroundColor: HbgColor,
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.dish["image"]),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      widget.dish["name"],
                      style: const TextStyle(
                          color: textWhite,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 2, color: textWhite)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 12, right: 12, bottom: 8, top: 8),
                      child: Text(
                        "派送 " + widget.dish["delivery_time"],
                        style: TextStyle(
                            fontSize: 16,
                            color: textWhite,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: textWhite, size: 18),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.dish["rating"],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: textWhite),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(2591)",
                        style: TextStyle(fontSize: 15, color: textWhite),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "本店菜单",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "立刻下单 即享美味",
                  style: TextStyle(
                      fontSize: 15, color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: List.generate(productItems.length, (index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(
                                        productItems[index]['image']),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            // width: (size.width * 0.75) - 40,
                            width: 140,
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  productItems[index]['name'],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  productItems[index]['explain'],
                                  style: const TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      " ¥ " + productItems[index]['price'],
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    // const SizedBox(
                                    //   width: 8,
                                    // ),
                                    // Text(
                                    //   productItems[index]['discount'],
                                    //   style: const TextStyle(
                                    //       decoration:
                                    //           TextDecoration.lineThrough,
                                    //       color: Colors.black,
                                    //       fontSize: 16),
                                    // )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: GHCountItemWidger(
                              count: count,
                              addClick: (value) {
                                setState(() {
                                  count = value;
                                  totalCnt++;
                                  _total += productItems[index]['price_d'];
                                });
                                // this._updateShopCartList(
                                //     goodDetailsModel,
                                //     goodDetailsModel
                                //         .objectId);
                              },
                              subClick: (value) {
                                setState(() {
                                  count = value;
                                  totalCnt--;
                                  _total -= productItems[index]['price_d'];
                                });
                                // this._updateShopCartList(
                                //     goodDetailsModel,
                                //     goodDetailsModel
                                //         .objectId);
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 0.8,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      decoration: BoxDecoration(
          color: textWhite,
          border: Border(
              top:
                  BorderSide(width: 2, color: Colors.black.withOpacity(0.06)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: HPrimaryColor),
              child: GestureDetector(
                onTap: () => Get.to(OrderConfirm()),
                // onTap:()=>toastInfo(msg: '密码不能小于6位'),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: textWhite)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              totalCnt.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: textWhite),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "去支付",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textWhite),
                      ),
                      Text(
                        "¥ " + _total.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textWhite),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

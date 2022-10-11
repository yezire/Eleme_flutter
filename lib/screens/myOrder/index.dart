import 'package:flutter/material.dart';

import '../../constants.dart';
import 'order_list_row.dart';



class Order extends StatefulWidget {
  Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with TickerProviderStateMixin {
  List<Tab> tabs = [
    Tab(
      text: '全部',
    ),
    Tab(
      text: "未完成",
    ),
    Tab(
      text: "已完成",
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HPrimaryColor,
        title: Text(
          "订单列表",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(44),
          child: Material(
            //这里设置tab的背景色
            color: Color.fromRGBO(255, 255, 255, 1),
            child: TabBar(

              tabs: tabs,
              labelColor: Color.fromRGBO(136, 175, 213, 1),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              unselectedLabelColor: Color.fromRGBO(80, 80, 80, 1),
              controller: _tabController,
            ),
          ),
        ),
        // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
        color: Color.fromRGBO(248, 248, 248, 1),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ListView(
              children: <Widget>[
                OrderListRow(1,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '纯肉鲜肉（水饺）, 玉米鲜肉（水饺）',
                    price: 31,
                    time: '2019-01-08 08:05',
                    onPress: () => Navigator.pushNamed(context, '/order_detail',
                        arguments: {"status": 2})),
                OrderListRow(
                  2,
                  orderNum: '23847563928174',
                  address: '天津市津南区海河教育园雅观路135号...',
                  goodsName: '虾仁三鲜（蒸饺）',
                  price: 20,
                  time: '2019-01-08 08:05', onPress: ()=>{},
                ),
                OrderListRow(
                  2,
                  orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                  goodsName: '虾仁三鲜（蒸饺）, 素三鲜（蒸饺）',
                  price: 20,
                  time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                  2,
                  orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                  goodsName:  '角瓜鸡蛋（蒸饺）',
                  price: 30,
                  time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                  3,
                  orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                  goodsName: '小白菜肉（水饺）',
                  price: 32,
                  time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
              ],
            ),

            ListView(
              children: <Widget>[
                OrderListRow(1,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '纯肉鲜肉（水饺）, 玉米鲜肉（水饺）',
                    price: 31,
                    time: '2019-01-08 08:05',
                    onPress: () => Navigator.pushNamed(context, '/order_detail',
                        arguments: {"status": 2})),
                OrderListRow(
                  1,
                  orderNum: '23847563928174',
                  address: '天津市津南区海河教育园雅观路135号...',
                  goodsName: '虾仁三鲜（蒸饺）',
                  price: 40,
                  time: '2019-01-08 08:05', onPress: ()=>{},
                ),
                OrderListRow(
                    1,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '角瓜鸡蛋（蒸饺）',
                    price: 30,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                    1,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '小白菜肉（水饺）',
                    price: 32,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                    1,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '芹菜牛肉',
                    price: 44,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
              ],
            ),
            ListView(
              children: <Widget>[

                OrderListRow(
                    2,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '虾仁三鲜（蒸饺）, 素三鲜（蒸饺）',
                    price: 35,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                    3,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName:'素三鲜（蒸饺）',
                    price: 30,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
                OrderListRow(
                    2,
                    orderNum: '23847563928174',
                    address: '天津市津南区海河教育园雅观路135号...',
                    goodsName: '虾仁三鲜（蒸饺）, 素三鲜（蒸饺）',
                    price: 35,
                    time: '2019-01-08 08:05',
                    onPress: ()=>{}
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

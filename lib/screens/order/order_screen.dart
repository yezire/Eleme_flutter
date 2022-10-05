import 'package:flutter/material.dart';

import '../../constants.dart';
import '../order/components/body.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('在线支付'),
        centerTitle: true,
        backgroundColor: HPrimaryColor,
        brightness: Brightness.dark,
//        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body:Body(),
    );
  }
}

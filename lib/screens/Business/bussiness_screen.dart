

import 'package:flutter/material.dart';
import '../Business/components/body.dart';
import '../../constants.dart';
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('商家列表'),
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


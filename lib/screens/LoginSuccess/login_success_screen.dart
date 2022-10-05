import 'package:flutter/material.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../enums.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: HPrimaryColor,
        title: Text("在线支付"),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.order),
    );
  }
}

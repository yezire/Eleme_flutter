import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Screens/Home/home_screen.dart';
import '../../../api/user.dart';
import '../../../api/user_api.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/toast.dart';
import '../../../components/validator.dart';
import '../../../constants.dart';
import '../../Signup/signup_screen.dart';
import 'package:flutter_auth/api/request_manager.dart';
import 'input_bar.dart';

class LoginForm extends  StatefulWidget  {
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>{
//email的控制器
  final TextEditingController _phoneController = TextEditingController();
  //密码的控制器
  final TextEditingController _passController = TextEditingController();

  // 执行登录操作
  _handleSignIn() async {
    if (!duCheckStringLength(_phoneController.value.text,11)) {
      toastInfo(msg: '请正确输入电话号码');
      return;
    }
    if (!duCheckStringLength(_passController.value.text, 6)) {
      toastInfo(msg: '密码不能小于6位');
      return;
    }

    UserRequestEntity params = UserRequestEntity(
      email: _phoneController.value.text,
      password: _passController.value.text,
    );

    UserResponseEntity res = await UserAPI.login(params: params);

    // 写本地 access_token , 不写全局，业务：离线登录
    // 全局数据 gUser
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            controller:_phoneController,
            cursorColor: kPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "请输入手机号",
              hintStyle: TextStyle(
                color:Colors.white,
                fontSize: 14,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          //InputBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: _passController,
              obscureText: true,
              cursorColor: kPrimaryColor,
              decoration: const InputDecoration(
                hintStyle: TextStyle(
                  color:Colors.white,
                  fontSize: 14,
                ),
                hintText: "请输入密码",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () =>Get.to(HomeScreen()),
              //onPressed: () => _handleSignIn(),
                child: const Text(
                "登录"
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



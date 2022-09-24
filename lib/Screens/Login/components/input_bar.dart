import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class InputBar extends StatefulWidget {
  bool type;
  String text;
  int length;
  double left;
  double right;
  double bottom;
  double top;
  double all;

  //icon图标
  IconData icon;

  //一开始的颜色，也就是点击时的颜色
  Color initColor;

  //是否一开始就获取焦点
  bool isFocus;

  //限制用户输入的条件数组
 // late List<TextInputFormatter> inputFormatters;

  //回调函数
  late ValueChanged<String> onChanged;

  InputBar({Key? key,
    // required this.inputFormatters,
    this.all = 0,
    this.top = 0,
    this.bottom = 0,
    this.right = 28,
    this.left = 28,
    this.icon = Icons.check,
    this.text = "账号",
    this.type = false,
  // this.onChanged,
    this.isFocus = false,
    this.length = 11,
  this.initColor=HPrimaryColor,
  }) : super(key: key);

  @override
  _InputBarState createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  //创建焦点
  FocusNode focusNode = FocusNode();

  //做个标记
  bool flag = false;

  @override
  void initState() {
    //做个标记，这个输入框是和密码框通用的
    flag = widget.type;
    if (!widget.isFocus) {
      widget.initColor = Color(0xff5D5D62);
    }
    //焦点监听
    focusNode.addListener(() {
      //获得焦点
      if (focusNode.hasFocus) {
        setState(() {
          widget.initColor =HPrimaryColor;
          print('获得焦点........');
        });
      }
      else {
        setState(() {
          widget.initColor = Color(0xff5D5D62);
          print('失去焦点........');
          //如果时密码框，失去焦点的时候要隐藏明文
          if (widget.type) {
            setState(() {
              this.flag = true;
            });
          }
        });
      }
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: widget.all!=0?EdgeInsets.all(widget.all):EdgeInsets.fromLTRB(widget.left, widget.top, widget.right, widget.bottom),
        child: TextField(
            // inputFormatters:widget.inputFormatters ?? [
            // //默认允许输入字母数字一共11位数*
            // WhitelistingTextInputFormatter(RegExp("[a-zA-Z]|[0-9.]")),
            // LengthLimitingTextInputFormatter(11)
            // ],
            autofocus: widget.isFocus,//自动获取焦点
            focusNode: focusNode,//焦点监听
            obscureText:this.flag,//是否时密码框
            decoration: InputDecoration(
                filled: true,//设置背景颜色
                fillColor:HbgColor,
                hintText: widget.text,//文本
                border: InputBorder.none,//没有下划线
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    //自定义的颜色
                    color: HPrimaryColor,
                    width: 1.5,
                  ),
                ),
                suffixIcon:
                IconButton(
                  //右边显示的图标，SvgPicture是用来解析svg，比一些图片更灵活，然后是一个三元运算，结合密码框来的
                  icon:flag?SvgPicture.asset("assets/eye.svg",color: widget.initColor):
                  Icon(
                    widget.icon,
                    color: widget.initColor,
                  ),
                  onPressed: (){
                    //类型时密码框的时候点击才有效果
                    if(widget.type){
                      setState(() {
                        this.flag = !this.flag;
                      });
                    }
                  },
                )
            ),
            //当输入手机号码的位数时才能返回
            onChanged: (value){
              if(value.toString().length > 11){
                widget.onChanged(value);
              }
            }
        ),
      );
  }}

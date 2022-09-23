/*
 * @Author: LinHao Yu
 * @Date: 2022-07-27 16:10:59
 * @LastEditors: LinHao yu
 * @LastEditTime: 2022-09-05 11:42:17
 * @Description:
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => Get.toNamed(Routes.searchScreen),
      child: Container(
        // margin:
        //     EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        height: 32.h,
        decoration: BoxDecoration(
          color: const Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextField(
          enabled: false,
          cursorColor: HPrimaryColor,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.w,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
              hintText: "搜索饿了么商家、商品名称",
              // prefixIcon: Icon(
              //   color: Colors.grey[400],
              //   Icons.search,
              // ),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SvgPicture.asset(
                  "assets/icon/search.svg",
                  color: Colors.grey[400],
                ),
              )),
        ),
      ),
    );
  }
}

/*
 * @Author: LinHao Yu
 * @Date: 2022-07-23 00:43:32
 * @LastEditors: LinHao yu
 * @LastEditTime: 2022-09-05 11:42:15
 * @Description: 
 * 
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../constants.dart';
import 'search_bar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: HPrimaryColor,
        child: Column(
            children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "沈阳市规划大厦",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ],
          ),
              SizedBox(
                height: 15.h,
              ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   radius: 18.h,
              //   child: ClipOval(
              //     child: Image.asset(
              //       "assets/images/profile.jpg",
              //       fit: BoxFit.cover,
              //       width: double.infinity,
              //       height: double.infinity,
              //     ),
              //   ),
              // ),
              SizedBox(
                width: 15.w,
              ),
              const Expanded(
                child: SearchBar(),
              ),
              SizedBox(
                width: 15.w,
              ),
            ],
          ),
              SizedBox(
                height: 15.h,
              ),
        ]));
  }
}

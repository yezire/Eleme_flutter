import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WelcomeBanner extends StatefulWidget {
  const WelcomeBanner({Key? key}) : super(key: key);

  @override
  _WelcomeBannerState createState() => _WelcomeBannerState();
}

class _WelcomeBannerState extends State<WelcomeBanner> {
  List<Widget> imageList = [
    Image.asset("assets/images/splash_1.png", fit: BoxFit.fill),
    Image.asset("assets/images/splash_2.png", fit: BoxFit.fill),
    Image.asset("assets/images/splash_3.png", fit: BoxFit.fill),
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Swiper(
        // 横向
        scrollDirection: Axis.horizontal,
        // 布局构建
        itemBuilder: (context,index)=>imageList[index],
        //条目个数
        itemCount: 3,
        // 自动翻页
        autoplay: true,
        // 分页指示
        pagination: _buildPlugin(),
        // pagination: _buildSwiperPagination(),
        // pagination: _buildNumSwiperPagination(),
        //点击事件
        onTap: (index) {
          print(" 点击 $index");
        },
        // 相邻子条目视窗比例
        viewportFraction: 1,
        // 用户进行操作时停止自动翻页
        autoplayDisableOnInteraction: true,
        // 无限轮播
        loop: true,
        //当前条目的缩放比例
        scale: 1,
      ),
    );
  }
  //默认圆点指示器
  _buildPlugin() {
    return SwiperPagination();
  }

}

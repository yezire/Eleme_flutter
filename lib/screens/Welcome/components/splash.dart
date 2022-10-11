import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (index) {
                    controller.setCurPageIndex(index);
                  },
                  itemCount: controller.pages.length,
                  itemBuilder: (context, index) => controller.pages[index],
                ),
              ),
            ],
          );
        });
  }
}

import 'package:blord/modules/onboard/onboard.dart';
import 'package:blord/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return Onboarding();
      }), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        child: Column(children: [
          Container(
            height: 183.h,
            width: 375.w,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ConstanceData.firstVector),
            )),
          ),
          SizedBox(height: 54.h),
          Center(
            child: Container(
              height: 276.h,
              width: 276.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(ConstanceData.appImage),
              )),
            ),
          ),
          Spacer(),
          Container(
            height: 183.h,
            width: 375.w,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(ConstanceData.secondVector),
            )),
          ),
        ]),
      ),
    );
  }
}

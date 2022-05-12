import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:student_manager/core/colors/colors.dart';
import 'package:student_manager/core/constants.dart';
import 'package:student_manager/info/wigets/widgets.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 100.h, color: Colors.white),
          Container(
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: KAppBarColorBackground.withOpacity(.7),
            ),
          ),
          Positioned(
            left: 8.w,
            right: 8.w,
            top: 23.h,
            bottom: 25,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFE2F0FE),
                  borderRadius: BorderRadius.circular(9)),
              // height: 30.h,
              // width: 90.w,
              child: Padding(
                padding: EdgeInsets.only(top: 33.w, bottom: 20.h, left: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadText(text: 'Full Name'),
                    BodyText(
                      text: 'name',
                    ),
                    ksizedBox,
                    HeadText(text: 'College'),
                    BodyText(
                      text: 'clg',
                    ),
                    ksizedBox,
                    HeadText(text: 'Age'),
                    BodyText(
                      text: 'age',
                    ),
                    ksizedBox,
                    HeadText(text: 'Class'),
                    BodyText(
                      text: 'College',
                    ),
                    ksizedBox,
                    HeadText(text: 'Department'),
                    BodyText(
                      text: 'College',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 28.w,
            right: 28.w,
            top: 15.h,
            child: Container(
              height: 42.w,
              // width: 30.w,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/images/photo-1494790108377-be9c29b29330.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Profile Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/routes.dart';

class SyncPage extends StatefulWidget {
  const SyncPage({super.key});

  @override
  State<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends State<SyncPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffE9D4FF),
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
                color: Color(0xff6800D4),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Turn on sync",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Back up your stuff and use it on any device",
              style: TextStyle(color: Colors.black, fontSize: 13.sp),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 143.h,
              width: 325.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade300.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_outline,
                            color: Color(0xff1A73E8),
                            size: 18.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Bookmarks",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.content_paste_outlined,
                            color: Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Autofill",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.extension,
                            color: Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Extension",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.sp),
                      child: Row(
                        children: [
                          Icon(
                            Icons.devices,
                            color: Color(0xff1A73E8),
                            size: 16.sp,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "History & more",
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "You can always chooes what to sync in settings. Google may personalize Serch and other ",
              style: TextStyle(fontSize: 7.sp),
            ),
            Text(
              "services based on your history",
              style: TextStyle(fontSize: 7.sp),
            ),
            SizedBox(
              height: 200.h,
            ),
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.sp),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xff1A73E8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Color(0xff1A73E8),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.home);
                  },
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.sp),
                      color: Color(0xff1A73E8),
                    ),
                    child: Center(
                      child: Text(
                        "Yes I'm in ",
                        style: TextStyle(
                          fontSize: 8.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.sp),
                    border: Border.all(
                      width: 1.w,
                      color: Color(0xff1A73E8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "No,thanks",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Color(0xff1A73E8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/routes.dart';
import '../global/variable.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 730.h,
                width: 500.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.grey.withOpacity(0.2), width: 2.w),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 40,
                    right: 40,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Container(
                        width: 83.w,
                        color: Colors.white,
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJpwUvZMFKp_kXyJA2yd8zulrzNfK4ZIOgQ&s",
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "2 Step Verification",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "To help keep your account safe, Google wants to \n     make sure it's really you trying to sign in ",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 27.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey.shade400,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.sp),
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 20.sp,
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text(
                                "ruhi@gmail.com",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 17.sp,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Container(
                        height: 200.h,
                        width: 750.w,
                        color: Colors.white,
                        child: Image.network(
                          "assets/phone.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Checks Your oppo A78 5G",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Google sent a notification to your oppo A78 5G. Tap  ",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "yes",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " on the notification to verify it's you.",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                    value: verification,
                                    onChanged: (val) {
                                      verification = val!;
                                      setState(() {});
                                    }),
                                Text("  Don't ask again on this device"),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Text(
                              "Resend it",
                              style: TextStyle(
                                color: Color(0xff1A73E8),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Text(
                              "Try another way",
                              style: TextStyle(
                                color: Color(0xff1A73E8),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.sync);
                              },
                              child: Container(
                                height: 40.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: Color(0xff1A73E8),
                                  borderRadius: BorderRadius.circular(5.sp),
                                ),
                                child: Center(
                                  child: Text(
                                    "Next",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

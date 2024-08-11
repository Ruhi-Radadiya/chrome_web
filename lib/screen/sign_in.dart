import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../global/routes.dart';
import '../global/variable.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

final Key = GlobalKey<FormState>();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Form(
        key: Key,
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 539.h,
                  width: 500.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.2), width: 2.w),
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 40.sp,
                      right: 40.sp,
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
                          height: 10.h,
                        ),
                        Text(
                          "Sign in to Chorme",
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text("Use your Google Account"),
                        SizedBox(
                          height: 35.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Email or Phone ",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                labelText: ("Email or Phone"),
                                focusedBorder: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 2,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.redAccent,
                                    width: 2,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                if (!value.contains('gmail')) {
                                  return 'Please enter a valid email';
                                }
                                if (!value.contains('.com')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Forgot email?",
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Color(0xff1A73E8),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50.h,
                            ),
                            Text(
                              "Not Your Computer? Use Guest mode to sign in privately.",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              "Learn more about using Guest mode",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff1A73E8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "Create accounts",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff1A73E8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 230.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.password);
                              },
                              child: GestureDetector(
                                onTap: () {
                                  if (Key.currentState!.validate()) {
                                    Navigator.pushNamed(
                                        context, Routes.password);
                                  }
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        DropdownButton(
                          hint: Text(
                            'English (United States)',
                          ),
                          value: selectItem,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectItem = newValue;
                            });
                          },
                          items: items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Text(
                          "Help",
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Privacy",
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          "Terms",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

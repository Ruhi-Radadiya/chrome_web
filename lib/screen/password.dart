import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:crome_web/global/variable.dart';

import '../global/routes.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
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
      body: Column(
        children: [
          Center(
            child: Container(
              height: 550.h,
              width: 500.w,
              decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 2.w),
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
                      height: 10.h,
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      padding: EdgeInsets.all(3.sp),
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
                    SizedBox(
                      height: 75.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: passwordController,
                          obscureText: isPassword,
                          obscuringCharacter: '•',
                          textInputAction: TextInputAction.done,
                          textAlign: TextAlign.start,
                          validator: (val) =>
                              (val!.isEmpty) ? "Enter your password..." : null,
                          onSaved: (val) {
                            password = val!;
                          },
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Enter Your Password",
                            focusedBorder: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.sp,
                              letterSpacing: 1,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                activeColor: Colors.blueAccent,
                                value: isPassword,
                                onChanged: (val) {
                                  isPassword = val!;

                                  setState(() {});
                                }),
                            Text("Hide Password"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff1A73E8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 210.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.verification);
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
                      items:
                          items.map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}

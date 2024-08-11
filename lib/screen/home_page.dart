import 'package:crome_web/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: Colors.black54,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.refresh,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 40.h,
                  width: 1299.w,
                  decoration: BoxDecoration(
                    color: Color(0xff172030),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xff333C4D),
                        radius: 15,
                        child: Text(
                          "G",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Search Google or type a URL",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                      Spacer(),
                      Icon(
                        Icons.star_border,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.extension_outlined,
                  color: Colors.white,
                  size: 22,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "|",
                  style: TextStyle(color: Colors.white24, fontSize: 22),
                ),
                SizedBox(
                  width: 10.w,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffE9D4FF),
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    size: 17,
                    color: Color(0xff6800D4),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 22,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.folder_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "RNW",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.folder_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "G-mail",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.folder_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Canva",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.folder_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Classroom",
                  style: TextStyle(color: Colors.white54, fontSize: 12.sp),
                ),
                Spacer(),
                Text(
                  ">>",
                  style: TextStyle(color: Colors.white54, fontSize: 12.sp),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "|",
                  style: TextStyle(color: Colors.white24, fontSize: 18.sp),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.folder_outlined,
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "All Bookmarks",
                  style: TextStyle(color: Colors.white54, fontSize: 12.sp),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Gmail",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Text(
                  "Images",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Icon(
                  Icons.science_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Icon(
                  Icons.apps,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.w,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffE9D4FF),
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    size: 17,
                    color: Color(0xff6800D4),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Text(
              "Google",
              style: TextStyle(color: Color(0xffA9C7FF), fontSize: 70),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search Google or type a URL",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Spacer(),
                  Icon(
                    Icons.mic,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.filter_center_focus_outlined,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...list.map(
                  (e) => Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25.w,
                          backgroundColor: Color(0xff44474E),
                          child: Image.network(
                            e['image'],
                            height: 25.h,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          e['name'],
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...list1.map(
                  (e) => Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 25.w,
                          backgroundColor: Color(0xff44474E),
                          child: Image.network(
                            e['image'],
                            height: 25.h,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          e['name'],
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 65.w,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 12.sp),
                  child: Column(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Color(0xff1E477E),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Add Shortcut",
                        style: TextStyle(color: Colors.white, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 40.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: Color(0xff1E477E),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.4, 0.4),
                            spreadRadius: 1.sp,
                            blurRadius: 1.sp,
                          ),
                          BoxShadow(
                            color: Color(0xff1E477E),
                            offset: Offset(-0.4, -0.4),
                            spreadRadius: 1.sp,
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Color(0xff1E477E),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.white.withOpacity(0.7),
                              size: 20.sp,
                            ),
                            SizedBox(
                              width: 7.sp,
                            ),
                            Text(
                              "Customize Chrome",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

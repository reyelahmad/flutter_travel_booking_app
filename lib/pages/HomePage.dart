import 'package:flutter/material.dart';
import 'package:travel_booking/const/colors.dart';
import 'package:travel_booking/model/data_and_info.dart';
import 'package:travel_booking/pages/details_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_booking/weidgets/fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 4, top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                            myText: "Hello Reyel",
                            mxline: 1,
                            myfontsize: 22.sp,
                            myfontcolors: AppColors.black,
                            myfontWeidth: FontWeight.w400),
                        MyText(
                            myText: "Find Your Hotel",
                            mxline: 1,
                            myfontsize: 32.sp,
                            myfontcolors: AppColors.black,
                            myfontWeidth: FontWeight.w500),
                      ],
                    ),
                    Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://scontent.fdac7-1.fna.fbcdn.net/v/t39.30808-6/277556244_3103552276527529_7735389418153277678_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH7A7QcKVcT2cFIIUHNUai3ATodsoOFgT0BOh2yg4WBPTFSflx_wfiCASKzBaAKAa7eWnwIhmXN4Y--sqMtVZpz&_nc_ohc=_ARsFxRaMJYAX88xXKX&_nc_ht=scontent.fdac7-1.fna&oh=00_AT_96Gn57ZdiO9-ryQrBY2bLLLhyV6F5DdGy1BZxMPnbEg&oe=62EA6EB8"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.h,
                      color: AppColors.blue,
                    ),
                    hintText: "Search For Hotel",
                    hintStyle: TextStyle(
                        color: AppColors.blue,
                        fontSize: 15.sp,
                        letterSpacing: 1.w),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.w),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16.h),
                    fillColor: AppColors.ofwhite,
                  ),
                ),
              ),
              MyText(
                  mxline: 1,
                  myText: "Popular Hotels",
                  myfontsize: 20.sp,
                  myfontcolors: AppColors.black,
                  myfontWeidth: FontWeight.w400),
              Expanded(
                flex: 40,
                child: SizedBox(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.w),
                                      topLeft: Radius.circular(15.w)),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage("${myList[index].img}"),
                                      fit: BoxFit.cover)),
                              width: 170.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    color: AppColors.ofwhite,
                                    height: 60.h,
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MyText(
                                                myText: "${myList[index].name}",
                                                myfontsize: 13.sp,
                                                myfontcolors: AppColors.black,
                                                myfontWeidth: FontWeight.w600,
                                                mxline: 1,
                                              ),
                                              Icon(
                                                Icons.favorite_outline,
                                                size: 15.h,
                                                color: Colors.red,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          MyText(
                                            myText: "${myList[index].location}",
                                            myfontsize: 11.5.sp,
                                            myfontcolors: AppColors.black,
                                            myfontWeidth: FontWeight.w400,
                                            mxline: 1,
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MyText(
                                                myText:
                                                    "\$${myList[index].price}" +
                                                        " /Night",
                                                myfontsize: 13.5.sp,
                                                myfontcolors: AppColors.black,
                                                myfontWeidth: FontWeight.w800,
                                                mxline: 1,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  MyText(
                                                      myText:
                                                          "${myList[index].star}",
                                                      mxline: 1,
                                                      myfontsize: 13.5,
                                                      myfontcolors:
                                                          AppColors.black,
                                                      myfontWeidth:
                                                          FontWeight.w600),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15.h,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        );
                      }),
                ),
              ),
              Expanded(
                  flex: 45,
                  child: Container(
                    color: Colors.red,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

//*child: ListView.builder(
//             itemCount: myList.length,
//             itemBuilder: (context, index) {return Column(
//               children: [
//
//
//             Text("${myList[index].name}"),
//                 InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(
//                     model: myList[index],
//
//                   )));
//                 },
//                   child: Container(
//                     height: 250,
//                     width: 250,
//                     decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("${myList[index].img}",),fit: BoxFit.cover)),),
//                 )
//
//               ],
//             );})

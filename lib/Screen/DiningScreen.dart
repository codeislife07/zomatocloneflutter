import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../MyBehavior.dart';
import '../main.dart';

class DiningScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>DinigScreenState();

}

class DinigScreenState extends State<DiningScreen> {
  List<String> tabName=[
    "Filter",
    "Book Trible",
    "Nearest",
    "Rating 4.0+",
    "Outdoor Seating",
    "serves Alcohol",
    "Pure Veg",
    "Open Now",
    "Cafes",
    "Fine Dining",
    "Rating",
    "Cost",
  ];


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Container(
      color: Colors.pink,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: [
                SizedBox(height: 10.h,),

                //appbar dynamic Create
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.location_on,size: 25.sp,color: Colors.pink,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Sadar",style: TextStyle(fontWeight: FontWeight.bold),),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 5.w),
                              child: FaIcon(FontAwesomeIcons.angleDown,size: 15.sp,),
                            ),
                          ],
                        ),
                        Text("Rajkot")
                      ],),Spacer(),

                    Container(
                      height: 30.h,width: 30.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.grey[300]!)
                      ),
                      child:  Center(child: Icon(Icons.g_translate)),
                    ),
                    SizedBox(width: 5.w,),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 30.h,width: 30.w,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiaLO5Z4Ga_OJMvDSNnn2b_UT6iMUvWU2Btg&usqp=CAU",),
                        ),
                      ),
                    )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.grey[300]!)
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Flexible(
                            child: TextField(
                              autofocus: false,
                              decoration: InputDecoration(
                                hintText: "Search",
                                prefixIcon: Icon(Icons.search,color: Colors.pink,),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          Icon(Icons.keyboard_voice_outlined,color: Colors.pink,),SizedBox(width: 10.w,)
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  child: ListView.builder(
                    itemCount: tabName.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(5.h),
                        child: Container(
                          child: index==0?Container(
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 5.w,),
                                Icon(Icons.tune,size: 10.sp,),
                                Text("${tabName[index]}",style: TextStyle(fontSize: 10.sp),),
                                SizedBox(width: 5.w,),
                                FaIcon(FontAwesomeIcons.angleDown,size: 10.sp,),
                                SizedBox(width: 5.w,),
                              ],
                            ),
                          ):index==tabName.length-1 || index==tabName.length-2?Container(
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 5.w,),
                                Text("${tabName[index]}",style: TextStyle(fontSize: 10.sp),),
                                SizedBox(width: 5.w,),
                                FaIcon(FontAwesomeIcons.angleDown,size: 10.sp,),
                                SizedBox(width: 5.w,),
                              ],
                            ),
                          ):Container(
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.grey[300]!)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 5.h),
                              child: Center(child: Text("${tabName[index]}")),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //search box
                Expanded(
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: ListView(
                      children: [
                        SizedBox(height: 10.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Divider()),
                              SizedBox(
                                width: 10.w,
                              ),
                              Center(child: Text("CURATED COLLECTIONS",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,

                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        Container(
                          height: 120.h,
                          child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal:10.w),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.r),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height:120.h,width: 100.w,
                                            child: Image.asset("assets/images/img_dining${index+1}.jpeg",fit: BoxFit.fill,)),
                                        Positioned(
                                          left: 5.w,
                                            bottom: 20.h,
                                            child: Text("Collection 1",style: TextStyle(fontSize:18,color: Colors.white),))
                                      ],
                                    )),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                border: Border.all(color: Colors.grey[300]!)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(5.h),
                                child: Row(children: [
                                  Text("Explore More",style: TextStyle(color: Colors.pink),),Icon(Icons.arrow_forward,color: Colors.pink,)
                                ],),
                              ),
                            ),
                            Spacer()
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(child: Divider()),
                              SizedBox(
                                width: 10.w,
                              ),
                              Center(child: Text("POPULAR RESTAURANT AROUND YOU",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,

                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: 12,
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical, itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height:150.h,width: double.infinity,
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r), ),
                                                child: Image.asset("assets/images/1image.jpeg",fit: BoxFit.fill,))),
                                        Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 10.h,),
                                              Row(
                                                children: [
                                                  Text("TGT-The Grand Thakar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),
                                                  Spacer(),
                                                  Container(
                                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
                                                        color: Colors.green[900]!
                                                    ),
                                                    child: Padding(
                                                      padding:  EdgeInsets.symmetric(horizontal:5.w),
                                                      child: Text("4.9★",style: TextStyle(color: Colors.white),),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Text("(Jubilee Chowk)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp)),
                                              Row(
                                                children: [
                                                  Text("Norh India, South Indian,Chinese"),
                                                  Spacer(),
                                                  Text("₹700 for two")
                                                ],
                                              ),
                                              Text("Kothi Compound ,Rajkot"),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Positioned(
                                      right: 10.w,
                                        top: 10.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50.r)
                                          ),
                                          child: IconButton(
                                            color: Colors.white,
                                            onPressed: (){},icon: Icon(Icons.favorite_outline,color: Colors.pink,),),
                                        )
                                    ),
                                    Positioned(
                                        right: 10.w,
                                        top: 120.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[300]!,
                                              borderRadius: BorderRadius.circular(20.r)
                                          ),
                                          child:Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Center(child: Text("200m"),),
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },

                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

}
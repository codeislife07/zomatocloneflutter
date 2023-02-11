import 'package:collapsible_app_bar/collapsible_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomatocloneflutte/MyBehavior.dart';

class OfferScreen extends StatelessWidget{
  String image;
  int indexI;
  List<String> tabName=[
    "sort",
    "Fast Delivery",
    "Rating 4.0+",
    "New Arrivals",
    "Pure Veg",
    "Cuisines",
    "More",
  ];
  OfferScreen(this.image, this.indexI);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 30.h,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: BackButton(color: Colors.black,),
                  expandedHeight: 200.0.h,
                  floating: false,
                  pinned: true,
                  title: Text("Sadar,Rajkot",style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                  flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        height: 200.h,width: double.infinity,
                        child: Image.asset(
                          image,fit: BoxFit.fill,
                        ),
                      )),

                ),
              ];
            },
            body: Column(
              children: [
                SizedBox(height: 20.h,),
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
                                hintText: "Restaurant name or dish name",
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
                                Text("sort",style: TextStyle(fontSize: 10.sp),),
                                SizedBox(width: 5.w,),
                                FaIcon(FontAwesomeIcons.angleDown,size: 10.sp,),
                                SizedBox(width: 5.w,),
                              ],
                            ),
                          ):index==5 || index==6?Container(
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
                SizedBox(height: 10.h,),
                Expanded(child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView(children: [
                    indexI==0?Column(
                      children: [
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
                              Center(child: Text("GET MINIMUM 200 OFF!",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        Container(
                          height: 170.h,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3, itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 80.h,width: 80.w,
                                    child: Image.asset("assets/images/img1.jpeg"),
                                  ),
                                  Text("Tea Post",style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text("Tea,Fast Food",style: TextStyle(fontSize: 8.sp),),
                                  Row(
                                    children: [
                                      Icon(Icons.lock_clock,size: 8.sp,color: Colors.green,),
                                      Text("30-40 min",style: TextStyle(fontSize: 8.sp),),
                                    ],
                                  ),
                                  Text("Flat 200 OFF",style: TextStyle(fontSize: 8.sp,color: Colors.blue),),

                                ],
                              ),
                            );
                          },

                          ),
                        )
                      ],
                    ):Container(),
                    ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: ListView.builder(
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
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
                                    children: [
                                      Container(
                                          height:150.h,width: double.infinity,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(10.r),topLeft: Radius.circular(10.r), ),
                                              child: Image.asset("assets/images/img${index+1}.jpeg",fit: BoxFit.fill,))),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(vertical: 10.h),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 20.h,),
                                            Row(
                                              children: [
                                                SizedBox(width: 10.w,),
                                                Icon(Icons.alarm,color: Colors.green,),
                                                SizedBox(width: 5.w,),
                                                Text("35-40 min ● 1 km"),
                                                Spacer(),
                                                Text("\$150 for one"),SizedBox(width: 5.w,)
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Positioned(
                                      top: 10.h,
                                      right: 10.w,
                                      child: Icon(Icons.favorite_outline,size: 20.sp,)),
                                  Positioned(
                                      bottom: 90.h,
                                      left: 10.w,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Rajdhani Restaurant",style: TextStyle(fontSize: 20.sp,color: Colors.white,fontWeight: FontWeight.bold),),
                                            Row(
                                              children: [
                                                Text("Gujarat ● North India ● Chinese",style: TextStyle(color: Colors.white),),SizedBox(width: 100.w,),
                                                Container(
                                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),
                                                      color: Colors.green
                                                  ),
                                                  child: Padding(
                                                    padding:  EdgeInsets.symmetric(horizontal:5.w),
                                                    child: Text("4.0★",style: TextStyle(color: Colors.white),),
                                                  ),
                                                )
                                              ],)
                                          ],
                                        ),
                                      )),
                                  Positioned(
                                      left: 10.w,
                                      bottom: 40.h,
                                      child: Container(
                                        height: 40.h,
                                        width: 310.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.r),
                                          gradient: LinearGradient(
                                            colors: [Colors.indigo, Colors.indigoAccent],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(Icons.percent,color: Colors.white,),
                                            Text("50% OFF up to 100",style: TextStyle(color: Colors.white),)
                                            ,SizedBox(width: 150.w,),Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.indigo,
                                                  borderRadius: BorderRadius.circular(10.r)
                                              ),
                                              child: Padding(
                                                padding:  EdgeInsets.all(5.sp),
                                                child: Text("+1",style: TextStyle(color: Colors.white),),
                                              ),
                                            ),SizedBox(width: 10.w,)
                                          ],
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },

                      ),
                    )
                  ],),
                ))

              ],
            )
          ),
        ),
      ),
    );
  }

}
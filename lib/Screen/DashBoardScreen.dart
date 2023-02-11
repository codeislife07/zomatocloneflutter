import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zomatocloneflutte/main.dart';

import '../MyBehavior.dart';

class DashBoardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>DashBoardScreenState();

}

class DashBoardScreenState extends State<DashBoardScreen  > {

  List<String> tabName=[
    "sort",
    "Fast Delivery",
    "Rating 4.0+",
    "New Arrivals",
    "Pure Veg",
    "Cuisines",
    "More",
  ];

  List<String> category=[
    "Pizza",
    "Biryani",
    "Shake",
    "Burger",
    "Chicken",
    "Sandwich",
    "Noodles",
    "Frid Rice",
    "Thali",
    "Cake",
    "Panner",
    "Dosa",
    "Ice Cream",
    "Rolls",
    "Paratha",
    "Chaat",
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
                //search box
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
                              Center(child: Text("OFFERS FOR YOU",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.h,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal:10.w),
                                child: GestureDetector(
                                  onTap: (){
                                    if(index!=1){

                                    }
                                   },
                                  child: Container(
                                    height: 100.h,width: 100.w,
                                    child: Image.asset("assets/images/frame${index+1}.png",fit: BoxFit.fill,),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
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
                              Center(child: Text("WHAT'S ON YOUR MIND?",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        Container(
                          height: 180.h,
                          child: GridView.count(
                            scrollDirection: Axis.horizontal,
                            crossAxisCount: 2,
                          children: List.generate(16, (index) => Column(
                            children: [
                              SizedBox(height: 5.h,),
                              Container(
                                height: 50.h,
                                child: Image.asset("assets/images/category/ic_frame${index+1}.jpg",fit: BoxFit.fill,),
                              ),
                              Text("${category[index]}")
                            ],
                          )),
                          ),
                        ),
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
                              Center(child: Text("392 RESTAURANT",style: TextStyle(color: Colors.grey[500]!),)),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(child: Divider()),
                            ],
                          ),
                        ),
                        ListView.builder(
                          itemCount: 2,
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
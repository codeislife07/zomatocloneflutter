import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomatocloneflutte/MyBehavior.dart';
import 'package:zomatocloneflutte/Screen/OtpScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var coutry={"name": "India", "countryCode": "IN", "phoneCode": "+91"};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: [
            Container(
                height: 270.h,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/login_illustration_2.webp",
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "India's #1 Food Delivery \n      and Dining App",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10.w,
                      ),
                      Center(child: Text("Log in or sign up")),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 40.h,
                    width: double.infinity,
                    child: Row(
                      children: [
                        // CountryPhoneCodePicker.withDefaultSelectedCountry(
                        //   borderRadius: 5,
                        //   borderWidth: 1,
                        //   borderColor: Colors.grey[300]!,
                        //   style: const TextStyle(fontSize: 16),
                        //   searchBarHintText: 'Search by name',
                        //   defaultCountryCode: Country(name: coutry.name, countryCode: coutry.code, phoneCode: coutry.phoneCode)
                        // ),
                        //
                        Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: Colors.grey[300]!)
                          ),
                          child: CountryListPick(
                              appBar: AppBar(
                                backgroundColor: Colors.pink,
                                title: Text('Select Contry'),
                              ),

                              // if you need custome picker use this
                              pickerBuilder: (context, CountryCode? countryCode){
                                return Row(
                                  children: [
                                    Image.asset(
                                      countryCode!.flagUri!,
                                      package: 'country_list_pick',
                                    ),
                                    Icon(Icons.expand_more,color: Colors.grey,)
                                    // Text(countryCode.code!),
                                    // Text(countryCode.dialCode!),
                                  ],
                                );
                              },

                              // To disable option set to false
                              theme: CountryTheme(
                                isShowFlag: true,
                                isShowTitle: false,
                                isShowCode: false,
                                isDownIcon: true,
                                showEnglishName: true,
                              ),
                              // Set default value
                              initialSelection: '+91',
                              // or
                              // initialSelection: 'US'
                              onChanged: (CountryCode? code) {
                                setState(() {
                                  coutry={"name": "${code!.name}", "countryCode": "${code!.code}", "phoneCode": "${code!.dialCode}"};
                                 // coutry=Country(name: code!.name!, countryCode: code.code!, phoneCode: code.dialCode!);
                                });
                              },
                              // Whether to allow the widget to set a custom UI overlay
                              useUiOverlay: true,
                              // Whether the country list should be wrapped in a SafeArea
                              useSafeArea: false
                          ),
                        ),
                        SizedBox(
                          width: 19.w,
                        ),
                        Expanded(
                            child: TextField(
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,autofocus: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            prefixText:"${coutry['phoneCode']} ",
                            prefixStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Phone Number",
                            hintStyle: TextStyle(color: Colors.grey[300]!),
                            enabledBorder:  OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Colors.grey[300]!)),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey[300]!)),
                            focusedBorder:OutlineInputBorder(
                                borderSide:
                                BorderSide(width: 1, color: Colors.grey[300]!))
                          ),

                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(15.h))),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => OtpScreen()));
                          },
                          child: Text("Continue"))),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10.w,
                      ),
                      Center(child: Text("or")),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey[300]!),
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {},
                            icon: Image.asset("assets/images/ic_google.png")),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.grey[300]!)),
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  isDismissible:false,
                                backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300.h,
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              Expanded(child: Container(color: Colors.transparent,)),
                                              Container(
                                                decoration:BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  color: Colors.white
                                                ),
                                                child: Column(
                                                  children: [
                                                    SizedBox(height: 20.h,),
                                                    Padding(
                                                      padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                                                      child: Container(
                                                        width:double.infinity,
                                                        child: ElevatedButton.icon(
                                                            style: ButtonStyle(
                                                                padding:MaterialStateProperty.all(EdgeInsets.symmetric(vertical:20.h)),
                                                                elevation:MaterialStateProperty.all(0),
                                                                backgroundColor:MaterialStateProperty.all(Colors.white),
                                                                shape: MaterialStateProperty.all<
                                                                    RoundedRectangleBorder>(
                                                                    RoundedRectangleBorder(
                                                                        borderRadius:
                                                                        BorderRadius
                                                                            .circular(18.0),
                                                                        side: BorderSide(
                                                                            color:
                                                                            Colors.grey[300]!)))),
                                                            onPressed: () {},
                                                            icon: Icon(
                                                              Icons.facebook,
                                                              color: Colors.blue,
                                                            ),
                                                            label:
                                                            Text("Continue with Faceboook",style: TextStyle(color: Colors.black),)),
                                                      ),
                                                    ),
                                                    SizedBox(height: 20.h,),
                                                    Padding(
                                                      padding:  EdgeInsets.symmetric(horizontal: 10.0.w)
                                                      ,                                          child: Container(
                                                      width:double.infinity,
                                                      child: ElevatedButton.icon(
                                                          style: ButtonStyle(
                                                              padding:MaterialStateProperty.all(EdgeInsets.symmetric(vertical:20.h)),
                                                              elevation:MaterialStateProperty.all(0),
                                                              backgroundColor:MaterialStateProperty.all(Colors.white),
                                                              shape: MaterialStateProperty.all<
                                                                  RoundedRectangleBorder>(
                                                                  RoundedRectangleBorder(
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(18.0),
                                                                      side: BorderSide(
                                                                          color:
                                                                          Colors.grey[300]!)))),
                                                          onPressed: () {},
                                                          icon: Icon(

                                                            Icons.email,
                                                            color: Colors.black,
                                                          ),
                                                          label:
                                                          Text("Continue with Email",style: TextStyle(color: Colors.black),)),
                                                    ),
                                                    ),
                                                    SizedBox(height: 20.h,)
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Positioned(
                                              top:20.h,
                                              left:170.w,
                                              child: Container(
                                                decoration:BoxDecoration(
                                                    color:Colors.black,
                                                  borderRadius: BorderRadius.circular(50)
                                                ),
                                                child: Center(
                                                  child: IconButton(
                                                    color:Colors.black,
                                                    onPressed: (){
                                                      Navigator.pop(context);
                                                    },icon: Icon(Icons.cancel_outlined,color: Colors.white,),),
                                                ),
                                              ))
                                        ],
                                      ),
                                    );
                                  });
                            },
                            icon: Icon(Icons.more_vert)),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("By continuing,you agree to our"),
                  Text("Term of service  Privacy Policy  Content Policy")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

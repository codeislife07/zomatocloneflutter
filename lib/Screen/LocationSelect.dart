import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zomatocloneflutte/Screen/HomeScreen.dart';

class LocationSelect extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LocationSelectState();

}

class LocationSelectState extends State<LocationSelect> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
    backgroundColor: Colors.white,
      body: Column(
        children: [
          Spacer(),
          Container(
            height: 200.h,
            child: Image.asset("assets/images/ic_location.png"),
          ),
          Text("We don't have your location,yet!",style: TextStyle(fontSize: 16.sp),),
          SizedBox(height: 10.h,),
          Text("Set your location to start exporing \n restaurants near you",textAlign: TextAlign.center,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(EdgeInsets.all(10))
                    ),
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>HomeScreen()), (route) => false);
                    },label: Text("Enable device location"), icon: Icon(Icons.location_on))),
          )
          ,Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(child: Text(
                "We ony access your location while you are using  the app to improve your expirence.",textAlign: TextAlign.center,)),
          )
        ],
      ),
    );
  }
}
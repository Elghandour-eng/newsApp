import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CategoryScreen extends StatefulWidget {
 static String id ='categoryScreen';
 String categoryTitle;
 CategoryScreen({this.categoryTitle});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SmartCode',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 30.sp,fontWeight: FontWeight.bold),),
                  Text(' News',style: TextStyle(color: Colors.grey,
                      fontSize: ScreenUtil().setSp(30),fontWeight: FontWeight.w600),
                  ),

                ],
              ),
              Shimmer.fromColors(
                baseColor: Colors.deepPurple,
                highlightColor: Colors.grey,
                child: Text(widget.categoryTitle,style: TextStyle(
                    fontSize: ScreenUtil().setSp(30),fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

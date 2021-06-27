import 'package:animations/animations.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'file:///C:/Users/start/AndroidStudioProjects/newsapp/lib/Models/categoryMode.dart';
import 'package:newsapp/screens/searchScreen.dart';
import 'package:newsapp/widgets/categroyContainer.dart';


class HomeScreen extends StatefulWidget {
  static String id ='HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Category>categories=
      [
        Category(title: 'General',),
        Category(title: 'Business'),
        Category(title: 'Sports'),
        Category(title: 'Entertainment'),
        Category(title: 'Health'),

      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('dsf');
        },
        child: OpenContainer(

          transitionDuration: Duration(milliseconds: 700),

           openBuilder: (context,a){
             return
           SearchScreen();

           },
          closedBuilder: (context,a){
            return
              Icon(Icons.search,color: Colors.white,);
          },
          closedColor: Colors.deepPurple,
        ),

      ),
      appBar:AppBar(
bottom:
  PreferredSize(
    preferredSize: Size(30.h, 50.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding:  EdgeInsets.all(ScreenUtil().setWidth(5)),
          child: CountryCodePicker(
            showOnlyCountryWhenClosed: true,

          ),
        ),
      ],
    ),
  ),

        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('SmartCode',style: TextStyle(color: Colors.deepPurple,
              fontSize: 30.sp,fontWeight: FontWeight.bold),),
              Text(' News',style: TextStyle(color: Colors.grey,
                  fontSize: ScreenUtil().setSp(30),fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: .224.sh,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context,index)
            {
return CategoryContainer(
  category:categories[index],
);
            }),
          )
        ],
      ),
    );
  }
}

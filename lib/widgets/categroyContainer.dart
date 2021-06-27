import 'package:flutter/material.dart';
import 'package:newsapp/Models.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/screens/CategoryScreen.dart';

class CategoryContainer extends StatelessWidget {
  Category category =Category();
  CategoryContainer({this.category});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.w),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
          CategoryScreen(categoryTitle: category.title,)));
        },
        child: Container(
          height: 90.sh,
          width: 250.w,
          decoration: BoxDecoration(image: DecorationImage(
            image: NetworkImage(category.imageUrl==null||category.imageUrl.isEmpty?
            'https://www.gstatic.com/earth/social/00_generic_facebook-001.jpg'
            :category.imageUrl),
            fit: BoxFit.cover
          ),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Text(category.title,
            style: TextStyle(
              fontSize: 30.sp,color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}

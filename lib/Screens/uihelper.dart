import 'package:flutter/material.dart';
class uihelper{
  static CustomTextField({required TextEditingController controller,required String text,required bool tohide,required TextInputType textinputtype}){
    return Container(
      height: 44,width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0XFF121212),
        border: Border.all(color: Color(0XFFFFFFFF))
      ),
      child: TextField(
        controller: controller,
        obscureText: tohide,
        keyboardType: textinputtype,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Color(0XFFFFFFFF)),
          border: InputBorder.none,

        ),

      ),
    );



  }



  static CustomImage({required String imgurl}){

    return Image.asset("assets/images/$imgurl");
  }
}
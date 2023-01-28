import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Utils/colors.dart';


var fieldStylelogin=
InputDecoration(
  //   focusColor: AppColor.white,

  hintStyle: TextStyle(color:  ApplicationColors.blackTextfieldTextcolor),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color:  ApplicationColors.redColor)
  ),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    // borderSide: BorderSide(color: AppColor.black3button, width: 2),
  ),

  filled: false,
  fillColor: ApplicationColors.whiteColor,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color:  ApplicationColors.blackTextfieldborder,),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color: ApplicationColors.blackTextfieldborder),
  ),
);

var homecontainergrey=
InputDecoration(
  //   focusColor: AppColor.white,

  hintStyle: TextStyle(color:  ApplicationColors.blackTextfieldTextcolor),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color:  ApplicationColors.redColor)
  ),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    // borderSide: BorderSide(color: AppColor.black3button, width: 2),
  ),

  filled: true,
  fillColor: ApplicationColors.bookinggreyblack,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color:  ApplicationColors.blackTextfieldborder,),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
    borderSide: BorderSide(color: ApplicationColors.blackTextfieldborder),
  ),
);





var fieldStyle = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: ApplicationColors.blackTextfieldborder, width: 2.0),
  ),
  isDense: true,

  border: InputBorder.none,
   fillColor: ApplicationColors.whiteColor,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: ApplicationColors.blackTextfieldborder,
    ),
  ),
  // focusedBorder: OutlineInputBorder(
  //   borderSide: BorderSide(
  //     color: Colors.red,
  //   ),
  // ),
  // errorBorder: OutlineInputBorder(
  //   borderSide: BorderSide(
  //     color: Colors.red,
  //   ),
  // ),
);


class Boxdec{




  static BoxDecoration cardshadowcontainer =BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
          color: Colors.blueAccent.withOpacity(0.2),
          offset: Offset(
            1.0,
            2.0,
          ),
          blurRadius: 30.0,
          spreadRadius: 8,
          blurStyle: BlurStyle.outer), //BoxShadow
    ],
  );




      static BoxDecoration containerdecoration  =
  BoxDecoration(
      color: ApplicationColors.whiteColor,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [BoxShadow(
          color: ApplicationColors.blackTextfieldborder,
          offset: Offset(0,0),
          blurRadius: 1
      )]
  );


  static BoxDecoration containershadow  =  BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: ApplicationColors.yellowColorD21,
    boxShadow:  [
      // BoxShadow(
      //     color:ApplicationColors.blackTextfieldshadow,
      //     offset: Offset(
      //       2.0,
      //       6.0,
      //     ),
      //     blurRadius: 15.0,
      //     spreadRadius: -1,
      //     blurStyle: BlurStyle.outer
      // ), //BoxShadow
    ],
  );



  static BoxDecoration textfieldshadow  =  BoxDecoration(
    borderRadius: BorderRadius.circular(18),
    // color: ApplicationColors.transparentColors,
    boxShadow:  [
      BoxShadow(
          color:Colors.blueAccent.withOpacity(0.2),
          offset: Offset(
            1.0,
            2.0,
          ),
          blurRadius: 30.0,
          spreadRadius: 8,
          blurStyle: BlurStyle.outer
      ), //BoxShadow
    ],
  );



}



class Textstyle1{
  static const TextStyle OpenSansRegular14= TextStyle(
    fontSize: 14,
    height: 1.4,
    fontFamily: 'OpenSans-Regular',
    color: ApplicationColors.blackTextfieldTextcolor,
  );
  static const TextStyle  PoppinsMedium14= TextStyle(
    fontSize: 14,
    height: 1.4,
    fontFamily: 'Poppins-Medium',
      color: Colors.black
  );

  static const TextStyle  PoppinsLight12= TextStyle(
    fontSize: 12,
    height: 1.4,
    fontFamily: 'Poppins-Light',
      color: ApplicationColors.blacktextheading
  );

  static const TextStyle  PoppinsRegular15= TextStyle(
    fontSize: 15,
    fontFamily: 'Poppins-Regular',
      color: ApplicationColors.blacktextheading
  );

  static const TextStyle  PoppinsBold12= TextStyle(
      fontSize: 12,
      height: 1.4,
      fontFamily: 'Poppins-Light',
      fontWeight: FontWeight.bold,
      color: ApplicationColors.blacktextheading
  );





}



/*

class Textstyle1 {
  static const TextStyle appbartextstyle = TextStyle(
      fontSize: 18,
      fontFamily: 'IBMPlexSans-Regular',
      color: Appcolors.appbartextcolor);
  static const TextStyle appbartextstyle1 = TextStyle(
      fontSize: 18, fontFamily: 'Poppins-Bold', color: Appcolors.text_white);
  static const TextStyle signupheadingText = TextStyle(
      fontSize: 25,
      fontFamily: 'IBMPlexSans-Regular',
      color: Appcolors.signupheadertextcolor);
  static const TextStyle signupText = TextStyle(
      fontSize: 14,
      fontFamily: 'IBMPlexSans-Regular',
      color: Appcolors.signuptextcolor);
  static const TextStyle text10 = TextStyle(
      fontSize: 10, fontFamily: 'Poppins-Regular', color: Colors.white);
  static const TextStyle textb10 = TextStyle(
      fontSize: 10, fontFamily: 'Poppins-Bold', color: Colors.white);
  static const TextStyle text11 = TextStyle(
      fontSize: 11, fontFamily: 'Poppins-Regular', color: Colors.white);
  static const TextStyle text12 = TextStyle(
      fontSize: 12, fontFamily: 'Poppins-Regular', color: Colors.white);
  static const TextStyle texts12 = TextStyle(
      fontSize: 12, fontFamily: 'Poppins-SemiBold', color: Colors.white);
  static const TextStyle text12black = TextStyle(
      fontSize: 12, fontFamily: 'Poppins-Regular', color: ApplicationColors.blackColor2E);
  static const TextStyle text14 = TextStyle(
      fontSize: 14, fontFamily: 'Poppins-Regular', color: Colors.white);
  static const TextStyle text14bold =
  TextStyle(fontSize: 14, fontFamily: 'Poppins-Bold', color: Colors.white);
  static const TextStyle text18 = TextStyle(
      fontSize: 18, fontFamily: 'Poppins-Regular', color: Colors.white);
  static const TextStyle text18bold =
  TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold', color: Colors.white);
  static const TextStyle text18boldBlack =
  TextStyle(fontSize: 18, fontFamily: 'Poppins-Bold', color: Colors.black);
  static const TextStyle text12bold = TextStyle(
      fontSize: 12, fontFamily: 'Poppins-Bold', color: Colors.white);
}



class Boxdec {
  static BoxDecoration bcgreyrad6 = BoxDecoration(
      border: Border.all(color: Appcolors.button_grey),
      borderRadius: BorderRadius.circular(6),
      color: Appcolors.background_blue1);
  static BoxDecoration bcgreyrad25 = BoxDecoration(
      border: Border.all(color: ApplicationColors.dropdownColor3D),
      borderRadius: BorderRadius.circular(40),
      color: ApplicationColors.blackColor2E);
  static BoxDecoration b_backcvioletrad6 = BoxDecoration(
      border: Border.all(color: Appcolors.text_violet),
      borderRadius: BorderRadius.circular(6),
      color: Appcolors.text_violet);
  static BoxDecoration bcvioletrad6 = BoxDecoration(
      border: Border.all(color: Appcolors.text_violet),
      borderRadius: BorderRadius.circular(6),
      color: Appcolors.background_blue1);
  static BoxDecoration bcgreyrad12 = BoxDecoration(
      border: Border.all(color: Appcolors.button_grey),
      borderRadius: BorderRadius.circular(12),
      color: Appcolors.background_blue1);
  static BoxDecoration bcbluerad6 = BoxDecoration(
      border: Border.all(color: Appcolors.background_blue1),
      borderRadius: BorderRadius.circular(6),
      color: Appcolors.background_blue);
  static BoxDecoration bcbluerad6withnoborderright = BoxDecoration(
    // border: Border.all(color: Appcolors.background_blue1),
      borderRadius:BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.zero, bottomLeft:  Radius.circular(5.0), bottomRight: Radius.zero,),
      color: Appcolors.background_blue);
  static BoxDecoration bcbluerad6withnoborderleft = BoxDecoration(
    // border: Border.all(color: Appcolors.background_blue1),
      borderRadius:BorderRadius.only(topLeft:Radius.circular(5.0), topRight:  Radius.circular(5.0), bottomLeft:  Radius.circular(5.0), bottomRight: Radius.circular(5.0),),
      color: Appcolors.background_blue);
  static BoxDecoration conrad6colorblack = BoxDecoration(
    // border: Border.all(color: ApplicationColors.blackColor2E),
      borderRadius: BorderRadius.circular(6),
      color: ApplicationColors.blackColor2E);
  static BoxDecoration conrad6colorwhite = BoxDecoration(
    // border: Border.all(color: ApplicationColors.blackColor2E),
      borderRadius: BorderRadius.circular(6),
      color: Color(0xffE0E0E0));
  static BoxDecoration conrad6appColors2 = BoxDecoration(
    // border: Border.all(color: ApplicationColors.blackColor2E),
      borderRadius: BorderRadius.circular(6),
      color: ApplicationColors.appColors2);
  static BoxDecoration conrad6colorgrey = BoxDecoration(
    // border: Border.all(color: ApplicationColors.blackColor2E),
      borderRadius: BorderRadius.circular(12),
      color: ApplicationColors.dropdownColor3D,
  );
  static BoxDecoration buttonBoxDecRed_r6 = BoxDecoration(
      border: Border.all(color: ApplicationColors.redColor67),
      borderRadius: BorderRadius.circular(6),
      color: ApplicationColors.redColor67);
  static BoxDecoration buttonBoxDecRed_y6 = BoxDecoration(
      border: Border.all(color: ApplicationColors.yellowColorD21),
      borderRadius: BorderRadius.circular(6),
      color: ApplicationColors.yellowColorD21);
  static BoxDecoration squareBoxshadow = BoxDecoration(
    //gradient: LinearGradient(colors: [ApplicationColors.blackColor2E,Color.fromRGBO(245, 245, 245, 0.7098039215686275),]),
    borderRadius: BorderRadius.circular(100),
    boxShadow:  [
      BoxShadow(
        // blurStyle: BlurStyle.outer,
          color: Color.fromRGBO(
              9, 9, 9, 0.7098039215686275),
          //Color.fromRGBO(245, 245, 245, 0.7098039215686275)
          offset: Offset(0, 5),
          blurRadius: 19,
          spreadRadius: 0),
      BoxShadow(
        // blurStyle: BlurStyle.outer,
          color: Color.fromRGBO(245, 245, 245, 0.7098039215686275),
          //Color.fromRGBO(245, 245, 245, 0.7098039215686275)
          offset: Offset(0, 10),
          blurRadius: 38,
          spreadRadius: 0)
    ],);
}*/

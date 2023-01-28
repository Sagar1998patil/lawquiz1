import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Components/styleandborder.dart';
import '../../Utils/Helper/helper.dart';
import '../../Utils/colors.dart';
import 'otpScreen.dart';


class SignIn_Page_byNumber extends StatefulWidget {
  const SignIn_Page_byNumber({Key? key}) : super(key: key);

  @override
  State<SignIn_Page_byNumber> createState() => _SignIn_Page_byNumberState();
}

class _SignIn_Page_byNumberState extends State<SignIn_Page_byNumber> {

  String? NumberStore;
  String? ID;
  String? idfget;







  TextEditingController phoneNumberController = TextEditingController();


  String? token;
  RegisterNumberPost()async{
    var data = {
      "mobile_no":phoneNumberController.text,
      "social_id":" ",
      "social_type":" "
    };



  }



  String FBToken="";
  String GOOGLEToken="";
  String APPLEToken="";

  TargetPlatform? platform ;

  String? googleEmail;
  String?  fbEmail;
  //facebok method










  final GlobalKey<FormState> _forMKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Future<bool> showExitPopUp() async {
      return await


      showDialog(

        context: context,
        builder: (context) =>
            Dialog(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
              elevation: 0.0,
              backgroundColor: Colors.transparent,


              child: Container(
                margin: EdgeInsets.only(left: 0.0,right: 0.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 18.0,
                      ),
                      margin: EdgeInsets.only(top: 13.0,right: 8.0),
                      decoration: BoxDecoration(
                          color: ApplicationColors.yellowColorD21,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 0.0,
                              offset: Offset(0.0, 0.0),
                            ),
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: new
                                Text("Are you sure to exit ?", style:TextStyle(fontSize: 20.0,color: Colors.black)),
                              )//
                          ),
                          SizedBox(height: 24.0),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(top: 15.0,bottom:15.0),
                              decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0)),
                              ),
                              child:  Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () =>  exit(0),
                                    // passing true
                                    child: Text('Yes',style: TextStyle(color: Colors.black),),
                                    style: ElevatedButton.styleFrom(
                                      primary: ApplicationColors.yellowColorD21,
                                    ),
                                  ),
                                  Spacer(),
                                  ElevatedButton(

                                    onPressed: () => Navigator.of(context).pop(false),
                                    // passing false
                                    child: Text('No',style: TextStyle(color: Colors.black),),
                                    style: ElevatedButton.styleFrom(
                                      primary: ApplicationColors.yellowColorD21,
                                    ),
                                  ),
                                  Spacer(),

                                ],
                              ),
                            ),
                            onTap:(){
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
      ) ??
          false;
    }


    return

      WillPopScope(
        onWillPop: showExitPopUp,
        child: Scaffold(
          bottomNavigationBar: IntrinsicHeight(
            child: Padding(
              padding:EdgeInsets.only(bottom: 20,),
              child: GestureDetector(onTap: ()async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Otp_Verification( mobileNumber: phoneNumberController.text,otp:"1234",)));

                // if (phoneNumberController.text.length==0){
                //   Helper.dialogCall.showToast(context,"Enter a Number");
                // }else{
                //   RegisterNumberPost();
                // }


              },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.height*0.058,
                      decoration:  Boxdec.containershadow.copyWith(borderRadius: BorderRadius.circular(13)),

                      child:


                      Text("Next",style: TextStyle(color: ApplicationColors.blackbackcolor,fontSize: 16,fontFamily: "Poppins-Medium")),alignment: Alignment.center,),
                  )

              ),
            ),
          ),
          appBar:
          AppBar(
            leadingWidth: 100,
            toolbarHeight: 100,
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: new IconButton(
                  icon: Image.asset(
                    "assets/images/find/Icon Back.png",
                    width: 50,
                  ),
                  onPressed: (){
                    showExitPopUp();
                  }
              ),
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
              child: Container(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowGlow();
                    return true;

                  },

                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Form(
                      key:_forMKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Enter your mobile",
                              style: Textstyle1.PoppinsMedium14.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22, color: ApplicationColors.blacktextheading)),
                          Text("number",
                              style: Textstyle1.PoppinsMedium14.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22, color: ApplicationColors.blacktextheading)),
                          SizedBox(height: 10,),
                          Container(
                            width:MediaQuery.of(context).size.width/1.5 ,
                            child: Text("By proceeding, you consent to receive calls, WhatsApp or text messages, including by auto dialers, from ParkinBUDDY and its affiliates to the cell phone number you have provided.",
                                style: Textstyle1.PoppinsLight12.copyWith(fontFamily: "Poppins-ExtraLight",
                                    fontSize: 12, color: ApplicationColors.blacktextheading)),
                          ),



                          Padding(
                            padding: const EdgeInsets.only(top: 20,left:10,right:10),
                            child:    Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  // height: MediaQuery.of(context).size.height*0.06,

                                    width: MediaQuery.of(context).size.width*.17,
                                    decoration: Boxdec.containerdecoration.copyWith(
                                        borderRadius: BorderRadius.all(Radius.circular(15)),


                                        color: ApplicationColors.bookinggreyblack
                                    ),

                                    child: Center(child: Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Text("+91",style: Textstyle1.OpenSansRegular14.copyWith(color:ApplicationColors.blackbackcolor,
                                          fontSize: 14),),
                                    ))


                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: TextFormField(

                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(10),
                                      ],
                                      controller: phoneNumberController,
                                      keyboardType:TextInputType.number,

                                      style: Textstyle1.OpenSansRegular14.copyWith(color: ApplicationColors.blackbackcolor,
                                          fontSize: 16),
                                      decoration: homecontainergrey.copyWith(
                                        // contentPadding: EdgeInsets.only(left: 10),

                                          isDense: true,
                                          hintText: "Mobile Number",
                                          hintStyle: Textstyle1.OpenSansRegular14.copyWith(fontSize: 12,color:Colors.black)

                                      ),
                                    ),
                                  ),
                                ),
                              ],),
                          ),





                          Center(
                            child: GestureDetector(
                              onTap: (){
                              },
                              child:  platform ==  TargetPlatform.android?
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                // alignment: Alignment.center,
                                decoration:
                                BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.blueAccent.withOpacity(0.1),
                                        offset: Offset(0.5, 0.75),
                                        blurRadius: 15.0,
                                        spreadRadius: 10,
                                        blurStyle: BlurStyle.outer
                                    ),//BoxShadow
                                  ],
                                ),
                                // width: MediaQuery.of(context).size.width/1.3,
                                height: MediaQuery.of(context).size.height / 14,
                                child: Center(
                                  child:        Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: SizedBox(width: 0,)),

                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child:
                                        Image.asset("assets/images/google/apple.png",width: 30,),
                                      ),
                                      SizedBox(width: 5,),

                                      Expanded(
                                        // width: MediaQuery.of(context).size.width*.4,
                                        flex: 6,
                                        child: Text(
                                          "Continue with Apple",overflow: TextOverflow.fade,
                                          style: Textstyle1.PoppinsMedium14,softWrap: false,maxLines: 2,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ):SizedBox(),
                            ),
                          ),

                          SizedBox(height: 30,),





                        ],),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}

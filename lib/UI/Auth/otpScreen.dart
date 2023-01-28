import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Components/styleandborder.dart';
import '../../Utils/Helper/helper.dart';
import '../../Utils/colors.dart';
import '../congrulation/Congrulation_page.dart';


class Otp_Verification extends StatefulWidget {
  String ?mobileNumber,otp;
  Otp_Verification({this.otp,this.mobileNumber,Key? key}) : super(key: key);

  @override
  State<Otp_Verification> createState() => _Otp_VerificationState();
}

class _Otp_VerificationState extends State<Otp_Verification> {




  final GlobalKey<FormState> _forMKey = GlobalKey<FormState>();
  TextEditingController otpController = TextEditingController();






  late Timer _timer;
  int _start = 30;
  bool isTimerOn = false;
  void startTimer() {

    _timer =  Timer.periodic(Duration(seconds:1 ),(time){

      setState(() {
        isTimerOn = true;
      });

      setState(() {
        _start = _start-1;
        if(isTimerOn == true){
          if(_start == 0){

            print("time cancel");

            setState(() {
              isTimerOn = false;
              _timer.cancel();
            });
          }
        }
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
    // otpController = TextEditingController(text:"${widget.otp}");

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      /*    bottomNavigationBar: GestureDetector(onTap: ()async {
        if(otpController.text.isNotEmpty){
          Route route = MaterialPageRoute(builder: (context) => Signup_fill_bio());
          Navigator.push(context, route);
         // DashBoardScreen


        }
        else{
            Helper.dialogCall.showToast(context,"Wrong_OTP_try_again");
          }

      },
          child: Padding(
            padding: const EdgeInsets.only(left: 110,right: 110,bottom: 50),
            child: Container(
              width: MediaQuery.of(context).size.width*0.4,
              height: MediaQuery.of(context).size.height*0.07,

              decoration:  Boxdec.containershadow,


              child:Text("Next",style: TextStyle(color: ApplicationColors.whiteColor,fontSize: 16,fontFamily: "Poppins-Medium")),alignment: Alignment.center,),
          )

      ),*/

      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: IconButton(
            icon:Image.asset("assets/images/find/Icon Back.png",width: 46,),

            onPressed: () {
              // Route route = MaterialPageRoute(builder: (context) => SignIn_Page_byNumber());
              // Navigator.push(context, route);

            },
          ),
        ),
      ),
      body: Form(
        key: _forMKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Enter 6-digit",
                  // "Enter 4-digit ${widget.mobileNumber}",

                  style:Textstyle1.PoppinsMedium14.copyWith( fontWeight: FontWeight.w600,fontSize: 24,color:ApplicationColors.blacktextheading )
              ),
              InkWell(
                onTap: (){
                },
                child: Text(
                    "Verification code",
                    style:Textstyle1.PoppinsMedium14.copyWith( fontWeight: FontWeight.w600,fontSize: 24,color:ApplicationColors.blacktextheading )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 0,right: 20),
                child: Text(
                  "Code sent to +91${widget.mobileNumber}, Please note, this code will expire in ${_start} seconds.",
                  style:Textstyle1.PoppinsLight12.copyWith(fontFamily: "Poppins-ExtraLight",fontSize: 13),
                  textAlign: TextAlign.start,),
              ),
              SizedBox(height: 50,),


              Container(

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade50,width: 1),
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [

                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.07),
                      offset: const Offset(0, 10),
                      blurRadius: 10.0,
                      spreadRadius: 1,
                      //blurStyle: BlurStyle.outer
                    ), //BoxShadow
                  ],
                ),
                height: 80,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: PinCodeTextField(
                      onChanged: (value) {},
                      autoDisposeControllers: false,
                      controller: otpController,
                      appContext: context,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      length: 6,
                      keyboardType: TextInputType.phone,
                      autoDismissKeyboard: false,
                      textStyle: TextStyle(
                        color: ApplicationColors.blackTextfieldTextcolor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans-SemiBold',
                      ),
                      autoFocus: true,
                      enablePinAutofill: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 45,
                        borderWidth: 1,
                        disabledColor: ApplicationColors.whiteColor,
                        inactiveFillColor: ApplicationColors.whiteColor,
                        activeColor: ApplicationColors.whiteColor,
                        inactiveColor: ApplicationColors.whiteColor,
                        selectedColor: ApplicationColors.whiteColor,
                        selectedFillColor: ApplicationColors.redColor67,
                        // borderRadius: BorderRadius.circular(5),
                        activeFillColor: ApplicationColors.whiteColor,
                      ),
                      animationType: AnimationType.fade,
                      animationDuration: Duration(milliseconds: 300),
                      // errorAnimationController: errorController, // Pass it here
                    ),
                  ),
                ),
              ),



              Expanded(child: SizedBox(height: MediaQuery.of(context).size.height/3.5,)),


              GestureDetector(
                  onTap: ()async {
                    if(otpController.text.isNotEmpty){
                      // verifyOtp();
                      Route route = MaterialPageRoute(builder: (context) => Congrulation_Page());
                      Navigator.push(context, route);
                      // DashBoardScreen
                    }
                    else{
                      Helper.dialogCall.showToast(context,"Wrong_OTP_try_again");
                    }

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60,right: 60,top: 30,bottom: 30),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 13),
                        width: MediaQuery.of(context).size.width*0.35,
                        // height: MediaQuery.of(context).size.height*0.07,

                        decoration:  Boxdec.containershadow,


                        child:
                        // registerProvider!.isRegisterLoading == true
                        //     ?
                        // Center(child: CircularProgressIndicator(color: Colors.black,))
                        //     :

                        Text("Next",style: TextStyle(color: ApplicationColors.blackbackcolor,fontSize: 16,fontFamily: "Poppins-Medium")),alignment: Alignment.center,),
                    ),
                  )

              ),




            ],),
        ),
      ),
    );
  }
}

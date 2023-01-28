import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/styleandborder.dart';
import '../../Utils/colors.dart';
import '../Dashboard/Homepage/Homepage.dart';

class Congrulation_Page extends StatefulWidget {
  String ?name;
   Congrulation_Page({this.name,Key? key}) : super(key: key);

  @override
  State<Congrulation_Page> createState() => _Congrulation_PageState();
}

class _Congrulation_PageState extends State<Congrulation_Page> {







var number;
  numberLoginSharePre() async {

  }

  @override

  void initState() {
    // TODO: implement initState
    super.initState();



  }
  // initState(){
 //    super.initState();
 //
 //    Future.delayed(const Duration(milliseconds: 2000), (){
 //      Navigator.pushAndRemoveUntil(
 //          context,
 //          MaterialPageRoute(
 //              builder: (context) => LoginScreen()
 //          ),
 //              (route) => false
 //      );
 //    });
 //  }

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
                    mainAxisAlignment: MainAxisAlignment.center,

                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
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
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn_Page_byNumber()));
                                  },
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
  )
 ??
      false;
}

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: showExitPopUp,

      child: Scaffold(
        bottomNavigationBar:
        IntrinsicHeight(
          child: GestureDetector(
              onTap: () async {

                //RegisterNumberPost();

                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Homepage()
                    ),
                        (route) => false
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 25,horizontal: 100),
                padding: EdgeInsets.symmetric(vertical: 015,horizontal: 10),
                width: MediaQuery.of(context).size.width * 0.4,
                // height: MediaQuery.of(context).size.height * 0.07,
                decoration: Boxdec.containershadow,
                child: Text("Welcome to Home",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Poppins-Medium",color: ApplicationColors.blackbackcolor)),
                alignment: Alignment.center,
              )),
        ),
        body:


        Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [





              Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*.37,
                  child: Image.asset("assets/images/congrulationsceeen/Illustration.png",)),

               SizedBox(height:25 ),

              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "Congrats ${
                            widget.name==null
                                ?
                                ""
                                :
                            widget.name
                        }!",
                        style: Textstyle1.PoppinsMedium14.copyWith(
                          color: ApplicationColors.yellowColorD21,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40,right: 40),
                          child: Text(
                            "Your profile is now ready. You can use the App now!",textAlign: TextAlign.center,

                            style: Textstyle1.PoppinsLight12.copyWith(
                              color: ApplicationColors.blacktextbuttoncontainer,
                              fontSize: 18,

                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

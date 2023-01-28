import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import '../Auth/loginWithNumber.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool LOGGED_USER = false;
  String? idfget;
  String? fname,lname,email;
  var IDD;




  // String? idfget;

  String location ='Null, Press Button';
  String Address = 'search';



  var isLoggedIn;





  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(milliseconds: 2000), (){
      Route route = MaterialPageRoute(builder: (context) => SignIn_Page_byNumber());
      Navigator.pushReplacement(context, route);
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(

              children: [
                Container(
                  height: height *.52,
                  decoration: new BoxDecoration(
                    color: ApplicationColors.splashwhite,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 0.0,
                        offset: Offset(0.1, 0.1),
                      ),
                    ],
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height*.43),
                  child: Center(
                    child: Image.asset(
                        "assets/images/logo/Logo11.png",
                        height: height*.2
                    ),
                  ),
                ),


                // Container(
                //   height: 70,
                //   child: Image.asset(
                //     AssetsUtilities.logoname,
                //       height: 0,alignment: Alignment.center,
                //     width: 170,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

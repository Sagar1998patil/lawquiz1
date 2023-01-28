import 'package:flutter/material.dart';

import '../colors.dart';

class Helper {
  static final Helper dialogCall = Helper._();

  Helper._();

  showAlertDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      backgroundColor: ApplicationColors.blackbackcolor,
      content: Row(
        children: [
          const CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(ApplicationColors.yellowColorD21),
          ),
          Container(
              margin: const EdgeInsets.only(left: 5),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "loading",
                  // " Loading ...",
                  style: TextStyle(
                    fontSize: 18,
                    color: ApplicationColors.whiteColor,
                  ),
                ),
              )
          ),
        ],
      ),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  showToast(context,String messages){

    // Fluttertoast.showToast(
    //
    //     msg: messages,
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.BOTTOM,
    //     timeInSecForIosWeb: 2,
    //     backgroundColor: ApplicationColors.whiteColor,
    //     textColor: ApplicationColors.blackColor2E,
    //     fontSize: 13.0
    // );
  }

  //
  // showLoader(){
  //  return SpinKitThreeBounce(
  //     color: ApplicationColors.yellowColorD21,
  //     size: 25,
  //   );
  // }
  //
  //
  // final MaskTextInputFormatter formatter = MaskTextInputFormatter(
  //     // mask: '##:##',
  //     filter: { "#": RegExp(r'[0-9]') },
  //     type: MaskAutoCompletionType.eager
  // );
}
import 'package:flutter/material.dart';
import 'package:hmzat_wasal/Classes/constant.dart';

class SignWith extends StatelessWidget {
  final String signwith;
  SignWith( this.signwith);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: () => Fluttertoast.showToast(msg: " this option is not available now .",fontSize: 18),
      child: Container(
        padding: EdgeInsets.all(8),
        height: 45,
        width: 45,
        child: Image(
          image: AssetImage(signwith),
          height: 30,
          width: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: kGreyColor,
              blurRadius: 5,
              offset: Offset(0,0),
            )
          ]
        ),
      ),
    );
  }
}

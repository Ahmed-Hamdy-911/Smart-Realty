import 'package:flutter/material.dart';

class AppLogoWithName extends StatelessWidget {
  const AppLogoWithName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset('assets/icons/logo2.png',
              height: MediaQuery.of(context).size.height * 0.3),
        ),
        // CircleAvatar(
        //   radius: 35,
        //   backgroundColor: kMainColor,
        //   child: CustomText(
        //     text: "X",
        //     customStyle: GoogleFonts.kalam(
        //       fontSize: 50,
        //       color: kMainBGColor,
        //       // fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.02,
        // ),
        // CustomText(
        //   text: "Store",
        //   customStyle: GoogleFonts.kalam(
        //       fontSize: 50, color: kMainColor, decoration: TextDecoration.none
        //       // fontWeight: FontWeight.bold,
        //       ),
        // )
      ],
    );
  }
}

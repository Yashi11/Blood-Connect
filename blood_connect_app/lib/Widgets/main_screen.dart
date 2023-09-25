import 'package:flutter/material.dart';
import 'dart:ui';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 812 / MediaQuery.of(context).size.height;
    double ffem = fem;

    return Container(
      width: double.infinity,
      height: 812 * fem,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0 * fem,
            top: 0 * fem,
            child: Container(
              width: 518 * fem,
              height: 898 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 134.5 * fem,
                      sigmaY: 134.5 * fem,
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 302 * fem, 466 * fem),
                      width: 216 * fem,
                      height: 216 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(108 * fem),
                        color: Color(0xb760cdff),
                      ),
                    ),
                  ),
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 60.5 * fem,
                      sigmaY: 60.5 * fem,
                    ),
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          302 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 216 * fem,
                      height: 216 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(108 * fem),
                        color: Color(0x4c0ebe7e),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 100.5 * fem,
            top: 353 * fem,
            child: Center(child: Container(
              width: 174 * fem,
              height: 111 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 11 * fem),
                    width: 70 * fem,
                    height: 70 * fem,
                    child: Image.asset(
                      'assets/images/logo.png', // Change this to the correct path
                      width: 70 * fem,
                      height: 70 * fem,
                    ),
                  ),
                  Text(
                    'BloodConnect',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 25 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.185 * ffem / fem,
                      letterSpacing: -0.3000000119 * fem,
                      color: Color(0xff222222),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ),
          Positioned(
            left: 19.5 * fem,
            top: 9 * fem,
            child: Container(
              width: 335.5 * fem,
              height: 17 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 245.5 * fem, 0 * fem),
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.185 * ffem / fem,
                        letterSpacing: -0.3000000119 * fem,
                        color: Color(0xff222222),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 4.73 * fem, 0.38 * fem),
                    width: 16.07 * fem,
                    height: 10.08 * fem,
                    child: Image.asset(
                      'assets/images/logo.png', // Change this to the correct path
                      width: 16.07 * fem,
                      height: 10.08 * fem,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 4.73 * fem, 0.7 * fem),
                    width: 14.49 * fem,
                    height: 10.4 * fem,
                    child: Image.asset(
                      'assets/images/logo.png', // Change this to the correct path
                      width: 14.49 * fem,
                      height: 10.4 * fem,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 0.38 * fem),
                    width: 22.99 * fem,
                    height: 10.71 * fem,
                    child: Image.asset(
                      'assets/images/logo.png', // Change this to the correct path
                      width: 22.99 * fem,
                      height: 10.71 * fem,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}

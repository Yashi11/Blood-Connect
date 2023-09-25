import 'package:flutter/material.dart';
import 'dart:ui';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fem = 812 / MediaQuery.of(context).size.height;
    double ffem = fem;

    return Container(
      padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
      width: double.infinity, // Set the width to infinity
      decoration: BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 10 * fem),
            width: double.infinity, // Set the width to infinity
            height:420*fem,
            child: Stack(
              children: [
                Positioned(
                  left: -70 * fem,
                  top: -70 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 200 * fem,
                      height: double.infinity,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(171 * fem),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -0.897),
                            end: Alignment(0.859, 1.192),
                            colors: <Color>[Color(0xff82253b), Color(0xffff636d)],
                            stops: <double>[0, 1],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20 * fem,
                  top: 60 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 300 * fem,
                      height: 300*fem,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(160 * fem),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/hospital.png'), // Change to the correct asset path
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity, // Set the width to infinity
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Only Trusted Hospitals',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 28 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.185 * ffem / fem,
                      letterSpacing: -0.3000000119 * fem,
                      color: Color(0xff333333),
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 289 * fem,
                  ),
                  child: Text(
                    'We host only trusted hospitals that manage blood banks and that you can always rely on in case of an emergency.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6560000011 * ffem / fem,
                      letterSpacing: -0.3000000119 * fem,
                      color: Color(0xe5677294),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(49 * fem, 0 * fem, 31 * fem, 0 * fem),
            width: double.infinity, // Set the width to infinity
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 25 * fem, 0 * fem, 5 * fem),
                  width: double.infinity, // Set the width to infinity
                  height: 54 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xffff646d),
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.185 * ffem / fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6560000011 * ffem / fem,
                      letterSpacing: -0.3000000119 * fem,
                      color: Color(0xff82253b),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


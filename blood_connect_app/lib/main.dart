import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Auth/loginPage.dart';

Future main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(361, 428),
      builder: (context, child) {
        return MaterialApp(
            title: 'Blood Connect',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: LoginPage());
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:testapp/common/screenutil/screenutil.dart';
import 'package:testapp/presentation/journeys/home/home_screen.dart';
import 'package:testapp/presentation/themes/theme_text.dart';

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        primaryColor: Color(0xFF008AD2),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: ThemeText.getTextTheme(),
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      home: HomeScreen(),
    );
  }
}

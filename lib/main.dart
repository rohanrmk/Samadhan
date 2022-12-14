import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'View/ContactUs.dart';
import 'View/DashboardScreen.dart';
import 'View/FAQ.dart';
import 'View/LanguagePage.dart';
import 'View/LoginAndSignUp.dart';
import 'View/LoginPage.dart';
import 'View/NotificationScreen.dart';
import 'View/OTPTabBarPage.dart';
import 'View/PostGrievance.dart';
import 'View/ProfileScreen.dart';
import 'View/Splash_Screen.dart';
import 'View/SubmitFeedback.dart';
import 'View/SubmitFeedback1.dart';
import 'View/SubmitFeedback2.dart';
import 'View/TrackGrievance.dart';
import 'View/TrackGrievanceSearch.dart';
import 'View/TrackGrievanceViewPage.dart';




void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFFb83058), // status bar color
  ));
 runApp( GetMaterialApp(

  debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Montserrat"
    ),
    initialRoute: '/',

    getPages: [

      GetPage(name: '/', page: () => const SplashScreen()),
      GetPage(name: '/ChooseLanguage', page: () => const ChooseLanguage()),
      GetPage(name: '/login', page: ()=>const LoginPage()),
      GetPage(name: '/loginAndSignUp', page: ()=>const LoginAndSignUp()),
      GetPage(name: '/OTP_Page', page: ()=>const OTPLoginAndSignUp()),
      GetPage(name: '/DashBoardScreen', page: () => const DashBoardScreen()),
      GetPage(name: '/PostGrievance1', page: () => const PostGrievance1()),
      GetPage(name: '/SubmitFeedback', page: () => const SubmitFeedback()),
      GetPage(name: '/TrackGrievance', page: () => const TrackGrievance()),
      GetPage(name: '/TrackGrievanceSearch', page: () => const TrackGrievanceSearch()),
      GetPage(name: '/TrackGrievanceViewPage', page: () => const TrackGrievanceViewPage()),
      GetPage(name: '/SubmitFeedback1', page: () => const SubmitFeedback1()),
      GetPage(name: '/SubmitFeedback2', page: () => const SubmitFeedback2()),
      GetPage(name: '/FAQ', page: () => const FAQ()),
      GetPage(name: '/ContactUsScreen', page: () => const ContactUsScreen()),
      GetPage(name: '/NotificationScreen', page: () => const NotificationScreen()),
      GetPage(name: '/ProfileScreen', page: () => const ProfileScreen()),
    ],

 ));

}



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


import 'MobileNumber.dart';
import 'SignUp.dart';
class LoginAndSignUp extends StatefulWidget {
  const LoginAndSignUp({Key? key}) : super(key: key);

  @override
  State<LoginAndSignUp> createState() => _LoginAndSignUpState();
}



class _LoginAndSignUpState extends State<LoginAndSignUp> {
  TabController? tabController;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        type: MaterialType.transparency,
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll){
              overscroll.disallowIndicator();
              return true;
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xFFb83058),
                    height: MediaQuery.of(context).size.height / 2.4,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 142.0, right: 142, top: 30, bottom: 210),
                      child: SvgPicture.asset(
                        "assets/Login.svg",
                        height: 40,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height /7.2,
                    ),
                    child: DefaultTabController(
                      length: 2,
                      child: Center(
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          height: MediaQuery.of(context).size.height / 1.45,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade200,
                                  // blurStyle:BlurStyle.outer,
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 5)
                              )
                            ],),
                          child: Column(
                            children: [
                              TabBar(
                                padding: const EdgeInsets.only(top: 15,bottom: 15),
                                indicatorColor: const Color(0xFFb83058),
                                controller: tabController,
                                labelColor: const Color(0xFFb83058) ,
                                unselectedLabelColor:  Colors.black54,
                                tabs: const [
                                  Tab(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(

                                          fontFamily: 'Montserrat',
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Tab(
                                    child: Text("Sign Up ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'Montserrat')),
                                  ),
                                ],
                              ),
                               const Expanded(
                                flex: 1,
                                  child: TabBarView(
                                    // controller: tabController,
                                    children: [MobileNumber(),SignUp()],))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 1.21),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed('/OTP_Page');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    offset: const Offset(0, 10)
                                )
                              ]
                          ),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child:
                            SvgPicture.asset("assets/Arrow Pink.svg", height: 50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height / 0.5,
                  //   alignment: Alignment.bottomCenter,
                  //   padding: const EdgeInsets.only(bottom: 6),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Text(
                  //         "Powered By : ",
                  //         style: TextStyle(
                  //             color: Colors.black45,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w300,
                  //             fontFamily: 'Montserrat'),
                  //       ),
                  //       Image(
                  //         image: AssetImage("assets/img.png"),
                  //         height: 22,
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

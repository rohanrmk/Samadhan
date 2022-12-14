import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2.6,
                color: const Color(0xFFb83058),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: SvgPicture.asset("assets/Login.svg",height: MediaQuery.of(context).size.height/7),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 35, right: 35, top: MediaQuery.of(context).size.height /4.8),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.55,
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
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 22,
                              // fontWeight: FontWeight.w600,
                              color: Color(0xFFb83058),
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormField(
                          style: const TextStyle(fontFamily: 'Montserrat',height: 1),
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'User Name',
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFFb83058), width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: SvgPicture.asset(
                              'assets/profile.svg',
                              fit: BoxFit.scaleDown,
                              height: 5,
                              width: 5,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormField(
                          style: const TextStyle(fontFamily: 'Montserrat',height: 1),
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Password',
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFFb83058), width: 2.0),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.25,
                    left: MediaQuery.of(context).size.width / 1.66,
                    bottom: 4),
                child: const Text(
                  "Citizen's Login",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    color: Colors.transparent,
                    shadows: [
                      Shadow(offset: Offset(0, -8), color: Colors.blue)
                    ],
                    // Step 3 SEE HERE
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.24),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/loginAndSignUp');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 5,
                                offset: Offset(0, 10)
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
              // SizedBox(
              //   height: MediaQuery.of(context).size.height / 0.53,
              //   child: Align(
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: const [
              //         Text(
              //           "Powered By : ",
              //           style: TextStyle(
              //               fontFamily: 'Montserrat',
              //               color: Colors.black45,
              //               fontWeight: FontWeight.w300,
              //               fontSize: 12),
              //         ),
              //         SizedBox(
              //           height: 20,
              //           child: Image(
              //               image: AssetImage(
              //             'assets/img.png',
              //           )),
              //         )
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}

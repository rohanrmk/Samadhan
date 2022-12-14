import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SubmitFeedback1 extends StatefulWidget {
  const SubmitFeedback1({Key? key}) : super(key: key);

  @override
  State<SubmitFeedback1> createState() => _SubmitFeedback1State();
}

class _SubmitFeedback1State extends State<SubmitFeedback1> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return true;
          },
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 0.1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    color: const Color(0xFFb83058),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new),
                          color: Colors.white,
                        ),
                        const Text(
                          "Submit Feedback",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 1.22,
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 1.22,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.white,
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 30),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                0.68,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade400),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: RichText(
                                                        text: const TextSpan(
                                                            text: '1  ',
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontFamily:
                                                                    'Montserrat'),
                                                            children: <
                                                                TextSpan>[
                                                              TextSpan(
                                                                text:
                                                                    'Grievance Details',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17,fontWeight: FontWeight.w500,
                                                                    fontFamily:
                                                                        'Montserrat'),
                                                              )
                                                            ]),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "Resolved",
                                                        style: TextStyle(
                                                            color: Colors.lightGreen,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Divider(
                                                  color: Colors.green,
                                                  thickness: 2,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:  [
                                                      const Text(
                                                        "Grievance ID",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "OS/20221007-1",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Department",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Municipal Corporation",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Office",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "12/10/22022  12:01PM",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.2),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Submission Date & Time",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Osmanabad Municipal Corporation",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.2),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Name",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Mukul Joshi",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.2),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Mobile No.",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "9052013647",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Name",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Mukul Joshi",
                                                        style: TextStyle(
                                                             fontWeight: FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Email",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "mukuljoshi@gmail.com",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 16.2),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "District",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Osmanabad",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Taluka",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Tuljapur",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Village",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Andur",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Nature of Grievance",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Water Supply",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Grievance Details",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document.",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 17),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "File Uploaded",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.grey),
                                                      ),

                                                      const SizedBox(height: 5),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: const [
                                                          Icon(Icons.picture_as_pdf_outlined,color: Colors.red),
                                                          Text(
                                                            "View Login",
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily: 'Montserrat',
                                                              fontWeight: FontWeight.bold,
                                                              color: Colors.transparent,
                                                              shadows: [
                                                                Shadow(offset: Offset(0, -8), color: Colors.blue)
                                                              ],
                                                              // Step 3 SEE HERE
                                                              decoration: TextDecoration.underline,
                                                              decorationColor: Colors.blue,
                                                            ),
                                                          ),
                                                        ],),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          const SizedBox(height: 30),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.8,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade400),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // height: MediaQuery.of(context).size.height/12.2,
                                                  height: 55,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: const Color(0xFFb83058),
                                                  child: const Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(left: 15.0),
                                                      child: Text(
                                                        "Response Details",
                                                        style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 19),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Municipal Corporation",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Dear Citizen,",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Action has been taken against Grievance No. OS/20221007-1. Looking forward for active contribution and cooperation from citizens od Osmanabad District.",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Row(
                                                        children: const [
                                                          Text(
                                                            "Letter Attached ",
                                                            style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Icon(Icons.picture_as_pdf_outlined,color: Colors.red)
                                                        ],
                                                      ),
                                                      
                                                      const SizedBox(height: 20),
                                                      const Text(
                                                        "Regards,\nSamadhan team",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 30),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.45,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade400),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  // height: Medconst iaQuery.of(context).size.height/12.2,
                                                  height: 55,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: const Color(0xFFb83058),
                                                  child: const Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding: EdgeInsets.all(
                                                            15.0),
                                                        child: Text(
                                                          "Submit Feedback",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 19),
                                                        )),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children:  [
                                                      const SizedBox(height: 5),
                                                      const Text(
                                                        "Your review will help us to give you a better experience",
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.grey
                                                        ),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      MaterialButton(
                                                        onPressed: (){
                                                          showDialog(
                                                            context: context,
                                                            builder: (ctx) => AlertDialog(shape: OutlineInputBorder(
                                                                borderRadius: BorderRadius.circular(20)
                                                            ),
                                                              title: SvgPicture.asset('assets/submit.svg',height: 60,width: 60),
                                                              content: const Text("Thanks for your Response."),
                                                              actions: <Widget>[
                                                                TextButton(
                                                                  onPressed: () {
                                                                    Get.back();
                                                                  },
                                                                  child: MaterialButton(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                        BorderRadius.circular(8)),
                                                                    minWidth: 280,
                                                                    height: 50,
                                                                    color: const Color(0xFFb83058),
                                                                    onPressed: () {
                                                                      Get.toNamed("/DashBoardScreen");
                                                                    },
                                                                    child: const Text(
                                                                      "Okay",
                                                                      style: TextStyle(
                                                                          color: Colors.white,
                                                                          fontSize: 18),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                        height: 50,
                                                        minWidth: double.infinity,
                                                        textColor: Colors.green,
                                                        shape: RoundedRectangleBorder(side: const BorderSide(
                                                            color: Colors.green,
                                                            width: 1,
                                                            style: BorderStyle.solid
                                                        ), borderRadius: BorderRadius.circular(10)),

                                                        child: const Text('Satisfied', style: TextStyle(
                                                            fontSize: 20
                                                        )
                                                        ),
                                                      ),
                                                      const SizedBox(height: 15),
                                                      MaterialButton(
                                                        onPressed: (){
                                                          Get.toNamed("/SubmitFeedback2");
                                                        },
                                                        height: 50,
                                                        minWidth: double.infinity,
                                                        textColor: const Color(0xFFb83058),
                                                        shape: RoundedRectangleBorder(side: const BorderSide(
                                                            color: Color(0xFFb83058),
                                                            width: 1,
                                                            style: BorderStyle.solid
                                                        ), borderRadius: BorderRadius.circular(10)),
                                                        child: const Text('Disatisfied', style: TextStyle(
                                                            fontSize: 20
                                                        )
                                                        ),
                                                      ),


                                                      const SizedBox(height: 15),
                                                      const Text(
                                                        "Comment",
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            color: Colors.grey
                                                        ),
                                                      ),
                                                      const SizedBox(height: 7),
                                                      TextFormField(
                                                        inputFormatters: [
                                                          LengthLimitingTextInputFormatter(200),
                                                        ],
                                                        maxLines: 6,
                                                        cursorColor: Colors.grey,
                                                        decoration: InputDecoration(
                                                            hintText: 'Type Here',
                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(8)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color:
                                                                    Colors.grey.shade400))),
                                                      ),
                                                      const SizedBox(height: 20),
                                                      Center(
                                                        child: MaterialButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(8)),
                                                          minWidth: 280,
                                                          height: 50,
                                                          color: const Color(0xFFb83058),
                                                          onPressed: () {
                                                            showDialog(
                                                              context: context,
                                                              builder: (ctx) => AlertDialog(shape: OutlineInputBorder(
                                                                  borderRadius: BorderRadius.circular(20)
                                                              ),
                                                                title: SvgPicture.asset('assets/submit.svg',height: 60,width: 60),
                                                                content: const Text("Thanks for your Response."),
                                                                actions: <Widget>[
                                                                  TextButton(
                                                                    onPressed: () {
                                                                      Get.toNamed("/DashBoardScreen");
                                                                    },
                                                                    child: MaterialButton(
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                          BorderRadius.circular(8)),
                                                                      minWidth: 280,
                                                                      height: 50,
                                                                      color: const Color(0xFFb83058),
                                                                      onPressed: () {
                                                                        Get.toNamed("/DashBoardScreen");
                                                                      },
                                                                      child: const Text(
                                                                        "Okay",
                                                                        style: TextStyle(
                                                                            color: Colors.white,
                                                                            fontSize: 18),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                          child: const Text(
                                                            "Submit",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontSize: 18),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),

                                              ],

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height,
                  //   alignment: Alignment.bottomCenter,
                  //   padding: const EdgeInsets.only(bottom: 35),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: const [
                  //       Text(
                  //         "Powered By : ",
                  //         style: TextStyle(
                  //             fontFamily: 'Montserrat',
                  //             color: Colors.black45,
                  //             fontWeight: FontWeight.w300,
                  //             fontSize: 17),
                  //       ),
                  //       SizedBox(
                  //         height: 25,
                  //         child: Image(
                  //             image: AssetImage(
                  //           'assets/img.png',
                  //         )),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

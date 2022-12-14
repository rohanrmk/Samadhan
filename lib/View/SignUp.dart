import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Utility/LocationListSignUp.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return
     Scaffold(
        backgroundColor: Colors.white,
       body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll){
            overScroll.disallowIndicator();
            return true;
          },
          child: Container(
              height: MediaQuery.of(context).size.height /1.8,
              width: MediaQuery.of(context).size.width / 1.2,
            decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  // BoxShadow(
                  //   color: Colors.black45,
                  //   blurRadius: 6,
                  // )
                ]),
               child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                       TextFormField(
                         style:
                         const TextStyle(fontFamily: 'Montserrat', height: 1),
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
                       const SizedBox(height: 20),
                       TextFormField(
                         keyboardType: TextInputType.number,
                         style:
                         const TextStyle(fontFamily: 'Montserrat', height: 1),
                         cursorColor: Colors.grey,
                         decoration: InputDecoration(
                           isDense: true,
                           hintText: 'Mobile Number',
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
                             Icons.local_phone_outlined,
                             color: Colors.grey,
                           ),
                         ),
                       ),

                      const SizedBox(height: 20),
                       Container(
                         height: 54,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(8),
                           border: Border.all(color: Colors.grey.shade700),
                             color: Colors.grey.shade100
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             const SizedBox(width: 7),
                             SvgPicture.asset('assets/District.svg'),
                             SizedBox(
                               height: 54,
                               width: MediaQuery.of(context).size.width/1.45,
                               child: DropdownButtonFormField<String>(
                                 style: const TextStyle(
                                     fontFamily: 'Monteserrat',
                                     color: Colors.black54,fontWeight: FontWeight.w300
                                 ),
                                 decoration: const InputDecoration(
                                   isDense: true,
                                     hintText: 'Osmanabad',
                                     border: OutlineInputBorder(
                                     borderSide: BorderSide.none),
                                     ),
                                 value: selectdistrict,
                                 items: postdistrict
                                     .map((postdistrict) =>
                                     DropdownMenuItem<String>(
                                       value: postdistrict,
                                       child: Text(postdistrict,
                                           style: const TextStyle(
                                               fontSize: 17)),
                                     ))
                                     .toList(),
                                 onChanged: (postdistrict) =>
                                     setState(() => selectdistrict = postdistrict),
                                 menuMaxHeight: 300,
                               ),
                             ),
                           ],
                         ),
                       ),

                      const SizedBox(height: 20),
                      Container(
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade700),
                            color: Colors.grey.shade100
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 7),
                            SvgPicture.asset('assets/District.svg'),
                            SizedBox(
                              height: 54,
                              width: MediaQuery.of(context).size.width/1.45,
                              child: DropdownButtonFormField<String>(
                                style: const TextStyle(
                                    fontFamily: 'Monteserrat',
                                    color: Colors.black54,fontWeight: FontWeight.w300
                                ),
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                                value: selecttaluka,
                                items: posttalukaa
                                    .map((posttalukaa) =>
                                    DropdownMenuItem<String>(
                                      value: posttalukaa,
                                      child: Text(posttalukaa,
                                          style: const TextStyle(
                                              fontSize: 17)),
                                    ))
                                    .toList(),
                                onChanged: (posttalukaa) =>
                                    setState(() => selecttaluka = posttalukaa),
                                menuMaxHeight: 300,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                      Container(
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade700),
                          color: Colors.grey.shade100
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 7),
                            SvgPicture.asset('assets/District.svg'),
                            SizedBox(
                              height: 54,
                              width: MediaQuery.of(context).size.width/1.45,
                              child: DropdownButtonFormField<String>(
                                style: const TextStyle(
                                    fontFamily: 'Monteserrat-Light',color: Colors.black54,fontWeight: FontWeight.w300
                                ),
                                decoration: const InputDecoration(
                                  isDense: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                                value: selectvillage,
                                items: postvillagee
                                    .map((postvillagee) =>
                                    DropdownMenuItem<String>(
                                      value: postvillagee,
                                      child: Text(postvillagee,
                                          style: const TextStyle(
                                              fontSize: 17)),
                                    ))
                                    .toList(),
                                onChanged: (postvillagee) =>
                                    setState(() => selectvillage = postvillagee),
                                menuMaxHeight: 300,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                       TextFormField(
                         keyboardType: TextInputType.emailAddress,
                         style:
                         const TextStyle(fontFamily: 'Montserrat', height: 1),
                         cursorColor: Colors.grey,
                         decoration: InputDecoration(
                           isDense: true,
                           hintText: 'Email',
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
                             'assets/email.svg',
                             fit: BoxFit.scaleDown,
                             height: 5,
                             width: 5,
                             color: Colors.grey,
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
              ),

          ),
        ),
     );


  }
}

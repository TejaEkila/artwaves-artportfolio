// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_super_parameters

import 'package:artwave/Const/constant_Ui.dart';
import 'package:artwave/drawer/nav.dart';

import 'package:flutter/material.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  _DesktopScaffoldState createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      //appBar: myAppbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/images/Group 1.png'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: RichText(
                    text: TextSpan(children: const [
                      TextSpan(
                        text: 'A R T ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: AutofillHints.photo,
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                           
                            ),
                            
                      ),
                      TextSpan(
                        text: 'W A V E S',
                        style: TextStyle(
                          fontFamily: AutofillHints.addressState,
                          fontSize: 24,
                          color: Color.fromARGB(255, 210, 179, 246),
                          
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: RichText(
                        text: TextSpan(
                          children: const [
                            TextSpan(
                              text:
                                  'ART is the lie that enables US to realize the Truth #',
                              style: TextStyle(
                                color: Color.fromARGB(255, 244, 64, 64),
                                fontSize: 250,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w900,
                                shadows: [
                                  Shadow(
                                    offset: Offset(3.0, 3.0),
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    blurRadius: 5.0,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 380),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120),
                                child: RichText(
                                  text: TextSpan(children: const [
                                    TextSpan(
                                      text: 'Experience',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 100,
                                        fontFamily: AutofillHints.jobTitle,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' THE DEEP ',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 200,
                                          fontFamily: AutofillHints.jobTitle),
                                    ),
                                    TextSpan(
                                      text: 'Feelings IN',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 100,
                                          fontFamily: AutofillHints.jobTitle),
                                    ),
                                    TextSpan(
                                      text: 'ART WAVES !',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 241, 4, 4),
                                          fontSize: 200,
                                          fontFamily: AutofillHints.jobTitle,
                                          shadows: [
                                  Shadow(
                                    offset: Offset(3.0, 3.0),
                                    color: Color.fromARGB(255, 200, 200, 200),
                                    blurRadius: 3.0,
                                  ),
                                ],
                                          ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 500),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Stack(
                                children: [
                                  Transform.rotate(
                                    angle: 350 *
                                        3.141592653589793 /
                                        180, // Rotate 45 degrees (convert to radians)
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 400),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        child: Image(
                                          height: 350,
                                          width: 500,
                                          image: AssetImage(
                                              'lib/images/paint2.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 90,
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 350 *
                                          3.141592653589793 /
                                          180, // Rotate 45 degrees (convert to radians)
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 600),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          child: Image(
                                            height: 350,
                                            width: 500,
                                            image: AssetImage(
                                                'lib/images/paint1.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 800),
                                    child: Transform.rotate(
                                      angle: 350 *
                                          3.141592653589793 /
                                          180, // Rotate 45 degrees (convert to radians)
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 500),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                          child: Image(
                                            height: 350,
                                            width: 500,
                                            image: AssetImage(
                                                'lib/images/paint3.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: RichText(
                    text: TextSpan(
                      children: const [
                        TextSpan(
                            text: 'Explore Me',
                            style: TextStyle(
                                fontFamily: AutofillHints.jobTitle,
                                fontSize: 200,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 210, 210, 210))),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  //myfitted class
                  child: MyFittedBox(),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Stack(
              children: [
                Expanded(
                  child: Container(
                    height: 130,
                    width: 2000,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 65, 39, 135),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                Expanded(
                  child: const Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            ' Contant',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            ' Privacy',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            ' Careers',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            ' Help',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Artwaves@2023',
                      style: TextStyle(
                          color: Color.fromARGB(255, 141, 140, 140),
                          fontSize: 20),
                    ),
                  ),
                ),
                //ContactPage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

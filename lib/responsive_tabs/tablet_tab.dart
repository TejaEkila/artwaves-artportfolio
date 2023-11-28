
import 'package:artwave/Const/constant_Ui.dart';
import 'package:artwave/drawer/nav.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/Group 1.png'),
                  ),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'A R T',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: 'W A V E S',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: RichText(
                        text: const TextSpan(
                          children:  [
                            TextSpan(
                              text:
                                  'ART is the lie that enables US to realize the Truth #',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 244, 64, 64),
                                  fontSize: 200,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w800),
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
              padding: const EdgeInsets.all(35),
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 150,
                      fontFamily: AutofillHints.jobTitle,
                    ),
                  ),
                  TextSpan(
                    text: ' THE DEEP ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 150,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                  TextSpan(
                    text: 'Feelings IN',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 150,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                  TextSpan(
                    text: 'ART WAVES !',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 4, 4),
                        fontSize: 200,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 30),
            
            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 500,
                  width: 800,
                  image: AssetImage('lib/images/paint1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 500,
                  width: 800,
                  image: AssetImage('lib/images/paint2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 500,
                  width: 800,
                  image: AssetImage('lib/images/paint3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'EXPLORE HERE',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const MyFittedBox(),
            const SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 1000,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 65, 39, 135),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const Center(
                  child:  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          ' Contant',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          ' Privacy',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          ' Careers',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          ' Help',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Artwaves@2023',
                      style: TextStyle(color: Color.fromARGB(255, 141, 140, 140), fontSize: 30),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

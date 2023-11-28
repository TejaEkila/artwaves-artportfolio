
import 'package:artwave/Const/constant_Ui.dart';
import 'package:artwave/drawer/nav.dart';
import 'package:flutter/material.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
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
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: 'W A V E S',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'ART is the lie that enables US to realize the Truth #',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 244, 64, 64),
                                  fontSize: 80,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600),
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
              padding: const EdgeInsets.all(15),
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: AutofillHints.jobTitle,
                    ),
                  ),
                  TextSpan(
                    text: ' THE DEEP ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 70,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                  TextSpan(
                    text: 'Feelings IN',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 70,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                  TextSpan(
                    text: 'ART WAVES !',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 4, 4),
                        fontSize: 100,
                        fontFamily: AutofillHints.jobTitle),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 20),

            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 250,
                  width: 400,
                  image: AssetImage('lib/images/paint1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 250,
                  width: 400,
                  image: AssetImage('lib/images/paint2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  height: 250,
                  width: 400,
                  image: AssetImage('lib/images/paint3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'EXPLORE HERE',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  MyFittedBox(),
            ),
            const SizedBox(height: 50),
            Stack(
              children: [
                Container(
                  height: 100,
                  width: 500,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 65, 39, 135),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        ' Contant',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        ' Privacy',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        ' Careers',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        ' Help',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      'Artwaves@2023',
                      style: TextStyle(color: Colors.white, fontSize: 17),
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

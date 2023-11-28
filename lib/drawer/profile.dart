// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors


import 'package:artwave/Const/constant_Ui.dart';
import 'package:flutter/material.dart';

//class ProfilePage extends StatefulWidget {
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage('lib/images/paint4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Color.fromARGB(255, 0, 0, 0)
                  .withOpacity(0.5), // Transparent black color
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'H E L L O!!"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Zainab Nawaz"',
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 61, 61),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ARTIST,PAKISTAN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),

                  SizedBox(height: 5),
                  Text(
                    '"With a brush in one hand and dreams in the other, I craft emotions onto canvas, painting whispers of my soul\'s palette"',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Center(
                  //   child: Text(
                  //     '    --Zainab Nawaz',
                  //     style: TextStyle(
                  //       color: Color.fromARGB(255, 245, 62, 62),
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 50)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

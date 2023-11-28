// ignore_for_file: must_be_immutable


import 'package:artwave/Const/constant_Ui.dart';
import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
 const MyFittedBox({super.key});



  @override
  Widget build(BuildContext context) {
    return 
       Padding(
                padding: const EdgeInsets.only(top: 10),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Column(
                    children: [
                       Row(
                      children: [
                        
                           ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                              ),
                            backgroundColor:myDefaultBackground,
                            shadowColor: const Color.fromARGB(255, 255, 255, 255),
                            
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Images_page');
                          },
                          child: Image.asset('lib/images/old.png'),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                              ),
                            backgroundColor:myDefaultBackground,
                            shadowColor: const Color.fromARGB(255, 255, 255, 255),
                            
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/VedioPage');
                          },
                          child: Image.asset('lib/images/3d-glasses.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        //Text("Walking on the street at night can be very dangerous, especially if you wear dark clothes. Car driverscan’t see you very well, just like these two I had to take home. Luckily I never go out without myreflective jacket and collar. Remember, BE SEEN",maxLines: 4,),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                              ),
                            backgroundColor:myDefaultBackground,
                            shadowColor: const Color.fromARGB(255, 255, 255, 255),
                            
                          ),
                          // onHover: ,
                          onPressed: () {
                            Navigator.pushNamed(context, '/profilepage');
                          },
                          child: Image.asset('lib/images/arab.png'),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                              ),
                            backgroundColor:myDefaultBackground,
                            shadowColor: const Color.fromARGB(255, 255, 255, 255),
                            
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/feedback');
                          },
                          child: Image.asset('lib/images/contact.png'),
                        ),
                      ],
                    ),
                  ],),
                ),
              
            
        
        
      
    );
  }
}

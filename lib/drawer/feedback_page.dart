// ignore_for_file: use_build_context_synchronously

import 'package:artwave/Const/constant_Ui.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myDefaultBackground,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 150,),
           const FittedBox(
              child: Image(image: AssetImage('lib/images/Rectangle.png')),
            ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const FeedBox(),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 214, 214),
                  shadowColor:
                      const Color.fromARGB(255, 255, 255, 255), // Shadow color
                  elevation: 8,
                ),
                child: const Text(
                  'FeedBack',
                  style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                ),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}

class FeedBox extends StatefulWidget {
  const FeedBox({super.key});

  @override
  State<FeedBox> createState() => _FeedBoxState();
}

class _FeedBoxState extends State<FeedBox> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: AlertDialog(
        backgroundColor: Colors.deepPurple,
        content: Form(
          key: _formkey,
          child: TextFormField(
            
            autocorrect: true,
            keyboardType: TextInputType.multiline,
            controller: _controller,
            style:  const TextStyle(color: Color.fromARGB(255, 255, 255, 255,),fontSize: 17),
            decoration:  InputDecoration(
                hintText: '"Positive and negative notes are accepted',
                hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                filled: true,
                fillColor: myDefaultBackground
                ),
            maxLines: 10,
            maxLength: 8888,
            textInputAction: TextInputAction.done,
            validator: (String? text) {
              if (text == null || text.isEmpty) {
                return 'Please enter something';
              }
              return null;
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancle',style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
          TextButton(
            child: const Text('Submit',style: TextStyle(color: Colors.white,fontSize: 20),),
            onPressed: () async {
              if (_formkey.currentState!.validate()) {
                String message;

                try {
                  final collection =
                      FirebaseFirestore.instance.collection('feedback');

                  await collection.doc().set({
                    'timestamp': FieldValue.serverTimestamp(),
                    'feedback': _controller.text,
                  });
                  message = 'Feedback sent successfully';
                } catch (_) {
                  message = 'Error when sending feedback';
                }
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  message,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 15),
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),

                ),
                
                );
                Navigator.pop(context);
              }
              
            },
          ),
        ],
      ),
    );
  }
}

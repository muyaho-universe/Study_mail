import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';


class MailApp extends StatelessWidget {
  const MailApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot){
          if(snapshot.hasError){

          }
        }
    );
  }
}

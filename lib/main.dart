import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:mail_study/mail_list/mail_screen.dart';

import 'home.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Mail Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        // GetPage(
        //     name: '/mail_screen',
        //     page: ()=> MailScreen()
        // ),
      ],
      home: HomePage(),
    );
  }
}



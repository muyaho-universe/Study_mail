import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'mail_list/mail_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F6),
      body: SafeArea(
        child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: (){
                            },
                            icon: Icon(CupertinoIcons.square_arrow_left, size: 20, color: Colors.blueAccent,)
                        ),
                        const Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Mail Box",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        color: Colors.white,
                        child: Column(
                          children: [
                            _mainButton(CupertinoIcons.tray, "Inbox"),
                            Divider(indent: 50, color: Colors.grey,),
                            _mainButton(CupertinoIcons.star, "Starred"),
                            Divider(indent: 50, color: Colors.grey,),
                            _mainButton(CupertinoIcons.flag, "Important"),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Gmail",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          _mainButton(CupertinoIcons.doc, "Draft"),
                          Divider(indent: 50, color: Colors.grey,),
                          _mainButton(CupertinoIcons.paperplane, "Sent"),
                          Divider(indent: 50, color: Colors.grey,),
                          _mainButton(CupertinoIcons.bin_xmark, "Spam"),
                          Divider(indent: 50, color: Colors.grey,),
                          _mainButton(CupertinoIcons.delete, "Trash"),
                          Divider(indent: 50, color: Colors.grey,),
                          _mainButton(CupertinoIcons.archivebox, "All Mail"),
                          Divider(indent: 50,color:Colors.grey),
                          _mainButton(CupertinoIcons.folder, "Featured",)
                        ],
                      ),
                    ),
                  ),
                  ],
                )
              )
            ]
        ),
      ),
    );
  }
  Widget _mainButton(IconData icon, String title){
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 0.0),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            Row(
              children: [
                Icon(
                    icon,
                    size: 20,
                    color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                    title,
                    style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  CupertinoIcons.chevron_right,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
      ),
      onTap: (){
         Get.to(MailScreen(title));
      },
    );
  }
}

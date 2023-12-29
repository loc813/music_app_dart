import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {

  @override 

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff303151).withOpacity(0.6),
            Color(0xff303151).withOpacity(0.9),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.back,
                        color: Color(0xff899ccf),
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: Icon(
                        Icons.more_vert,
                        color: Color(0xff899ccf),
                        size: 30,
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/img1.jpg",
                    width: 250,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Text(
                      "Imagine Dragons",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
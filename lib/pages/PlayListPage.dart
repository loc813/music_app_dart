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
                        width: 170,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Play All", 
                              style: TextStyle(
                                color: Color(0xff30314d),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Icon(
                              Icons.play_arrow_rounded,
                              color: Color(0xff30314d),
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 170,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xff30314d),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shuffle", 
                              style: TextStyle(
                                color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(
                              Icons.shuffle,
                              color: Colors.white,
                              size: 25,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                
                        for ( int i = 1 ; i < 20 ; i++)
          Container(
            margin: EdgeInsets.only(top: 15, right: 12 , left: 5),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              color: Color(0xff30314d),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  "1",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 18,
                    fontWeight:FontWeight.w400,
                  ),
                  ),
                  SizedBox(width: 25,),
                  InkWell(
                    // onTap: (){
                    //   Navigator.pushNamed(context, "MusicPage");
                    // },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        "Imagine Dragons - Believer",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                         ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Bass",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "-",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "4:30",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 25,
                      color: Color(0xff31314f),
                      ),
                  ),
              ]
              ),
          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
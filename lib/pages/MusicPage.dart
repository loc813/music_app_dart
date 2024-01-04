import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget{
  @override 

  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/img1.jpg"
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.9),
                Color(0xff31314f).withOpacity(0.9),
                Color(0xff31314f).withOpacity(1),
              ]
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 45, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                         InkWell(
                        onTap: () {
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Column(
                      
                      children: [
                        SizedBox(height: 40,),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "Imagine Dragons",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Singer Name", 
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 35,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Slider(
                              min: 0,
                              max: 100,
                              value: 45,
                              onChanged: (value){},
                              activeColor: Colors.white,
                              inactiveColor: Colors.white54,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "2:10",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                    Text(
                                    "4:24",
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.list,
                              color: Colors.white,
                              size: 31,
                            ),

                             Icon(
                              CupertinoIcons.backward_end_fill,
                              color: Colors.white,
                              size: 31,
                            ),

                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Color(0xff31314f),
                                size: 36,
                              ),
                            ),

                            Icon(
                              CupertinoIcons.forward_end_fill,
                              color: Colors.white,
                              size: 31,
                            ),

                             Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 31,
                            ),

                          ],
                        ),
                      ],
                    
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
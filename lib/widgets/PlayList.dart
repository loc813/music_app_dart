import 'package:flutter/material.dart';

class Playlists extends StatelessWidget {
  @override 

  Widget build(BuildContext context){
    return SingleChildScrollView(
      child:  Column(
        children: [
          for( int i = 1 ; i < 20 ; i++)
          Container(
            margin: EdgeInsets.only(top: 20 , right: 20 , left: 5),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xff30314d),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "playlistPage");
                  },
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/img1.jpg",
                      fit: BoxFit.cover, 
                      height: 60,
                      width: 60,
                    ),
                ),
                ),
                SizedBox(width: 25,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Imagine Dragons",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                     SizedBox(height: 5,),
                    Text(
                      "30 songs",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                 Spacer(),
                    Icon(
                      Icons.more_vert,
                      color: Colors.white.withOpacity(0.6),
                      size: 30,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
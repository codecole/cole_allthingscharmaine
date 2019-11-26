import 'package:flutter/material.dart';
import 'package:cole_allthingscharmaine/utilities/constants.dart';
import 'package:cole_allthingscharmaine/screens/post_reply_screen.dart';
import 'package:cole_allthingscharmaine/screens/new_thread_screen.dart';

class SubPostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'threads',
          style: kAppBarTextStyle,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:
      ListView(
        children: <Widget>[
      Container(
      padding: EdgeInsets.only(left: 34.0, top: 19.0, bottom: 34.0, right: 34.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'perfume',
            style: kHeadingTextStyle,
          ),
          SizedBox(height: 14.0),
          Text(
            "what is your favourite perfume?",
            style: kSubPostTitleTextStyle,
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 10.0,
                backgroundImage: AssetImage('images/artboard-2.png'),
              ),
              Text(
                'by Anna',
                style: kPostTimeTextStyle,
              ),
              SizedBox(
                width: 220.0
              ),
              Text('3 hours ago', style: kPostTimeTextStyle),
            ],
          ),
          SizedBox(
            height: 29.5,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(17.0)),
            child: Align(
              alignment: Alignment.center,
              heightFactor: 1.0,
              widthFactor: 1.0,
              child: Image.asset(
                'images/bottlefur.jpg',
                scale: 2.0,
              ),
            ),
          ),
          SizedBox(
            height: 39.0,
          ),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat libero tellus, malesuada laoreet metus vulputate quis. Praesent lacinia sagittis dui. Mauris sagittis tincidunt justo, sit amet scelerisque magna sagittis consequat. Sed dui diam, aliquam consectetur aliquam tempus, pharetra et dolor.',
            style: kGeneralBodyTextStyle,
          ),
          SizedBox(
            height: 25.0,
          ),
          FlatButton(
            color: Color(0xFFED9B9D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200.0),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return PostReplyScreen();
                  })
              );
            },
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Text(
                  'reply',
                  style: TextStyle(fontSize: 11.0, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Color(0xFFED9B9D),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200.0),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context){
                    return NewThreadScreen();
                  })
              );
            },
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(17.0),
                child: Text(
                  'new thread',
                  style: TextStyle(fontSize: 11.0, color: Color(0xFFED9B9D)),
                ),
              ),
            ),
          )
        ],
      ),
    ),
        ],


      ),
    );
  }
}


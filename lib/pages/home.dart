import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.only(top: 18, left: 25 )),
                Container(
                  padding: EdgeInsets.all(15.0),
                      child:Text('Find Request Near You',
                        style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.only(left:15,right:25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffF0EEEE),
                  ),
                  child: Stack(
                    children: [
                      TextField(
                        maxLengthEnforced: true,
                        style:
                          TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top:7,left: 10),
                            border: InputBorder.none,
                            hintText: 'Search Here',
                            suffixIcon: Icon(Icons.search,color: Colors.black54,),
                          ),
                        )
                    ],
                  ),
              ),
              
            ]
        ),
      ),
    );
  }
}

              
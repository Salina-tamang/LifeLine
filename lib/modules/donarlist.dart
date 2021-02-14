import 'package:LifeLine/pages/message.dart';
import 'package:flutter/material.dart';

class DonarList extends StatefulWidget {
  DonarList({Key key}) : super(key: key);

  @override
  _DonarListState createState() => _DonarListState();
}

class _DonarListState extends State<DonarList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:20),
      padding: EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow:[ BoxShadow(
            offset:Offset(0,14),
            blurRadius: 23,
            spreadRadius: -13,
            color: Colors.black12,
          )
        ]
      ),
      child:Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/pro.jpg'),
            radius: 50,
          ),
          SizedBox(height:20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('User Name',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('B+',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
                                  
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.message),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageBox() ));
              },
            )
          )
        ],
      )
    );

  }
}
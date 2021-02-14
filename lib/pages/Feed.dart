import 'package:LifeLine/modules/donarlist.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  FeedScreen({Key key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsetsDirectional.only(top:70),),
                  Text("Find Donar Near You",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                  ),
                  Text("Search By Blood Type",
                    style: TextStyle(
                      color:Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                          color: Colors.white,
                        //color: Color(0xffF0EEEE),
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
                  ),

                  SizedBox(
                    height: 45.0,
                  ),
                  Expanded(
                    child: Container(
                     padding: EdgeInsets.all(20),
                     width: double.infinity,
                      decoration:BoxDecoration(
                        color:Colors.white,
                        //color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(30),
                          topRight: Radius.circular(30)
                        )
                      ),
                      child:SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                   Text("Donar List",textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color:Colors.black87,
                                      fontSize:15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("See all",textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color:Colors.black87,
                                      fontSize:15,
                                     
                                    ),
                                  ),
                               ],
                             ),
                           
                            
                            SizedBox(
                              height:10,
                            ),
                           
                            DonarList(),
                            DonarList(),
                            DonarList(),

                          ]
                        ),
                      )
                    ),
            
            ),
          ],
              
        )
      )
    );
    
  }
}
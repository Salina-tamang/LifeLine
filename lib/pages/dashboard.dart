

import 'package:LifeLine/pages/register.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.red,
             /* decoration: BoxDecoration(
                image: DecorationImage(
                  image:NetworkImage("https://images.unsplash.com/photo-1503455637927-730bce8583c0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80&fbclid=IwAR0NUovbwLlMbacec7KA8Sj3tVNW0xOV4sQyH9Fn9LHoj237palKnbihaDI"),
                  fit: BoxFit.cover,
                ),
              ),*/
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
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(30),
                          topRight: Radius.circular(30)
                        )
                      ),
                  //    wrap this with single child scroll view
                      child:SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                            Text("About LifeLine",textAlign: TextAlign.left,
                              style: TextStyle(
                                color:Colors.black87,
                                fontSize:20,
                               
                              ),
                            ),
                            SizedBox(
                              height:20,
                            ),
                            Text('We solve the problem of blood emergencies by connecting blood donors directly with people in blood need.Itis one of several community organizations working together as a network that responds to emergencies in an efficient manner',
                            textAlign: TextAlign.left,
                              style: TextStyle(
                                color:Colors.black38,
                                fontSize:12.0,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(
                              height:30,
                            ),
                            FlatButton(
                              onPressed: (){
                                /*Navigator.push(context, MaterialPageRoute(
                                bilder: ((context)=> RegisterScreenTwo()),
                                ),
                              );*/

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen() ));
                              },
                              child: Container(
                                padding: EdgeInsets.all(17.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.red,
                                ),
                                width: double.infinity,
                               
                                 child:Column(
                                  
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children:[
                                    Text("Connect With Us",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                             
                            )
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
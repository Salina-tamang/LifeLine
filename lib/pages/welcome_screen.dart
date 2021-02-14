import 'dart:ui';
import 'package:LifeLine/pages/dashboard.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            
            children:[
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    SizedBox(
                     height: 40.0,
                    ),
                    
                    Text("LifeLine",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.redAccent,
                      ),
                    ),
                   SizedBox(
                     height: 40.0,
                    ),
                    Image.asset('assets/images/welcome.png'),
                    SizedBox(
                     height: 10.0,
                    ),
                    Text('Do You Know?',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.redAccent,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15.5),
                      child: Column(
                        children:[
                          Text('Everyseconds, someone in the country is in urgent need of blood. It is crucial for surgeries, emergency  and accidents.\nBe a Donar and Save life. ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                             // fontWeight: FontWeight.w700,
                            ),
                          ),

                           SizedBox(
                            height: 50.0,
                          ),

                          FlatButton(
                            onPressed: (){
                              /*Navigator.push(context, MaterialPageRoute(
                              bilder: ((context)=> RegisterScreenTwo()),
                              ),
                            );*/

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen() ));
                            },
                            child: Container(
                              padding: EdgeInsets.all(17.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.redAccent,
                              ),
                              width: double.infinity,
                             
                               child:Column(
                                
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children:[
                                  Text("Get started",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                           
                          )
                        ]

                      )
                    )
                    
                  ]
                ) ,
              )
            ]
          ),
        ) 
      ),
    );
  }
}
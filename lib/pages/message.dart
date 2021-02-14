
import 'package:LifeLine/pages/Feed.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatefulWidget {
  @override
  _MessageBoxState createState() => _MessageBoxState();
}

class _MessageBoxState extends State<MessageBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
          color: Color(0xffFAFAFA),
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(
                top: 45.0,
                ),
             ),

             Text(
             "Create Your Request Here",
             style:TextStyle(
               fontFamily: "Roboto",
               fontWeight: FontWeight.bold,
               fontSize: 24.0, 
               color: Colors.red,
               ),
             ),

              Text(
                "This form must conatin all the details and it is directly send to the Donar"
              ),
              Padding(padding: const EdgeInsets.only(top: 30.0),),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Patient's Name",textAlign: TextAlign.left),

                    SizedBox(
                      height: 8.0,
                    ),
                    
                    Material(
                      elevation:2,
                      child:TextField(
                        style: TextStyle(fontSize: 13.0,color: Colors.black54),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Patient's Name",
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.0,
                    ), 

                    Text("Blood Group Required",textAlign: TextAlign.left),

                    SizedBox(
                      height: 8.0,
                    ),

                    Material(
                      elevation:2,
                      child:TextField(
                        style: TextStyle(fontSize: 13.0,color: Colors.black54),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Blood Group",
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.0,
                    ),

                    Text("Hospital Name",textAlign: TextAlign.left),

                    SizedBox(
                      height: 8.0,
                    ),

                    Material(
                      elevation: 2,
                      child:TextField(
                        style: TextStyle(fontSize: 13.0,color: Colors.black54),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Hospital Name",
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25.0,
                    ),
                    Text("Phone Number",textAlign: TextAlign.left),
                     SizedBox(
                      height: 8.0,
                    ),
                     Material(
                      elevation: 2,
                      child:TextField(
                        style: TextStyle(fontSize: 13.0,color: Colors.black54),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Phone Number",
                          contentPadding: const EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(6),
                          )
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 25.0,
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      
                      children: [
                          FlatButton(
                          child: Text('Send Now',style: TextStyle(color: Colors.white),),
                          color: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                          onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedScreen() ));
                          }
                        ),
                        
                      
                      ],
                    ),
                   

                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
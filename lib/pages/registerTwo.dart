import 'package:flutter/material.dart';

class RegisterScreenTwo extends StatefulWidget {
  @override
  _RegisterScreenTwoState createState() => _RegisterScreenTwoState();
}

class _RegisterScreenTwoState extends State<RegisterScreenTwo> {
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
             "Create Your Account",
             style:TextStyle(
               fontFamily: "Roboto",
               fontWeight: FontWeight.bold,
               fontSize: 34.0, 
               color: Colors.red,
               ),
             ),

              Text(
                "SignUp And Be a Hero"
              ),
              Padding(padding: const EdgeInsets.only(top: 30.0),),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Blood Type",textAlign: TextAlign.left),

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
                          hintText: "Choose your blood type",
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

                    Text(" Password",textAlign: TextAlign.left),

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
                          hintText: "Password",
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
                          child: Text('Sign Up',style: TextStyle(color: Colors.white),),
                          color: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                          onPressed: (){},
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


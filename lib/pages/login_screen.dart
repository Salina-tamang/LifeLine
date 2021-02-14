import 'package:LifeLine/modules/buttom_nav.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
             "Hello Buddy Welcome Back",
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
                    Text("Email",textAlign: TextAlign.left),

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
                          hintText: "Email",
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

                    Text("Password",textAlign: TextAlign.left),

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
                          child: Text('Log In',style: TextStyle(color: Colors.white),),
                          color: Colors.redAccent,
                          padding: const EdgeInsets.all(15),
                          onPressed: (){
                             Navigator.push(
                              context, MaterialPageRoute(builder: (context)=> NavBar()));
                          }
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text("Forget Password?",style: TextStyle(color: Colors.red),),
                              onPressed: (){
                               //Navigator.push(
                                //context, MaterialPageRoute(builder: (context)=>ForgotPw()));
                              },
                            ),
                          ],
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


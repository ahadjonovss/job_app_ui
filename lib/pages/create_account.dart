import 'package:flutter/material.dart';
import 'package:jobs_ui/pages/welcome_back.dart';

import 'home_page.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Container(
            child: Container(
              padding: const EdgeInsets.only(left: 32, right: 32, top: 40),
              margin: const EdgeInsets.only(top: 240),
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text("Create an account",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),)), //Create an account
                  Container(
                      child: Text("Sign Up to continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)), //Login to continue
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text("Full name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Name"
                      ),

                    ),
                  ), //Name
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text("Email adress",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email"
                      ),

                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password"
                      ),

                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 28),
                        height: 60,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          color: Colors.deepPurple[700],
                        ),
                        child: const Center(
                          child: Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children:[
                          Text("Allready have an account?  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeBack()));
                            },
                            child: Text("Sing In",style:
                            TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600 ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

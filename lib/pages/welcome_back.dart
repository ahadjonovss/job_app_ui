import 'package:flutter/material.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Container(
            padding: const EdgeInsets.only(left: 32,right: 32,top: 40),
            margin: const EdgeInsets.only(top: 240),
            height: 600,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text("Welcome Back",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),)), //Welcome back
                Container(
                    child: Text("Login to continue",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)), //Login to continue
                Container(
                  margin: EdgeInsets.only(top: 20),
                    child: Text("Email adress",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email"
                    ),

                  ),
                ), //Email
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
                ), //Password
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.only(left: 183,top: 12),
                    child: Text("Forgot your password?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                  ),
                ), //Forgot
                InkWell(
                  onTap: (){},
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      height: 60,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        color: Colors.deepPurple[700],
                      ),
                      child: const Center(
                        child: Text("Log In",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Center(
                  child: Text("----------------------- or connect using -----------------------"),
                ),
                Center(
                  child: Container(
                    height: 120,
                    width: 280,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            var snackBar = SnackBar(
                                content: Text("Log In with Facebook is impossible!"),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                action: SnackBarAction(
                                  label: "Ok",
                                  onPressed: () {},
                                )
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[900],
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Center(
                              child: Icon(Icons.facebook_sharp,size: 35,color: Colors.white,),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        InkWell(
                          onTap: (){
                            var snackBar = SnackBar(
                                content: Text("Log In with Twitter is impossible!"),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                action: SnackBarAction(
                                  label: "Ok",
                                  onPressed: () {},
                                )
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Center(
                              child: Text("t",style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.w800),),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        InkWell(
                          onTap: (){
                            var snackBar = SnackBar(
                                content: Text("Log In with Google is impossible!"),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                action: SnackBarAction(
                                  label: "Ok",
                                  onPressed: () {},
                                )
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Center(
                              child: Text("G",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600),),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        InkWell(
                          onTap: (){
                            var snackBar = SnackBar(
                                content: Text("Log In with Phone number is impossible!"),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                action: SnackBarAction(
                                  label: "Ok",
                                  onPressed: () {},
                                )
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            child: Center(
                              child: Icon(Icons.phone_android,size: 30,color: Colors.white,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), // Social medias
                Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Row(
                      children:[
                        Text("Don't have an account?  ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),
                      ),
                        InkWell(
                          onTap: (){},
                          child: Text("Sing Up",style:
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobs_ui/pages/welcome_back.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          child: Container(
            margin: EdgeInsets.only(top: 510),
            padding: EdgeInsets.all(32),
            height: 330,
            width: 400,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Forget Password",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                Container(
                  margin: EdgeInsets.only(top: 4),
                child: Text("Enter your Email to recover your password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),)),
                Container(
                    margin: EdgeInsets.only(top: 26),
                    child: Text("Email adress",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),)),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email"
                    ),

                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeBack()));


                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 24),
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
              ],

            ),
          ),
        ),
      ),

    );
  }
}

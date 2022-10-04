import 'package:flutter/material.dart';
import 'package:jobs_ui/pages/create_account.dart';
import 'package:jobs_ui/pages/forgot_password.dart';
import 'package:jobs_ui/pages/welcome_back.dart';

List<Widget> _pages=[
  Container(),
  Jobs(),
  WelcomeBack(),
  ForgotPassword(),
  CreateAccount(),
];
int _selecctedIndex=1;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    int _selecctedIndex=1;
    return Scaffold(
      body: _pages[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int choosed){
          setState((){
            selectedIndex=choosed;
          });

        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.compass_calibration_sharp),label: "Research"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Jobs"),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: "Direct"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notifications"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
        ],

      ),
    );
  }
}

Widget Jobs(){
  return Column(
    children: [
      Container(
        height: 130,
        width: 400,
        color: Colors.deepPurple[700],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50,left: 12),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(8))

              ),
              child: Icon(Icons.menu,color: Colors.white,size: 30,),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Dubai,UAE",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w800),),
            ),
            Container(
              margin: EdgeInsets.only(top: 50,right: 12),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(8))

              ),
              child: Icon(Icons.search,color: Colors.white,size: 30,),
            ),

          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 24,left: 32,right: 32),
        height: 648,
        width: 400,
        color:Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Morning!",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 28),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 20),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.grey),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),)

                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 20),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.grey),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),)

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 12),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.white),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.
                          white),)

                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 12),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.grey),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),)

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 12),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.grey),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),)

                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(top: 12),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.group,size: 32,color: Colors.grey),
                      SizedBox(height: 16,),
                      Text("Community",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          Text("52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                          Text(" Items",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.grey),)

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Center(
                child: Text("View All",style: TextStyle(color: Colors.grey,fontSize: 16),),
              ),
            )

          ],
        ),
      )
    ],
  );
}

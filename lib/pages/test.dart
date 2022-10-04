import 'package:flutter/material.dart';
import 'package:jobs_ui/pages/create_account.dart';
import 'package:jobs_ui/pages/forgot_password.dart';
import 'package:jobs_ui/pages/welcome_back.dart';
int selectedIndex=1;
List<Widget> _pages=
[
  CreateAccount(),
  ForgotPassword(),
  WelcomeBack()
];
class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
        ],

      ),
    );
  }
}

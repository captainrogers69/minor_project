import 'package:flutter/material.dart';
import 'package:minor_project/pages/help&support.dart';
import 'package:minor_project/pages/privacy_policy.dart';
import 'package:minor_project/pages/register.dart';
import 'package:minor_project/pages/settings.dart';
import 'login.dart';
import 'contacts.dart';
import 'dashboard.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({ Key key }) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                    image: AssetImage('lib/img/backg11.jpeg'),
                    fit: BoxFit.cover
                    ),
          ),
          width: double.infinity,
          height: 200.0,
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                height: 120.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/sophia2.jpeg'),
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                color: Colors.white,
                child: Text("Hello ")
                )
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const dashboard()));
              },
              leading: Icon(Icons.dashboard_outlined), title: Text('DashBoard'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const contacts()));
              },
              leading: Icon(Icons.contact_page), title: Text('contacts'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
              },
              leading: Icon(Icons.login), title: Text('Login'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> register()));
              },
              leading: Icon(Icons.app_registration_rounded), title: Text('Register'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> settings()));
              },
              leading: Icon(Icons.settings), title: Text('Settings'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> helpandsupport()));
              },
              leading: Icon(Icons.help), title: Text('Help & Support'),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> privacyandpolicy()));
              },
              leading: Icon(Icons.privacy_tip), title: Text('Privacy & Policy'),
            )   
          ],
        ),
      ],
    );
  }
}
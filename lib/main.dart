
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:minor_project/login.dart';
import 'package:minor_project/register.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.redAccent
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const SizedBox(width: 77.0,),
            const Text('Minor_Project'),
            const SizedBox(width: 65.0,),
            ButtonTheme(
              buttonColor: Colors.redAccent,
              minWidth: 15.0,
              // ignore: deprecated_member_use
              child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },     /////////////////////////
              child: const Icon(Icons.close)
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
              ],
            ),
          ),
        ),
      ),

      body: Stack(
        children: <Widget>[
        Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                image: AssetImage('lib/img/backg11.jpeg'),
                fit: BoxFit.cover
                ),
              ),
              ),
              Center(child: Column(
          children: [
              const SizedBox(height: 15.0,),
              const CircleAvatar(
              backgroundImage: AssetImage('assets/heyy.jpeg'),
              radius: 80.0,
            ),
              const SizedBox(height: 45.0),
              ButtonTheme(
              minWidth: 280.0,
              buttonColor: Colors.white,
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: const Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
               },
              ),
            ),
              ButtonTheme(
              minWidth: 280.0,
              buttonColor: Colors.redAccent,
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: const Text('REGISTER', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const register()));
                },
              ),
            ),
              const SizedBox(height: 75.0,),
              Container(
              padding: const EdgeInsets.all(10.0),
              color: Colors.white,
              child: const Text('Follow us on Social Media', style: TextStyle(fontWeight: FontWeight.bold),)
            ),
              const SizedBox(height: 30.0,),
              Row(
              children: [
                const SizedBox(width: 160.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.white,
                  child: const Icon(Icons.facebook),
                ),
                const SizedBox(width: 5.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.white,
                  child: const Icon(Icons.subscriptions)
                ),
                const SizedBox(width: 5.0,),
                Container(
                  padding: const EdgeInsets.all(2.0),
                  color: Colors.white,
                  child: const Icon(Icons.mail),
                )
              ],
            )
          ],
        ),
        )
        ]
      ),
    );
  }
}

